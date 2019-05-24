using System;
using System.Web;
using System.Web.UI;

namespace Twogether {
    public partial class Default : Page {
        protected void Page_Load(object sender, EventArgs e) {
            WebMst Mst = new WebMst();
            Mst.CatchChild("Erro", "Teste");
        }

        public String FormatUrl(String Url) {
            String Result = (HttpContext.Current.Request.Url.Authority + @"/" + Url.Replace(@"~/", @"/"));
            while (Result.IndexOf(@"//") > -1) {
                Result = Result.Replace(@"//", @"/");
            }
            return HttpContext.Current.Request.Url.Scheme + @"://" + Result;
        }
    }
}