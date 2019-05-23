<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableStripedUsc.ascx.cs" Inherits="Twogether.Components.TableStripedUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>


    <div class="form-element-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="normal-table-list mg-t-30">
                        <div class="bsc-tbl-st">

                            <asp:Table ID="tbl_control" runat="server" class="table table-striped">
                                <asp:TableHeaderRow>
                                    <asp:TableCell Text="Matricula"></asp:TableCell>
                                    <asp:TableCell Text="Nome"></asp:TableCell>
                                    <asp:TableCell Text="Telefone"></asp:TableCell>
                                </asp:TableHeaderRow>
                                <asp:TableRow>
                                    <asp:TableCell Text="teste"></asp:TableCell>
                                    <asp:TableCell Text="teste"></asp:TableCell>
                                    <asp:TableCell Text="teste"></asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<%: Scripts.Render("~/bundles/js") %>