<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormAlunoUsc.ascx.cs" Inherits="Twogether.Components.FormAlunoUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<%: Styles.Render("~/bundles/css") %>
<%: Styles.Render("~/bundles/button") %>

<div class="form-element-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <div class="form-element-list mg-t-30">

                    <div class="cmp-tb-hd">
                        <h2>Avaliação Digital</h2>
                        <p>Cadastro de informações do Aluno</p>
                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_nome" Title="Nome"  LoadStyle="support" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_email" Title="Email" LoadStyle="mail" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_phone" Title="Telefone" LoadStyle="phone" required/>
                    </div>

                    <div class="row">

                        <usc:TextBoxUsc runat="server" ID="txt_idade" Title="Idade" LoadStyle="star" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_sexo" Title="Sexo(M/F)" LoadStyle="chat" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_data" Title="Data" LoadStyle="calendar" required/>

                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_peso" Title="Peso" LoadStyle="edit" required/>

                        <usc:TextBoxUsc runat="server" ID="txt_altura" Title="Altura" LoadStyle="edit" required/>
                        
                    </div>
                    <usc:ButtonUsc runat="server" ID="btn_confirmar" OnClick="" Title="Confirmar"/>
                </div>
            </div>
        </div>
    </div>
</div>

<%: Scripts.Render("~/bundles/js") %>
