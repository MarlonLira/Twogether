<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TextBoxUsc.ascx.cs" Inherits="Twogether.Components.Common.TextBoxUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>
  
<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
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
<%: Scripts.Render("~/bundles/mask") %>