using System;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Administracao;
using Brasdat.Gestor.Library.Core.Classes.Helpers;

namespace Twogether {
    public partial class LoginPge : Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btn_entrar_Click(object sender, EventArgs e) {

            ColaboradorEntrar(txt_nome.Value, txt_senha.Value);
        }

        private void ColaboradorEntrar(String ContaAcesso, String Senha) {
            FuncionarioPst Funcionario = null;
            String Advertencia = "";
            try {

                Funcionario = new FuncionarioPst();
                Funcionario.Usuario = ContaAcesso;
                Funcionario.Senha = Senha;

                if (Funcionario.Autenticar("",
                    Request.ServerVariables["REMOTE_ADDR"], Request.ServerVariables["REMOTE_HOST"],
                    Global.Empresa.EmpresaGrupo.Id, out Advertencia, ModulesNameList.PORTAL, 1)) {

                    Global.Funcionario = Funcionario;
                    Global.SetEmpresa(Funcionario.Empresa.Id);

                    Response.Redirect("Default.aspx", false);
                }

            } finally {
                Funcionario = null;
            }
        }
    }
}