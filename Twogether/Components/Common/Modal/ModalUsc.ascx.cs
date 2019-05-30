using System;
using System.Data;
using System.Web.UI;
using Twogether.Helpers;

namespace Twogether.Components.Common.Modal {
    public partial class ModalUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadModal();
        }

        public String Title {
            get {
                return lbl_title_control.Text;
            }
            set {
                lbl_title_control.Text = value;
            }
        }

        public String Text {
            get {
                return lbl_control.Text;
            }
            set {
                lbl_control.Text = value;
            }
        }

        public Boolean IsTable { get; set; }

        public Boolean IsError { get; set; }


        public void LoadModal(String msg = "") {
            
            if (IsPostBack) {

                try {
                    
                    ButtonSearchUsc btnSearch = ((WebMst)this.Page.Master).btnSearch;
                    if (btnSearch != null) {

                        DataTable TableAlu = null;
                        btnSearch.Carregar(out TableAlu);

                        if (TableAlu != null) {

                            if (TableAlu != null && TableAlu.Rows.Count > 0) {

                                TableUsc.Colunas = new String[] {
                                    "Codigo",
                                    "Nome",
                                    "Telefone"
                                };
                                TableUsc.LoadDataSource(Help.TableFormat(TableUsc.Colunas, TableAlu));
                                IsTable = true;
                            }
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalUsc", "$(function(){$('#ModalUsc').modal('show');})", true);
                        }
                    }
                    
                } catch (Exception Err) {
                    btn_save_modal.Visible = false;
                    this.Title = "Error";
                    this.Text = Err.Message;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalUsc", "$(function(){$('#ModalUsc').modal('show');})", true);
                } 
            }
        }
    }
}