<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableUsc.ascx.cs" Inherits="Twogether.Components.Common.Table.TableUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="data-table-area" style="background-color:lightgray">
    <div class="container">
        <div class="row">
            <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%> " style="background-color:lightgray">
                <div class="data-table-list" style="background-color:lightgray">
                    <div class="table-responsive" style="background-color:lightgray">
                        <table id="data-table-basic" class="table table-striped" style="background-color:lightgray">
                            <thead id="th_control" runat="server" style="background-color:lightgray">
                                <tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>
                            </thead>
                            <tbody class="nk-red">
                                <asp:Literal ID="ltr_control" runat="server" Visible="false"></asp:Literal>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>
                            </tfoot>
                        </table> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%: Scripts.Render("~/bundles/datatable") %>