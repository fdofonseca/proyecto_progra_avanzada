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
    public string rutSession;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["rut_usuario"] != null && !Session["rut_usuario"].Equals(""))
            {
                rutSession = Session["rut_usuario"].ToString();
                //ltMensaje.Text = "Bienvenido " + Session["nombre_usuario"];
            }
            else
            {
                Response.Redirect("index.aspx");
            }

            obtenerDatosGastos();
            obtenerDatosRemuneracion();
        }
    }

    protected string obtenerDatosRemuneracion()
    {
        string rut = rutSession;
        int valor = 0;
        ModeloBD bd = new ModeloBD();
        var remuneraciones = from r in bd.remuneracion
                     where r.fk_rut_usuario == rut
                     select r;

        if (remuneraciones != null)
        {
            foreach (var remuneracion in remuneraciones)
            {
                valor = valor + Convert.ToInt32(remuneracion.valor_remuneracion);

            }
            ltRemuneracion.Text = valor.ToString();
            return ltRemuneracion.Text;
        }
        else
        {
            ltRemuneracion.Text = "Sin Remuneración";
            return ltRemuneracion.Text;
        }
            
    }

    protected string obtenerDatosGastos()
    {
        string strDatos;
        string rut = rutSession;
        ModeloBD bd = new ModeloBD();
        var gastos = from g in bd.gasto
                      where g.fk_rut_usuario == rut
                      select g;

        if (gastos != null)
        {
            gdvHistorial.DataSource = gastos.ToList();
            gdvHistorial.DataBind();


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