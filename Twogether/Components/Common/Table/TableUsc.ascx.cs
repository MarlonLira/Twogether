using System;
using System.Data;
using System.Web.UI;
using Twogether.Helpers;

namespace Twogether.Components.Common.Table {
    public partial class TableUsc : UserControl {

        /*
        protected void Page_Load(object sender, EventArgs e) {
            if ((DataTable)Session["Table"] != null) {
                TableInit();
            }
            if (Scale <= 0) { Scale = 10; }
        }
        */
        public String Colunas { get; set; }

        private String[] ColunasArray {
            get {
                return this.ColunasArray = Colunas.Split('/');
            }
            set {
                this.ColunasArray = value;
            }
        } 

        public void LoadDataSource(DataTable TableAux) {
            ltr_head_control.Text = Help.TableLoad(ColunasArray, true);
            ltr_body_control.Text = Help.TableLoad(TableAux, true);
            ltr_foot_control.Text = Help.TableLoad(ColunasArray, true);
            //ltr_body_control.Visible = true;
            if (Scale <= 0) { Scale = 10; }
        }

        public Int16 Scale { get; set; }

        public void TableInit() {
            ltr_body_control.Text = Help.TableLoad((DataTable)Session["Table"], true);
            ltr_body_control.Visible = true;
        }
    }
}