using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using Brasdat.Gestor.Library.Business.Classes.Fitness;
using Brasdat.Gestor.Library.Core.Classes.Helpers;

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
            
            try {
                DataTable Table = new DataTable();
                Aluno = new AlunoPst();
                Int32 Num = 0;
                if (Char.IsDigit(txt_control.Text, 0)) {
                    Table = Sql.ExecuteReader("SELECT * FROM [fitness].[viw_aluno] WHERE CODIGO = @matricula",
                            new List<SqlParameter>() {
                                Sql.CreateVarcharParameter("@matricula", 25, Convert.ToString(txt_control.Text))
                            });

                    foreach (DataRow Row in Table.Rows) {
                        Aluno.Preencher(Row);
                        break;
                    }
                    Session.Add("Aluno", Aluno);
                }else if (Char.IsLetter(txt_control.Text, 0)) {

                    Table = Sql.ExecuteReader("SELECT [codigo], [nome], [tel_celular] FROM [fitness].[viw_aluno] WHERE nome like (%@nome%)",
                            new List<SqlParameter>() {
                                Sql.CreateVarcharParameter("@nome", 25, Convert.ToString(txt_control.Text))
                            });

                    foreach (DataRow Row in Table.Rows) {
                        Aluno.Preencher(Row);
                        break;
                    }
                    Session.Add("Table", Aluno);

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalTable", "$(function(){$('#ModalTable').modal('show');})", true);
                }

                Response.Redirect("~/Views/Aluno/EtapaPge.aspx", false);

            } catch (Exception Err) {
                ltr_control.Text = "<H1> " + Err.Message + "</H1>";
                WebMst Master = new WebMst();
                Master.CatchChild("Um erro foi encontrato !", Err.Message + " " + Err.InnerException);
                
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "myModalnine", "$(function(){$('#myModalnine').modal('show');})", true);
            }
        }

        protected void txt_control_TextChanged(object sender, EventArgs e) {
            Carregar();
        }
    }
}