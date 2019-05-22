<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RadioButtonUsc.ascx.cs" Inherits="Twogether.Components.Common.RadioButtonUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
    <div class="fm-checkbox">
        <asp:RadioButtonList ID="rb_control" runat="server" class="i-checks"></asp:RadioButtonList>
    </div>
</div>

<%: Scripts.Render("~/bundles/mask") %>
