using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Fitness;
using Brasdat.Gestor.Library.Core.Classes.Helpers;
using Twogether.Components.Common.Modal;
using Twogether.Helpers;

namespace Twogether.Components.Common {
    public partial class ButtonSearchUsc : UserControl {
        protected void Page_Load(object sender, EventArgs e) {
            txt_control.Attributes.Add("placeholder", "DIGITE A MATRICULA DO ALUNO DESEJADO");
        }

        SqlHlp Sql { get { return SqlHlp.Instance; } }

        public String Usuario() {
            return (Global.Funcionario != null ? Global.Funcionario.Nome : "");
        }

        public ModalUsc mdlControl {
            get {
                return this.mdl_control;
            }
        }

        public void Carregar(out DataTable Table) {
            AlunoPst Aluno = null;
            String WordResult = "";

            Table = new DataTable();
            Aluno = new AlunoPst();

            //DataTable Table;
            try {
                
                WordResult = Help.WordCheck(txt_control.Text);

                if (WordResult == "Number") {
                    Table = Sql.ExecuteReader("SELECT * FROM [fitness].[viw_aluno] WHERE CODIGO = @matricula",
                            new List<SqlParameter>() {
                                Sql.CreateVarcharParameter("@matricula", 25, Convert.ToString(txt_control.Text))
                            });

                    foreach (DataRow Row in Table.Rows) {
                        Aluno.Preencher(Row);
                        break;
                    }

                    Session.Add("Aluno", Aluno);

                }else if (WordResult == "Letter") {

                    Table = Sql.ExecuteReader("SELECT * FROM [fitness].[viw_aluno] WHERE NOME LIKE @nome AND EMPRESA_ID = @empresa_id",
                            new List<SqlParameter>() {
                                Sql.CreateVarcharParameter("@nome", 25, "%" + Convert.ToString(txt_control.Text) + "%"),
                                Sql.CreateNumericParameter("@empresa_id", Global.Funcionario.Empresa.Id, false)
                            });

                } else {
                    throw new Exception("Foi digitado um valor invalido!");
                }

                if (!String.IsNullOrEmpty(Aluno.Nome)) {
                    Response.Redirect("~/Views/Aluno/EtapaPge.aspx", false);
                } else if(String.IsNullOrEmpty(Aluno.Nome) && WordResult == "Number") {
                    throw new Exception("O Aluno não foi encontrado! Verifique se a matricula informada é valida.");
                }

            } catch (Exception Err) {
                throw new Exception(Err.Message);
            } 
        }
    }
}