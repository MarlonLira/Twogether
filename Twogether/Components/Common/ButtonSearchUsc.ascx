<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ButtonSearchUsc.ascx.cs" Inherits="Twogether.Components.Common.ButtonSearchUsc" %>

<li class="nav-item dropdown">
    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" style="background-color:#000000"><span><i class="notika-icon notika-search"></i></span></a>
    <div role="menu" class="dropdown-menu search-dd animated flipInX">
        <div class="search-input">
            <i class="notika-icon notika-left-arrow"></i>
            <asp:TextBox ID="txt_control" runat="server" AutoPostBack="True" OnTextChanged="txt_control_TextChanged"></asp:TextBox>
            <asp:Literal ID="ltr_control" runat="server"></asp:Literal>
        </div>
    </div>
</li>




