<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TableUsc.ascx.cs" Inherits="Twogether.Components.Common.Table.TableUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="data-table-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-<%=Scale%> col-md-<%=Scale%> col-sm-<%=Scale%> col-xs-<%=Scale * 3%> ">
                <div class="data-table-list">
                    <div class="table-responsive">
                        <table id="data-table-basic" class="table table-striped table table-cl">
                            <thead id="th_control" runat="server"></thead>
                            <tbody id="tb_control" runat="server"></tbody>
                            <tfoot id="tf_control" runat="server"></tfoot>
                        </table> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%: Scripts.Render("~/bundles/datatable") %>