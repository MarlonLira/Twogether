<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableStripedUsc.ascx.cs" Inherits="Twogether.Components.TableStripedUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<%: Styles.Render("~/bundles/css") %>
<%: Scripts.Render("~/bundles/modernizr") %>
<asp:Panel ID="pnl_tableStriped" runat="server">
    <div class="form-element-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="normal-table-list mg-t-30">
                        <!--<div class="basic-tb-hd">
                            <h2>Striped rows</h2>
                            <p>Add Classes (<code>.table-striped</code>) to any table row within the tbody</p> 
                        </div>-->
                        <div class="bsc-tbl-st">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Matricula</th>
                                        <th>Nome</th>
                                        <th>Telefone</th>
                                        <th>Crescimento</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Alexandra</td>
                                        <td>(81)98564-5898</td>
                                        <td>0%</td>
                                        <td>Andamento</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Lucas</td>
                                        <td>(81)99964-5898</td>
                                        <td>15%</td>
                                        <td>Andamento</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Maria</td>
                                        <td>(81)96664-5898</td>
                                        <td>20%</td>
                                        <td>Andamento</td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>José</td>
                                        <td>(81)97864-5898</td>
                                        <td>30%</td>
                                        <td>Concluido</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>

<%: Scripts.Render("~/bundles/js") %>