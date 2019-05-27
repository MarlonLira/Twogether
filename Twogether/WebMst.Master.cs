using System;
using System.Web.UI;
using Twogether.Components.Common;

namespace Twogether {
    public partial class WebMst : MasterPage {

        public ButtonSearchUsc btnSearch {
            get {
                return this.ButtonSearchUsc1;
            }
        }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }
        protected void Page_Load(object sender, EventArgs e) {
            /*if (Global.Funcionario == null & Global.Aluno == null) {
                Response.Redirect("~/LoginPge.aspx", false);
            }*/

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "myModalnine", "$(function(){$('#myModalnine').modal('show');})", true);
        }

        public void CatchChild(String Title, String Text) {
            /*ModalUsc modal = new ModalUsc();
            modal.Attributes.Add("Title", Title);
            modal.Attributes.Add("Text", Text);*/

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "myModalnine", "$(function(){$('#myModalnine').modal('show');})", true);
        }
    }
}