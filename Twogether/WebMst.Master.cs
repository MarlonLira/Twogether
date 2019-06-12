using System;
using System.Web.UI;
using Twogether.Components.Common;
using Twogether.Components.Common.Button;

namespace Twogether {
    public partial class WebMst : MasterPage {

        public ButtonSearchUsc btnSearch {
            get {
                return this.btn_search_control;
            }
        }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }
        protected void Page_Load(object sender, EventArgs e) {
            /*if (Global.Funcionario == null & Global.Aluno == null) {
                Response.Redirect("~/LoginPge.aspx", false);
            }*/
        }
    }
}