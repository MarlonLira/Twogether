using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace Twogether {
    public class BundleConfig {
        // Para obter mais informações sobre o Agrupamento, visite https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles) {
            bundles.Add(new ScriptBundle("~/bundles/Js").Include(
                            "~/Scripts/vendor/jquery-1.12.4.min.js",
                            "~/Scripts/bootstrap.min.js",
                            "~/Scripts/wow.min.js",
                            "~/Scripts/Chart.min.js",
                            "~/Scripts/moment.min.js"
                            ).IncludeDirectory("~/Scripts", ".js"));

            bundles.Add(new StyleBundle("~/bundles/Css").Include(
                            "~/Content/bootstrap.min.css",
                            "~/Content/notika-custom-icon.css",
                            "~/Content/style.css",
                            "~/Content/responsive.css"
                            ).IncludeDirectory("~/Content", ".css"));
        }
    }
}