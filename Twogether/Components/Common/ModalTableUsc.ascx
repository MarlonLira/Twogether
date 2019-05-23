<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalTableUsc.ascx.cs" Inherits="Twogether.Components.Common.ModalTableUsc" %>

<asp:Panel ID="Panel1" runat="server">
    <div class="modal fade" id="ModalTable" role="dialog">
        <div class="modal-dialog modal-large nk-red">
            <div class="modal-content">
                <div class="modal-header">
                    <asp:Button ID="btn_close_control" runat="server" Text="&times;" class="close" data-dismiss="modal" />
                </div>
                <div class="modal-body">               
                    <h2><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h2>
                    <usc:TableStripedUsc runat="server" ID="TableStripedUsc"/>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="btn_save_modal" runat="server" Text="Salvar" class="btn btn-default" data-dismiss="modal" />
                    <asp:Button ID="btn_close_modal" runat="server" Text="Fechar" class="btn btn-default" data-dismiss="modal" />
                </div>
            </div>
        </div>
    </div>
</asp:Panel>