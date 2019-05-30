<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SelectUsc.ascx.cs" Inherits="Twogether.Components.Common.DropDown.SelectUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<asp:Panel ID="pnl_control" runat="server">
    <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%>">
        <div class="bootstrap-select fm-cmp-mg">
            <asp:DropDownList ID="dd_control" class="selectpicker" runat="server">
            </asp:DropDownList>
        </div>
    </div>
</asp:Panel>

<%: Scripts.Render("~/bundles/js") %>
<%: Scripts.Render("~/bundles/mask") %>
<%: Scripts.Render("~/bundles/chosen") %>