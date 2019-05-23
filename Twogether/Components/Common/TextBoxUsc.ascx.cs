using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twogether.Components.Common {
    public partial class TextBoxUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            RenderTitle();
        }

        public String LoadStyle { get; set; }

        public String Title { get; set; }
       
        public String Mask { get; set; }

        public Int16 Scale { get; set; }

        public TextBoxMode Mode {
            get {
                return txt_control.TextMode;
            } set {
                txt_control.TextMode = value;
            }
        }

        public Boolean Enable {
            get {
                return txt_control.Enabled;
            }
            set {
                txt_control.ReadOnly = value;
            }
        }



        public String Value {
            get {
                return txt_control.Text;
            }
            set {
                txt_control.Text = value;
            }
        }

        public String StaticValue {
            get {
                return Title + ": " + txt_control.Text;
            }
            set {
                txt_control.Text = Title + ": " + value;
            }
        }

        public void RenderTitle() {
            String TypeEdit = "";

            if (String.IsNullOrEmpty(Title)) {
                Title = "Title";
            }
            if (Scale == 0) {
                Scale = 4;
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

            txt_control.Attributes.Add("data-mask", TypeEdit);
        }
    
    }
}