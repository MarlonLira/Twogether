using System.Web.Optimization;

namespace Twogether {
    public class BundleConfig {
        // Para obter mais informações sobre o Agrupamento, visite https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles) {
            bundles.Add(new ScriptBundle("~/bundles/js").Include(
                            "~/Scripts/vendor/jquery-1.12.4.min.js",
                            "~/Scripts/bootstrap.min.js",
                            "~/Scripts/wow.min.js",
                            "~/Scripts/jquery-price-slider.js",
                            "~/Scripts/owl.carousel.min.js",
                            "~/Scripts/jquery.scrollUp.min.js",
                            "~/Scripts/meanmenu/jquery.meanmenu.js",
                            "~/Scripts/counterup/jquery.counterup.min.js",
                            "~/Scripts/counterup/waypoints.min.js",
                            "~/Scripts/counterup/counterup-active.js",
                            "~/Scripts/scrollbar/jquery.mCustomScrollbar.concat.min.js",
                            "~/Scripts/jvectormap/jquery-jvectormap-2.0.2.min.js",
                            "~/Scripts/jvectormap/jquery-jvectormap-world-mill-en.js",
                            "~/Scripts/jvectormap/jvectormap-active.js",
                            "~/Scripts/sparkline/jquery.sparkline.min.js",
                            "~/Scripts/sparkline/sparkline-active.js",
                            "~/Scripts/flot/jquery.flot.js",
                            "~/Scripts/flot/jquery.flot.resize.js",
                            "~/Scripts/flot/curvedLines.js",
                            "~/Scripts/flot/flot-active.js",
                            "~/Scripts/knob/jquery.knob.js",
                            "~/Scripts/knob/jquery.appear.js",
                            "~/Scripts/knob/knob-active.js",
                            "~/Scripts/wave/waves.min.js",
                            "~/Scripts/wave/wave-active.js",
                            "~/Scripts/chat/jquery.chat.js",
                            "~/Scripts/todo/jquery.todo.js",
                            "~/Scripts/plugins.js",
                            "~/Scripts/chat/moment.min.js",
                            "~/Scripts/main.js",
                            "~/Scripts/tawk-chat.js",
                            "~/Scripts/wizard/jquery.bootstrap.wizard.min.js",
                            "~/Scripts/wizard/wizard-active.js"
                            ).IncludeDirectory("~/Scripts", ".js"));

            bundles.Add(new ScriptBundle("~/bundles/wizard").Include(
                "~/Scripts/wizard/jquery.bootstrap.wizard.min.js",
                "~/Scripts/wizard/wizard-active.js"
                ));

           bundles.Add(new StyleBundle("~/bundles/css").Include(
                            "~/Content/bootstrap.min.css",
                            "~/Content/font-awesome.min.css",
                            "~/Content/owl.carousel.css",
                            "~/Content/owl.theme.css",
                            "~/Content/owl.transitions.css",
                            "~/Content/meanmenu/meanmenu.min.css",
                            "~/Content/animate.css",
                            "~/Content/normalize.css",
                            "~/Content/scrollbar/jquery.mCustomScrollbar.min.css",
                            "~/Content/jvectormap/jquery-jvectormap-2.0.3.css",
                            "~/Content/notika-custom-icon.css",
                            "~/Content/wave/waves.min.css",
                            "~/Content/wave/button.css",
                            "~/Content/main.css",
                            "~/Content/style.css",
                            "~/Content/responsive.css"
                            ).IncludeDirectory("~/Content", ".css"));

            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/vendor/modernizr-2.8.3.min.js"));
        }
    }
}