using System;
using System.Web.UI;

namespace Twogether.Components.Common {
    public partial class TextBoxUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            RenderTitle();
        }

        public String LoadStyle { get; set; }

        public String Title { get; set; }

        public String Mask { get; set; }

        public void RenderTitle() {
            String TypeEdit = "";

            if (String.IsNullOrEmpty(Title)) {
                Title = "Title";
            }
                txt_control.Attributes.Add("placeholder", Title);

            switch (Mask) {
                case "Date" :{
                    TypeEdit = "99/99/9999";
                    break;
                }
                case "Phone": {
                    TypeEdit = "(99) 9 9999-9999";
                    break;
                }
                
            }

            txt_control.Attributes.Add("data-mask", TypeEdit);

        }
    
    }
}