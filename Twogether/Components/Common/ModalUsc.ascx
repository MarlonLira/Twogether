<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalUsc.ascx.cs" Inherits="Twogether.Components.Common.ModalUsc" %>
<asp:Panel ID="pnl_control" runat="server">
    <div class="modal fade" id="myModalnine" role="dialog">
        <div class="modal-dialog modals-default nk-red">
            <div class="modal-content">
                <div class="modal-header">
                    <asp:Button ID="btn_close_control" runat="server" Text="&times;" class="close" data-dismiss="modal" />
                </div>
                <div class="modal-body">
                    <% if (IsTable == false) {%>
                    <h2><asp:Label ID="lbl_title_control" runat="server" Text="Label"></asp:Label></h2>
                    <p><asp:Label ID="lbl_control" runat="server" Text="Texto de teste"></asp:Label></p>
                    <%} else {%>
                        <usc:TableStripedUsc runat="server" ID="TableStripedUsc"/>
                    <%} %>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btn_save_modal" runat="server" Text="Salvar" class="btn btn-default" data-dismiss="modal" />
                    <asp:Button ID="btn_close_modal" runat="server" Text="Fechar" class="btn btn-default" data-dismiss="modal" />
                </div>
            </div>
        </div>
    </div>
</asp:Panel>
