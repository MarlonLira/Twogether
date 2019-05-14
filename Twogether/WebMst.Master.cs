using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twogether {
    public partial class WebMst : System.Web.UI.MasterPage {

        public String FormatUrl(String Url) {
            String Result = (HttpContext.Current.Request.Url.Authority + @"/" + Url.Replace(@"~/", @"/"));
            while (Result.IndexOf(@"//") > -1) {
                Result = Result.Replace(@"//", @"/");
            }
            return HttpContext.Current.Request.Url.Scheme + @"://" + Result;
        }

        protected void Page_Load(object sender, EventArgs e) {

        }
    }
}