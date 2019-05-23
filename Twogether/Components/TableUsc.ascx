<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableUsc.ascx.cs" Inherits="Twogether.Components.TableUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<!-- CARREGAR TODOS OS ALUNOS DO PROFESSOR LOGADO -->
<!-- Data Table area Start-->
<asp:Panel ID="pnl_control" runat="server">
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                    <div class="data-table-list">
                        <div class="table-responsive">

                            <asp:Table runat="server" class="table table-striped data-table-basic" ID="tbl_basic_control">
                               <asp:TableHeaderRow>
                                   <asp:TableCell Text="Matricula"></asp:TableCell>
                                   <asp:TableCell Text="Nome"></asp:TableCell>
                                   <asp:TableCell Text="Telefone"></asp:TableCell>
                                   <asp:TableCell Text="Etapa"></asp:TableCell>
                               </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Text="61"></asp:TableCell>
                                    <asp:TableCell Text="Tiger"></asp:TableCell>
                                    <asp:TableCell Text="(81) 9 8455-8585"></asp:TableCell>
                                    <asp:TableCell Text="4"></asp:TableCell>
                                </asp:TableRow>

                            </asp:Table>
                            
                           
                            <!--
                            <table id="data-table-basic" class="table table-striped">
                                <thead id="th_control" runat="server">
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </thead>
                                <tbody id="tb_control" runat="server">
                                    <tr>
                                        <td>Tiger Nixon</td>
                                        <td>System Architect</td>
                                        <td>Edinburgh</td>
                                        <td>61</td>
                                        <td>2011/04/25</td>
                                        <td>$320,800</td>
                                    </tr>
                                </tbody>
                                <tfoot runat="server">
                                    <tr>
                                        <th>Name</th>
                                        <th>Position</th>
                                        <th>Office</th>
                                        <th>Age</th>
                                        <th>Start date</th>
                                        <th>Salary</th>
                                    </tr>
                                </tfoot>
                            </table> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>

    <!-- Data Table area End-->
<%: Scripts.Render("~/bundles/js") %>
<%: Scripts.Render("~/bundles/datatable") %>