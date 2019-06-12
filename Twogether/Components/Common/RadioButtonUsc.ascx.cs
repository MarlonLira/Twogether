using System;
using System.Web.UI;

namespace Twogether.Components.Common {
    public partial class RadioButtonUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadTitle();
        }

        public String Titles { get; set; }

       public String SelectValue { get {
                return rb_control.SelectedValue;
            }
       }

        public void LoadTitle() {
            String[] Title;
            if (!String.IsNullOrEmpty(Titles)) {
                Title = Titles.Split('/');
                foreach (String item in Title) {
                    rb_control.Items.Add(item);
                }
            } else {
                rb_control.Text = "Title";
            }
        }

    }
}