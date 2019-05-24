using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Fitness;
using Brasdat.Gestor.Library.Core.Classes.Helpers;
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

        public void Carregar() {
            AlunoPst Aluno = null;
            String WordResult = "";
            
            DataTable Table;
            try {
                Table = new DataTable();
                Aluno = new AlunoPst();
                
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

                    Table = Sql.ExecuteReader("SELECT [codigo], [nome], [tel_celular] FROM [fitness].[viw_aluno] WHERE NOME LIKE @nome",
                            new List<SqlParameter>() {
                                Sql.CreateVarcharParameter("@nome", 25, "%" + Convert.ToString(txt_control.Text) + "%")
                            });

                    //Table = Sql.ExecuteReader("SELECT [codigo], [nome], [tel_celular] FROM [fitness].[tbl_aluno] WHERE nome like '%" + Convert.ToString(txt_control.Text) +"%'");

                    Session.Add("Table", Table);
                    //Response.Redirect("~/Views/Aluno/AnamnesePge.aspx", false);
                    Session.Add("IsTable", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalUsc", "$(function(){$('#ModalUsc').modal('show');})", true);
                } else {
                    Session.Add("IsErro", true);
                    throw new Exception("Foi digitado um valor invalido!");
                }

                if (!String.IsNullOrEmpty(Aluno.Nome)) {
                    Response.Redirect("~/Views/Aluno/EtapaPge.aspx", false);
                } else if(String.IsNullOrEmpty(Aluno.Nome) && WordResult == "Number") {
                    Session.Add("IsErro", true);
                    throw new Exception("O Aluno não foi encontrado!");
                }

            } catch (Exception Err) {
                Session.Add("IsErro", true);
                /*mdl_control.Title = "Erro";
                mdl_control.Text = Err.Message;*/

                ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalUsc", "$(function(){$('#ModalUsc').modal('show');})", true);
            }
        }

        protected void txt_control_TextChanged(object sender, EventArgs e) {
            Carregar();
        }
    }
}