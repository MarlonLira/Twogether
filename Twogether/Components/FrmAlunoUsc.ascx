<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FrmAlunoUsc.ascx.cs" Inherits="Twogether.Components.FrmAlunoUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="form-element-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <div class="form-element-list mg-t-30">
                    <div class="cmp-tb-hd">
                        <h4><asp:Label ID="lbl_control" runat="server" Text="Informações do Aluno"></asp:Label></h4>
                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_nome" Title="Nome"  LoadStyle="support"/>
                        <usc:TextBoxUsc runat="server" ID="txt_email" Title="Email" LoadStyle="mail"/>
                        <usc:TextBoxUsc runat="server" ID="txt_phone" Title="Telefone" LoadStyle="phone" Mask="Phone"/>
                    </div>

                    <div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_idade" Title="Idade" LoadStyle="star"/>
                        <usc:TextBoxUsc runat="server" ID="txt_sexo" Title="Sexo(M/F)" LoadStyle="chat"/>
                        <usc:TextBoxUsc runat="server" ID="txt_data" Title="Data" LoadStyle="calendar" Mask="Date"/>
                    </div>

                    <!--div class="row">
                        <usc:TextBoxUsc runat="server" ID="txt_peso" Title="Peso" LoadStyle="edit"/>
                        <usc:TextBoxUsc runat="server" ID="txt_altura" Title="Altura" LoadStyle="edit"/>
                    </!--div-->
                    <usc:ButtonUsc runat="server" ID="btn_control" Title="Editar"/>
                </div>
            </div>
        </div>
    </div>
</div>
<%: Scripts.Render("~/bundles/js") %>