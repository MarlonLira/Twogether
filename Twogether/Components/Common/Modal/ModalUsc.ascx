<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ModalUsc.ascx.cs" Inherits="Twogether.Components.Common.Modal.ModalUsc" %>

<div class="modal fade" id="ModalUsc" role="dialog">
    <div class="modal-dialog modal-large nk-red">
        <div class="modal-content">
            <div class="modal-header">
                <asp:Button ID="btn_close_control" runat="server" Text="&times;" class="close" data-dismiss="modal" />
            </div>
            <div class="modal-body">
                <% if (this.IsTable) {%>
<<<<<<< HEAD
                    <usc:TableUsc runat="server" ID="TableUsc" Scale="8" />
=======
                    <usc:TableUsc runat="server" ID="TableUsc" Scale="8"/>
>>>>>>> a3d2a3b2db906efb113479872e14972d68d07bd3
                <%} %>

                <h2><asp:Label ID="lbl_title_control" runat="server"></asp:Label></h2>
                <p><asp:Label ID="lbl_control" runat="server"></asp:Label></p>
                
            </div>
            <div class="modal-footer">
                <asp:Button ID="btn_save_modal" runat="server" Text="Salvar" class="btn btn-default" data-dismiss="modal"/>
                <asp:Button ID="btn_close_modal" runat="server" Text="Fechar" class="btn btn-default" data-dismiss="modal"/>
            </div>
        </div>
    </div>
</div>

