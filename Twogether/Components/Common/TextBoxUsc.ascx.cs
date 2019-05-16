using System;
using System.Web.UI;

namespace Twogether.Components.Common {
    public partial class TextBoxUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            RenderTitle();
        }

        public String LoadStyle { get; set; }

        public String Title { get; set; }
        
        public void RenderTitle() {
            if (String.IsNullOrEmpty(Title)) {
                Title = "Title";
            }
            txt_control.Attributes.Add("placeholder", Title);
        }
    }
}