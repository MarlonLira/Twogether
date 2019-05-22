<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FrmImpedanciaUsc.ascx.cs" Inherits="Twogether.Components.FrmImpedanciaUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="form-element-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <div class="form-element-list mg-t-30">
                    <div class="cmp-tb-hd">
                        <h4>Informações da Bioimpedância</h4>
                    </div>
                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_imc" Title="IMC"  LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_gordura" Title="% Gordura" LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_massa" Title="% Massa Muscular" LoadStyle="edit" required/>
                    </div>

                    <div class="row">

                        <usc:TextBoxUsc runat="server" ID="txt_metabolismo" Title="Metabolismo Basal" LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_biologica" Title="Idade Biológica" LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_visceral" Title="Gordura Visceral" LoadStyle="edit" required/>

                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_peso" Title="Peso" LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_altura" Title="Altura" LoadStyle="edit" required/>
                        
                    </div>
                    <usc:ButtonUsc runat="server" ID="btn_confirmar" Title="Salvar"/>
                </div>
            </div>
        </div>
    </div>
</div>
<%: Scripts.Render("~/bundles/js") %>