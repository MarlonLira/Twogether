using System;
using System.Data;
using System.Web;
using System.Web.UI.WebControls;
using System.Linq;
using System.Collections.Generic;

namespace Twogether.Helpers {
    public static class Help {

        public static String FormatUrl(String Url) {
            String Result = (HttpContext.Current.Request.Url.Authority + @"/" + Url.Replace(@"~/", @"/"));
            while (Result.IndexOf(@"//") > -1) {
                Result = Result.Replace(@"//", @"/");
            }
            return HttpContext.Current.Request.Url.Scheme + @"://" + Result;
        }

        public static TableRow[] TableLoad(DataTable Table) {
            Table WebTable;
            TableCell WebCell;
            TableRow WebRow;
            TableRow[] WebRow2;

            try {

                WebTable = new Table();
                WebRow = new TableRow();

                WebRow2 = new TableRow[Table.Rows.Count];
                int count = 0;
                foreach (DataRow Rows in Table.Rows) {

                    foreach (object Cells in Rows.ItemArray) {
                        WebCell = new TableCell();
                        WebCell.Text = Cells.ToString();

                        WebRow.Cells.Add(WebCell);
                    }

                    WebTable.Rows.Add(WebRow);
                    WebRow2[count] = WebRow;
                    WebRow = new TableRow();
                    count++;
                }
            } catch (Exception Err) {
                WebTable = null;
                WebRow2 = null;
            }

            return WebRow2;
        }

        public static DataTable TableFormat(String[] Colunas, DataTable TableAux) {
            DataTable TableFormat = TableAux;
            var DeleteColumns = new List<String>();
            var SelectColumn = new List<String>();

            foreach (String Col in Colunas) {
                if (Col.ToUpper() == "TELEFONE") {
                    SelectColumn.Add("TEL_CELULAR");
                }
                if (Col.ToUpper() == "MATRICULA") {
                    SelectColumn.Add("CODIGO");
                }
                SelectColumn.Add(Col.ToUpper());
            }

            foreach (DataColumn Column in TableFormat.Columns) {
                if (!SelectColumn.Contains(Convert.ToString(Column).ToUpper())) {
                    DeleteColumns.Add(Convert.ToString(Column));
                }
            }

            foreach (String ColumnDeleted in DeleteColumns) {
                TableFormat.Columns.Remove(Convert.ToString(ColumnDeleted));
            }

            return TableFormat;
        }

        public static String TableLoad(DataTable Table, Boolean IsHtml) {
            String TableHtml = "";
            String InitTr = "<tr>";
            String CloseTr = "</tr>";
            String InitTd = "<td>";
            String CloseTd = "</td>";

            foreach (DataRow Row in Table.Rows) {
                TableHtml += InitTr;
                
                foreach (var Cell in Row.ItemArray) {
                    TableHtml += InitTd + Convert.ToString(Cell) + CloseTd;
                }
                TableHtml += CloseTr;
            }

            return TableHtml;
        }

        public static String TableLoad(String [] Colunas, Boolean IsHtml) {
            String TableHtml = "";
            String InitTr = "<tr>";
            String CloseTr = "</tr>";
            String InitTh = "<th>";
            String CloseTh = "</th>";

            TableHtml += InitTr;
            foreach (String Row in Colunas) {
                TableHtml += InitTh + Convert.ToString(Row) + CloseTh;
            }
            TableHtml += CloseTr;

            return TableHtml;
        }

        public static String WordCheck(String Word) {
            String WordType = "";

            foreach (Char Letter in Word.ToCharArray()) {

                if (Char.IsNumber(Letter)) {
                    if (WordType == "Number" || String.IsNullOrEmpty(WordType)) {
                        WordType = "Number";
                    } else {
                        WordType = "Erro";
                        break;
                    }
                }
                if (Char.IsLetter(Letter) && !Char.IsSymbol(Letter)) {
                    if (WordType == "Letter" || String.IsNullOrEmpty(WordType)) {
                        WordType = "Letter";
                    } else {
                        WordType = "Erro";
                        break;
                    }
                }
            }

            return WordType;
        }
    }
}