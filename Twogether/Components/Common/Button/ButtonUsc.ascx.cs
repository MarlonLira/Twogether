using System;
using System.Web.UI;

namespace Twogether.Components.Common.Button {
    public partial class ButtonUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            RenderTitle();
        }

        public delegate void OnSelectEvent();
        public event OnSelectEvent OnSelect;

        public String Title { get; set; }

        public void RenderTitle() {

            if (String.IsNullOrEmpty(Title)) {
                Title = "Title";
            }

            btn_control.Text = Title;
        }

        protected void btn_control_Click(object sender, EventArgs e) {
            try {
                if (OnSelect != null) {
                    OnSelect();
                }
            } catch (Exception Except) {
            }
        }
    }
}