using System;
using System.Collections;
using System.Collections.Generic;
using System.Web.UI;
using Twogether.Helpers;

namespace Twogether.Components.Common.Charts {
    public partial class ChartsUsc : UserControl {

        public Dictionary<String, String> DataSource;

        protected void Page_Load(object sender, EventArgs e) {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "biroxa", Help.ChartsLoad(), true);

            if (!IsPostBack) {
                DataSource = new Dictionary<string, string>();

                DataSource.Add("Pouco", "12");
                DataSource.Add("Quase meio", "25");
                DataSource.Add("Meio", "30");
                DataSource.Add("Prime", "50");
            }
        }
    }
}