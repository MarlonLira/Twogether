using System;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Fitness;

namespace Twogether.Components {
    public partial class FrmAlunoUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            LoadTitle();
        }

        public String Title { get; set; }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
            
        }

        public String btnTitle { get; set; }
        public void LoadTitle() {
            AlunoPst Aluno = (AlunoPst)Session["Aluno"];

            lbl_control.Text = Title;
            btn_control.Title = btnTitle;
            if (String.IsNullOrEmpty(btnTitle)) {
                btn_control.Visible = false;
            }
            pnl_control.Enabled = false;
            txt_nome.Enable = true;
            txt_idade.Enable = true;
            txt_data.Enable = true;
            txt_email.Enable = true;
            txt_phone.Enable = true;
            txt_sexo.Enable = true;

            if (Aluno != null) {
                txt_nome.StaticValue = Aluno.Nome;
                txt_email.StaticValue = Aluno.Email;
                txt_phone.StaticValue = Aluno.TelCelular;
                txt_sexo.StaticValue = Aluno.Sexo;
                txt_data.StaticValue = DateTime.Now.ToShortDateString();
                txt_idade.StaticValue = Convert.ToString(DateTime.Now.Year - Aluno.DataNascimento.Year);
            }

            
        }
    }
}