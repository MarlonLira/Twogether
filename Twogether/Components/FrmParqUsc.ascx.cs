using System;
using System.Web.UI;
using Twogether.Components.Common.Button;

namespace Twogether.Components {
    public partial class FrmParqUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {

            btn_confirmar.OnSelect += new ButtonUsc.OnSelectEvent(btn_confirmar_click);

        }

       

        protected void btn_confirmar_click() {
            object UrlAction = "";
            try {
                
                if (UrlAction != DBNull.Value) {
                    if (!String.IsNullOrEmpty(Convert.ToString(UrlAction))) {
                        
                    }
                }
            } catch (Exception Except) {
                
            }
        }
    }
}