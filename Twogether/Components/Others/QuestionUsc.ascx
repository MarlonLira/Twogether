<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuestionUsc.ascx.cs" Inherits="Twogether.Components.Others.QuestionUsc" %>

<asp:Panel ID="pnl_control" runat="server">
    <div class="form-element-list mg-t-30">
        <div class="cmp-tb-hd">
            <asp:label ID="lbl_control" runat="server"></asp:label>
        </div>
        <div class="form-example-int form-horizental mg-t-15">
            <div class="row">
                <usc:RadioButtonUsc runat="server" ID="rb_control" Titles="Sim/Não"/>
            </div>            
        </div>
    </div>
</asp:Panel>