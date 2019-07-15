<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ButtonSearchUsc.ascx.cs" Inherits="Twogether.Components.Common.ButtonSearchUsc" %>

<usc:ModalUsc runat="server" ID="mdl_control"/>
<li class="nav-item dropdown">
    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle" style="background-color:#000000"><span><i class="notika-icon notika-search"></i></span></a>
    <div role="menu" class="dropdown-menu search-dd animated flipInX">
        <div class="search-input">
            <i class="notika-icon notika-left-arrow"></i>
            <asp:TextBox ID="txt_control" runat="server"></asp:TextBox>
        </div>
    </div>
</li>