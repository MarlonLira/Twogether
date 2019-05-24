using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Twogether.Components {
    public partial class TableStripedUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
           if ((DataTable)Session["Table"] != null) {
                TableInit();
            }
        }


        public void TableInit() {
            TableRow[] Row;
            //tmr_carga.Enabled = true;
            Row = Helpers.Help.TableLoad((DataTable)Session["Table"]);

            tbl_control.Rows.AddRange(Row);
        }
    }
}