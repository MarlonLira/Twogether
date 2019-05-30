using System;
using System.Web.UI;

namespace Twogether.Components.Common.DropDown {
    public partial class SelectUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadSelect();
        }
        
        public String SelectItem { get; set; }
        
        public Int16 Scale { get; set; }

        public void LoadSelect() {
            String [] Itens = SelectItem.Split('/');

            foreach (String item in Itens) {
                dd_control.Items.Add(item);
            }
            
        }
    }
}