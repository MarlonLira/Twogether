using System;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Fitness;

namespace Twogether.Views.Colaborador {
    public partial class EtapaPge : Page {
        protected void Page_Load(object sender, EventArgs e) {
            LoadPage();
        }


        public void LoadPage() {
            if ((AlunoPst)Session["Aluno"] == null) {

                /*pnl_parq.Visible = false;
                pnl_impedancia.Visible = false;*/
                //tbpEtapa1.Disabled = true;
            }
        }
    }
}