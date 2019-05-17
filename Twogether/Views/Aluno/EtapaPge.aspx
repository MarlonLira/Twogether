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
										<h2>Anamnese</h2>
										<p>Pagina de pesquisa do <span class="bread-ntd">2 Gether</span></p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-3">
								<div class="breadcomb-report">
									<button data-toggle="tooltip" data-placement="left" title="Baixar Relatório" class="btn" href="../Error/404.aspx" ><i class="notika-icon notika-sent"></i></button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcomb area End-->

  <!-- Wizard area Start-->
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
                                            <li><a href="#tab1" data-toggle="tab">Etapa 1</a></li>
                                            <li><a href="#tab2" data-toggle="tab">Etapa 2</a></li>
                                            <li><a href="#tab3" data-toggle="tab">Etapa 3</a></li>
                                            <li><a href="#frm_aluno" data-toggle="tab">Etapa 4</a></li>
                                            <li><a href="#tab5" data-toggle="tab">Etapa 5</a></li>
                                            <li><a href="#tab6" data-toggle="tab">Etapa 6</a></li>
                                            <li><a href="#tab7" data-toggle="tab">Etapa 7</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content" runat="server">

                                <div class="tab-pane wizard-ctn" id="tab1">                                    
                                    <usc:FrmAlunoUsc runat="server" ID="frm_aluno_anamnese"/>
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab2">
                                   <usc:TableStripedUsc runat="server" ID="TableStripedUsc"/>
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab3">
                                    <usc:FrmParqUsc runat="server" ID="FrmParqUsc"/>
                                </div>

                                <div class="tab-pane wizard-ctn" id="frm_aluno">
                                    
                                </div>
                                
                                <div class="tab-pane wizard-ctn" id="tab5">
                                    
                                </div>
                                
                                <div class="tab-pane wizard-ctn" id="tab6">
                                    
                                </div>

                                <div class="tab-pane wizard-ctn" id="tab7">
                                   
                                </div>

                                <div class="wizard-action-pro">
                                    <ul class="wizard-nav-ac">
                                        <li><a class="button-first a-prevent" style="background-color:#F44336" href="#"><i class="notika-icon notika-more-button" style="background-color:#F44336"></i></a></li>
                                        <li><a class="button-previous a-prevent"style="background-color:#F44336" href="#"><i class="notika-icon notika-back" style="background-color:#F44336"></i></a></li>
                                        <li><a class="button-next a-prevent" style="background-color:#F44336" href="#"><i class="notika-icon notika-next-pro" style="background-color:#F44336" ></i></a></li>
                                        <li><a class="button-last a-prevent" style="background-color:#F44336" href="#"><i class="notika-icon notika-more-button" style="background-color:#F44336" ></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Wizard area End-->

    <!--  wizard JS
		============================================ -->
    <%: Scripts.Render("~/bundles/wizard") %>
    
</asp:Content>
