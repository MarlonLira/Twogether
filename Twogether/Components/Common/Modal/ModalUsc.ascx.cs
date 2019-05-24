using System;
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

        public Boolean IsTable { get; set; }

        public Boolean IsError { get; set; }


        public void LoadModal() {

            if (Session["IsTable"] != null) {

                IsTable = (Boolean)Session["IsTable"];

            } else {
                IsTable = false;
            }

            if (Session["IsErro"] != null) {
                IsError = (Boolean)Session["IsErro"];
                btn_save_modal.Visible = false;
            }

        }
        
    }
}