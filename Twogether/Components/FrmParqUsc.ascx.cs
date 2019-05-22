using System;
using System.Web.UI;

namespace Twogether.Components {
    public partial class FrmParqUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadNext();
        }
        Int16 num = 0;

        public String Next { get; set; }

        public String GetNext() {
            num++;
            Session.Add("num", num);

            return "perg" + (Int16)Session["num"];
        }

        public void LoadNext() {
            if (String.IsNullOrEmpty(Next)) {
                Next = "#perg1";
            }else if (Next == "#perg1") {
                Next = "#perg2";
            }
        }

    }
}