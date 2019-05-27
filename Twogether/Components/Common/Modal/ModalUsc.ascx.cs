using System;
using System.Data;
using System.Web.UI;

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

        public Boolean IsTable {
            get {
                Object Result = Session["IsTable"];
                if (Result == null) {
                    Result = false;
                }
                return Convert.ToBoolean(Result);
            }
            set {
                Session["IsTable"] = value;
            }
        }

        public Boolean IsError { get; set; }


        public void LoadModal() {

            Boolean UseSearchEvent = IsPostBack;

            Response.Write(@"<b style='color: white'>" + Convert.ToString(UseSearchEvent) + @"</b>");

            /*
            if (!String.IsNullOrEmpty(Request.Params["__EVENTTARGET"])) {
                if (Request.Params["__EVENTTARGET"].IndexOf("", StringComparison.InvariantCultureIgnoreCase) > -1) {
                    UseSearchEvent = true;

                }
            }
            */
            if (UseSearchEvent) {

                ButtonSearchUsc btnSearch = ((WebMst)this.Page.Master).btnSearch;
                if (btnSearch != null) {
                    DataTable TableAlu = null;
                    btnSearch.Carregar(out TableAlu);
                    if (TableAlu != null && TableAlu.Rows.Count > 0) {
                        TableUsc.Colunas = "Codigo/Nome/Telefone";
                        TableUsc.LoadDataSource(TableAlu);
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalUsc", "$(function(){$('#ModalUsc').modal('show');})", true);
                        IsTable = true;
                    }
                }

            }
            /*
                if (Session["IsTable"] != null) {

                    IsTable = (Boolean)Session["IsTable"];

                } else {
                    IsTable = false;
                }
                */

            if (Session["IsErro"] != null) {
                IsError = (Boolean)Session["IsErro"];
                btn_save_modal.Visible = false;
            }


        }

    }
}