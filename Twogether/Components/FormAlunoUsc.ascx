<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormAlunoUsc.ascx.cs" Inherits="Twogether.Components.FormAlunoUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>


<%: Styles.Render("~/bundles/css") %>
<%: Scripts.Render("~/bundles/modernizr") %>

<asp:Panel ID="pnl_frmAluno" runat="server">
<div class="form-element-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="form-element-list mg-t-30">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb floating-lb">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-support"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Full Name</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb floating-lb">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-mail"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Email Address</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb floating-lb">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-phone"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Contact Number</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb form-elet-mg">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-wifi"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Internet</label>
                                </div>
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-cloud"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb form-elet-mg">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-house"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Home Address</label>
                                </div>
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-success"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="form-group ic-cmp-int float-lb form-elet-mg">
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-edit"></i>
                                </div>
                                <div class="nk-int-st">
                                    <input type="text" class="form-control">
                                    <label class="nk-label">Layer</label>
                                </div>
                                <div class="form-ic-cmp">
                                    <i class="notika-icon notika-chat"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>

<%: Scripts.Render("~/bundles/js") %>