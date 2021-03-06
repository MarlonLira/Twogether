﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPge.aspx.cs" Inherits="Twogether.LoginPge" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="Twogether.Helpers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

                <%: Scripts.Render("~/bundles/js") %>
                <%: Styles.Render("~/bundles/css") %>
                <%: Styles.Render("~/bundles/chosen") %>
                <%: Scripts.Render("~/bundles/modernizr") %>
                
    </head>
    <body>
        <form id="frmLogin" runat="server">
            <!-- Login Register area Start-->
        <div class="login-content login-init">
            <!-- Login -->
            <div class="nk-block toggled" id="l-login">
                <div class="nk-form">
                    
                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_nome" Title="Conta de Acesso"  LoadStyle="support" Scale="12"/>
                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_senha" Title="Senha"  LoadStyle="edit" Scale="12" Mode="Password"/>
                    </div>

                    <div class="fm-checkbox">
                        <label><input type="checkbox" class="i-checks"> <i></i>Manter Conectado</label>
                    </div>
                    <asp:LinkButton ID="btn_entrar" runat="server" 
                        data-ma-action="nk-login-switch" data-ma-block="#l-register" 
                        class="btn btn-login btn-success btn-float" 
                        style="background-color:#F44336" OnClick="btn_entrar_Click">
                        <i class="notika-icon notika-right-arrow right-arrow-ant"></i>
                    </asp:LinkButton>
                    <!--a href="/Default.aspx" data-ma-action="nk-login-switch" data-ma-block="#l-register" class="btn btn-login btn-success btn-float" style="background-color:#F44336"><i class="notika-icon notika-right-arrow right-arrow-ant"></i></!--a> -->
                </div>

                <div class="nk-navigation nk-lg-ic">
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-register"><i class="notika-icon notika-plus-symbol"></i> <span>Register</span></a>
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
                </div>
            </div>

            <!-- Register -->
            <div class="nk-block" id="l-register">
                <div class="nk-form">
                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-support"></i></span>
                        <div class="nk-int-st">
                            <input type="text" class="form-control" placeholder="Username">
                        </div>
                    </div>

                    <div class="input-group mg-t-15">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                        <div class="nk-int-st">
                            <input type="text" class="form-control" placeholder="Email Address">
                        </div>
                    </div>

                    <div class="input-group mg-t-15">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-edit"></i></span>
                        <div class="nk-int-st">
                            <input type="password" class="form-control" placeholder="Password">
                        </div>
                    </div>

                    <a href="#l-login" data-ma-action="nk-login-switch" data-ma-block="#l-login" class="btn btn-login btn-success btn-float"><i class="notika-icon notika-right-arrow"></i></a>
                </div>

                <div class="nk-navigation rg-ic-stl">
                    <a href="#" data-ma-action="nk-login-switch" data-ma-block="#l-login"><i class="notika-icon notika-right-arrow"></i> <span>Sign in</span></a>
                    <a href="" data-ma-action="nk-login-switch" data-ma-block="#l-forget-password"><i>?</i> <span>Forgot Password</span></a>
                </div>
            </div>

            <!-- Forgot Password -->
            <div class="nk-block" id="l-forget-password">
                <div class="nk-form">
                    <p class="text-left">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>

                    <div class="input-group">
                        <span class="input-group-addon nk-ic-st-pro"><i class="notika-icon notika-mail"></i></span>
                        <div class="nk-int-st">
                            <input type="text" class="form-control" placeholder="Email Address">
                        </div>
                    </div>

                    <a href="#l-login" data-ma-action="nk-login-switch" data-ma-block="#l-login" class="btn btn-login btn-success btn-float"><i class="notika-icon notika-right-arrow"></i></a>
                </div>

                <div class="nk-navigation nk-lg-ic rg-ic-stl">
                    <a href="" data-ma-action="nk-login-switch" data-ma-block="#l-login"><i class="notika-icon notika-right-arrow"></i> <span>Sign in</span></a>
                    <a href="" data-ma-action="nk-login-switch" data-ma-block="#l-register"><i class="notika-icon notika-plus-symbol"></i> <span>Register</span></a>
                </div>
            </div>
        </div>
        <!-- Login Register area End-->
            <%: Scripts.Render("~/bundles/js") %>
        </form>
    </body>
</html>

