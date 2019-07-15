<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableUsc.ascx.cs" Inherits="Twogether.Components.Common.Table.TableUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="data-table-area">
    <div class="container">
<<<<<<< HEAD
        <div class="row ">
            <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%> ">
                <div class="data-table-list">
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped">
                            <thead id="th_control" runat="server">
                                <tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Literal ID="ltr_body_control" runat="server"></asp:Literal>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>
                            </tfoot>
=======
        <div class="row">
            <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%> ">
                <div class="data-table-list">
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped table table-cl">
                            <thead id="th_control" runat="server"></thead>
                            <tbody id="tb_control" runat="server"></tbody>
                            <tfoot id="tf_control" runat="server"></tfoot>
>>>>>>> a3d2a3b2db906efb113479872e14972d68d07bd3
                        </table> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<<<<<<< HEAD
=======

<%: Scripts.Render("~/bundles/datatable") %>
>>>>>>> a3d2a3b2db906efb113479872e14972d68d07bd3
