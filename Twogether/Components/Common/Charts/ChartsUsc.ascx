<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChartsUsc.ascx.cs" Inherits="Twogether.Components.Common.Charts.ChartsUsc" %>
<%@ Import Namespace="System.Web.Optimization" %>

<div class="bar-chart-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="bar-chart-wp">
                    <canvas height="140vh" width="180vw" id="barchart1"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<%: Scripts.Render("~/bundles/charts") %>

<script type="text/javascript">


	 /*----------------------------------------*/
	/*  1.  Bar Chart
	/*----------------------------------------*/

    var ctx = document.getElementById("barchart1");
	var barchart1 = new Chart(ctx, {
		type: 'bar',
        data: {
            <%
            String Titulos = "";
            String Valores = "";
            if (this.DataSource != null && this.DataSource.Count > 0) {
                foreach (KeyValuePair<String, String> item in this.DataSource) {
                    Titulos += '"' + item.Key + '"' + ",";
                    Valores += item.Value + ",";
                }
            }
            %>
            labels: [<%=Titulos.Substring(0, Titulos.Length - 1) %>],
			datasets: [{
            label: 'Bar Chart',
			data: [<%=Valores.Substring(0, Valores.Length - 1) %>],
			backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgb(50,205,50, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)'
            ],
			borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)'
            ],
            borderWidth: 1
			}]
		},
		options: {
			scales: {
				yAxes: [{
					ticks: {
						beginAtZero:true
					}
				}]
			}
		}
    });

</script>
