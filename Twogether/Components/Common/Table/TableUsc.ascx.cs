using System;
using System.Data;
using System.Web.UI;
using Twogether.Helpers;

namespace Twogether.Components.Common.Table {
    public partial class TableUsc : UserControl {

        #region trash
        /*
        protected void Page_Load(object sender, EventArgs e) {
            if ((DataTable)Session["Table"] != null) {
                TableInit();
            }
            if (Scale <= 0) { Scale = 10; }
        }
        */

        private String[] ColunasArray {
            get {
                return this.ColunasArray = Colunas.Split('/');
            }
            set {
                this.ColunasArray = value;
            }
        } 

        public void LoadDataSource(DataTable TableAux) {
            //ltr_head_control.Text = Help.TableLoad(ColunasArray, true);
            ltr_body_control.Text = Help.TableLoad(TableAux, true);
            //ltr_foot_control.Text = Help.TableLoad(ColunasArray, true);
            //ltr_body_control.Visible = true;
            if (Scale <= 0) { Scale = 10; }
        }

        #endregion


        public String [] Colunas { get; set; }
        public Int16 Scale { get; set; }

        public void LoadDataSource(DataTable TableAux) {
            th_control.InnerHtml = Help.TableLoad(Colunas, true);
            tb_control.InnerHtml = Help.TableLoad(TableAux, true);
            tf_control.InnerHtml = Help.TableLoad(Colunas, true);
            if (Scale <= 0) { Scale = 10; }
        }
    }
}