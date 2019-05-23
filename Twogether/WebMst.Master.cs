using System;
using System.Web.UI;

namespace Twogether {
    public partial class WebMst : MasterPage {

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }
        protected void Page_Load(object sender, EventArgs e) {
            /*if (Global.Funcionario == null & Global.Aluno == null) {
                Response.Redirect("~/LoginPge.aspx", false);
            }*/
        }

        public void CatchChild(String Title, String Text) {
            /*mdl_control.Title = Title;
            mdl_control.Text = Text;

            ScriptManager.RegisterStartupScript(this, this.GetType(), "myModalnine", "$(function(){$('#myModalnine').modal('show');})", true);*/
        }
    }
}