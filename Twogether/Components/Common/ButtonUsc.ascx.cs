using System;
using System.Web.UI;

namespace Twogether.Components.Common {
    public partial class ButtonUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            RenderTitle();
        }

        public String Title { get; set; }

        public void RenderTitle() {

            if (String.IsNullOrEmpty(Title)) {
                Title = "Title";
            }

            btn_control.Text = Title;
        }

    }
}