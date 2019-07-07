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
        <table>
            <tr>
                <td>
                    <asp:Literal ID="ltRemuneracion" runat="server"></asp:Literal>

                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Historial"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="piechart" style="width: 710px; height: 500px; vertical-align: central"></div>
                </td>
                <td>
                    <asp:GridView ID="gdvHistorial" runat="server"></asp:GridView>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

