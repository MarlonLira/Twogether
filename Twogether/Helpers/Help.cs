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

        public static String ChartsLoad() {
            String Result = "";
            //Colors
            String ColorGreen = "'rgba(75, 192, 192, 0.2)'";
            String ColorBlue = "'rgb(50,205,50, 0.2)'";
            String ColorYellow = "'rgba(255, 206, 86, 0.2)'";
            String ColorPurple = "rgba(153, 102, 255, 0.2)";
            String ColorOrange = "'rgba(255, 159, 64, 0.2)'";
            String ColorRed = "'rgba(255, 99, 132, 0.2)'";

            String Function = "(function($) {" + '"' + "use strict "+ '"' + ';';
            String Ctx = "var ctx = document.getElementById(" + '"' + "barchart1" + '"' + ");";
            String Charts_control = "var charts_control = new Chart(ctx, {";
            String Type = "type: 'bar',";
            String DataInit = "data: { ";
            String Labels = "labels: [" + '"' + "Blue" + '"' + "," + '"' + "Green" +'"' + ',' +  '"' + "Yellow" + '"' + ',' +  '"' + "Red" + '"' + "],";
            String Datasets = "datasets: [{ label: 'Bar Chart',";
            String Data = "data: [20, 19, 3, 5, 8, 9],";
            String BgColor = "backgroundColor: [" +
                 ColorRed + ','+ ColorGreen + ',' + 
                "'rgb(50,205,50, 0.2)'," +
                "'rgba(255, 206, 86, 0.2)'," +
                "'rgba(75, 192, 192, 0.2)'" +
                "],";
            String BdrColor = "borderColor: ["+
                "'rgba(255,99,132,1)',"+
                "'rgba(54, 162, 235, 1)',"+
                "'rgba(255, 206, 86, 1)',"+
                "'rgba(75, 192, 192, 1)'"+
                "],";
            String BdrWidth = "borderWidth: 1 }] }, options: {scales: {yAxes: [{ticks: { beginAtZero: true } }] } } }); })(jQuery);";


            Result = Function + Ctx + Charts_control + Type + DataInit + Labels + Datasets + Data + BgColor + BdrColor + BdrWidth;
            return Result;
        }
    }
}
