using System;
using System.Web;
using System.Web.UI;

namespace Twogether.Components.Others {
    public partial class PercentDropdownUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {

        }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }
    }
}