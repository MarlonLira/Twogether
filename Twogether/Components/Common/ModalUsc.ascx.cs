using System;
using System.Web.UI;

namespace Twogether.Components.Common {
    public partial class ModalUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "myModalnine", "$(function(){$('#myModalnine').modal('show');})", true);
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
        
    }
}