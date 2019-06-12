<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextBoxUsc.ascx.cs" Inherits="Twogether.Components.Common.Text.TextBoxUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>
  
<div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%>">
    <div class="form-group ic-cmp-int">
        <div class="form-ic-cmp">
            <i class="notika-icon notika-<%=LoadStyle%>"></i>
        </div>
        <div class="nk-int-st">
            <asp:TextBox ID="txt_control" class="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
</div>

<%: Scripts.Render("~/bundles/js") %>
