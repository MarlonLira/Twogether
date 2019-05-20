using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twogether.Views.Aluno {
    public partial class EtapaPge : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            LoadPage();
        }


        public void LoadPage() {
            if (String.IsNullOrEmpty((String)Session["Aluno"])) {

                /*pnl_parq.Visible = false;
                pnl_impedancia.Visible = false;*/
                //tbpEtapa1.Disabled = true;
            }
        }
    }
}