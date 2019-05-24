using System;
using System.Data;
using System.Web.UI;
using Twogether.Helpers;

namespace Twogether.Components.Common.Table {
    public partial class TableUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            if ((DataTable)Session["Table"] != null) {
                TableInit();
            }
            if (Scale <= 0) { Scale = 10; }
        }

        public Int16 Scale { get; set; }

        public void TableInit() {
            ltr_control.Text = Help.TableLoad((DataTable)Session["Table"], true);
            ltr_control.Visible = true;
        }
    }
}