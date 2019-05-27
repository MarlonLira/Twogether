<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableUsc.ascx.cs" Inherits="Twogether.Components.Common.Table.TableUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="data-table-area">
    <div class="container">
        <div class="row success">
            <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%> ">
                <div class="data-table-list success">
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped table table-cl">
                            <thead id="th_control" runat="server">
                                <!--<tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>-->
                                <asp:Literal ID="ltr_head_control" runat="server"></asp:Literal>
                            </thead>
                            <tbody>
                                <asp:Literal ID="ltr_body_control" runat="server"></asp:Literal>
                            </tbody>
                            <tfoot>
                                <asp:Literal ID="ltr_foot_control" runat="server"></asp:Literal>
                                
                                <!--<tr>
                                    <th>Codigo</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                </tr>-->

                            </tfoot>
                        </table> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%: Scripts.Render("~/bundles/datatable") %>