<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="indexMaster.aspx.cs" Inherits="indexMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatosGastos()%>);

            var options = {
                title: 'Mis Gastos'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>


    <div id="contentHome">

        <div class="col-xl-3 col-md-6 mb-4" id="divIngresos">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Ingresos (Mensuales)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                                <asp:literal id="ltRemuneracion" runat="server"></asp:literal>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4" id="divGastos" style="float: right; top: -132px; right: -212px">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                
                                 <asp:Label ID="ltAvisoGastos" runat="server" Text="Gastos (Mensuales)"></asp:Label>
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">
                               
                                <asp:Label ID="ltGastos" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div>
            <div id="piechart" style="width: 710px; height: 500px; vertical-align: central"></div>
        </div>
    </div>

</asp:Content>

