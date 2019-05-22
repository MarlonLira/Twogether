<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FrmParqUsc.ascx.cs" Inherits="Twogether.Components.FrmParqUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<asp:Panel ID="pnlParq" runat="server">
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
            <div class="cmp-tb-hd">
                <h4>Questionário de Prontidão para Atividade Física(PAR-Q):</h4>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                <usc:QuestionUsc runat="server" ID="QuestionUsc3" NumQuestion="1"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc4" NumQuestion="2"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc5" NumQuestion="3"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc6" NumQuestion="4"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc1" NumQuestion="5"/>
            </div>

            <div style="float:left" class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                <usc:QuestionUsc runat="server" ID="QuestionUsc7" NumQuestion="6"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc8" NumQuestion="7"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc9" NumQuestion="8"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc10" NumQuestion="9"/>
                <usc:QuestionUsc runat="server" ID="QuestionUsc2" NumQuestion="10"/>
            </div>
        </div>
    </div>
</div>
</asp:Panel>
<%: Scripts.Render("~/bundles/wizard") %>