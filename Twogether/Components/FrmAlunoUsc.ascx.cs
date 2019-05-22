using System;
using System.Web.UI;

namespace Twogether.Components {
    public partial class FrmAlunoUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadTitle();
        }

        public String Title { get; set; }

        public String btnTitle { get; set; }
        public void LoadTitle() {
            lbl_control.Text = Title;
            btn_control.Title = btnTitle;
            if (String.IsNullOrEmpty(btnTitle)) {
                btn_control.Visible = false;
            }
        }
    }
}