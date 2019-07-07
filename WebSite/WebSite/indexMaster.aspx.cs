using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class indexMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            obtenerDatosGastos();
        }
    }

    protected string obtenerDatosGastos()
    {
        string strDatos;
        ModeloBD bd = new ModeloBD();
        var gastos = from g in bd.gasto
                     select g;

        if (gastos != null)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("Categoría", typeof(string)));
            dt.Columns.Add(new DataColumn("Valor Gasto", typeof(string)));

            foreach (var gasto in gastos)
            {
                dt.Rows.Add(new Object[] { gasto.tipo_gasto, gasto.valor_gasto });
            }

            strDatos = "[['Categoría', 'Valor Gasto'],";

            foreach (DataRow dr in dt.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "'" + "," + dr[1];
                strDatos = strDatos + "],";
            }
            strDatos = strDatos + "]";
            return strDatos;
        }
        else {
            return "";
        }

       
       
    }

    //Session.Abandon();
    //    Response.Redirect("Default.aspx");
}