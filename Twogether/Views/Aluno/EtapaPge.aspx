<%@ Page Title="" Language="C#" MasterPageFile="~/WebMst.Master" AutoEventWireup="true" CodeBehind="EtapaPge.aspx.cs" Inherits="Twogether.Views.Aluno.EtapaPge" %>
<%@ Import Namespace="System.Web.Optimization" %>

<asp:Content ID="cttEtapa" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcomb area Start-->
	<div class="breadcomb-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="breadcomb-list">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="breadcomb-wp">
									<div class="breadcomb-icon">
										<i class="notika-icon notika-edit"></i>
									</div>
									<div class="breadcomb-ctn">
										<h2>Avaliação</h2>
										<p>Pagina de avaliação do <span class="bread-ntd">aluno</span></p>
									</div>
								</div>
							</div>
                            <div class="button-icon-btn" style="float:right">
                                <button class="btn btn-default btn-icon-notika"><i class="notika-icon notika-menus"></i> Editar</button>
                            </div>
                            <usc:FrmAlunoUsc runat="server" ID="FrmAlunoUsc" Title="" btnTitle=""/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End-->

  <!-- Wizard area Start-->
<asp:Panel ID="pnl_control" runat="server">
    <div class="wizard-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wizard-wrap-int">
                        <div id="rootwizard">
                            <div class="navbar">
                                <div class="navbar-inner">
                                    <div class="container-pro wizard-cts-st">
                                        <ul>
                                            <li id="tbpEtapa1" runat="server"><a href="#tab1" data-toggle="tab">Etapa 1</a></li>
                                            <li id="tbpEtapa2" runat="server"><a href="#tab2" data-toggle="tab">Etapa 2</a></li>
                                            <li id="tbpEtapa3" runat="server"><a href="#tab3" data-toggle="tab">Etapa 3</a></li>
                                            <li id="tbpEtapa4" runat="server"><a href="#tab4" data-toggle="tab">Etapa 4</a></li>
                                            <li id="tbpEtapa5" runat="server"><a href="#tab5" data-toggle="tab">Etapa 5</a></li>
                                            <li id="tbpEtapa6" runat="server"><a href="#tab6" data-toggle="tab">Etapa 6</a></li>
                                            <li id="tbpEtapa7" runat="server"><a href="#tab7" data-toggle="tab">Etapa 7</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content" runat="server">

                                <div class="tab-pane wizard-ctn" id="tab1">
                                    <asp:Panel ID="pnl_parq" runat="server">
                                        <usc:FrmParqUsc runat="server" ID="FrmParqUsc1"/>
                                    </asp:Panel>
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab2">
                                    <asp:Panel ID="pnl_impedancia" runat="server">
                                        <usc:FrmImpedanciaUsc runat="server" ID="FrmImpedanciaUsc"/>
                                    </asp:Panel>
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab3">
                                    
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab4">
                                    
                                </div>
                                
                                <div class="tab-pane wizard-ctn" id="tab5">
                                    
                                </div>
                                
                                <div class="tab-pane wizard-ctn" id="tab6">
                                    
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab7">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Panel>
    <!-- Wizard area End-->
    <!--  wizard JS
		============================================ -->
    <%: Scripts.Render("~/bundles/wizard") %>
</asp:Content>