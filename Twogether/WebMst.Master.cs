using System;
using System.Web;
using System.Web.UI;

namespace Twogether {
    public partial class WebMst : MasterPage {

        public String FormatUrl(String Url) {
            String Result = (HttpContext.Current.Request.Url.Authority + @"/" + Url.Replace(@"~/", @"/"));
            while (Result.IndexOf(@"//") > -1) {
                Result = Result.Replace(@"//", @"/");
            }
            return HttpContext.Current.Request.Url.Scheme + @"://" + Result;
        }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }
        protected void Page_Load(object sender, EventArgs e) {
            if (Global.Funcionario == null & Global.Aluno == null) {
                Response.Redirect("~/LoginPge.aspx", false);
            }
        }
    }
}