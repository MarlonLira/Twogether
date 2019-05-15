<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DialogForm.ascx.cs" Inherits="Twogether.Components.DialogForm" %>
<%@ Import Namespace="System.Web.Optimization" %>

<%: Styles.Render("~/bundles/css") %>
<%: Scripts.Render("~/bundles/modernizr") %>

<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
    <div class="dialog-inner mg-t-100">
        <div class="contact-hd dialog-hd">
            <h2>Dialog Image Header</h2>

        </div>
        <div class="dialog-pro dialog">
            <button class="btn btn-info" id="sa-image">Click me</button>
        </div>
    </div>
</div>

<%: Scripts.Render("~/bundles/js") %>
<%: Scripts.Render("~/bundles/dialog") %>