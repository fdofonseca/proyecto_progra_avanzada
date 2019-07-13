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
    public int remuneracionTotal;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["rut_usuario"] != null && !Session["rut_usuario"].Equals(""))
            {
                rutSession = Session["rut_usuario"].ToString();
                obtenerDatosGastos();
                obtenerDatosRemuneracion();
                obtenerTotalGastos();
                //ltMensaje.Text = "Bienvenido " + Session["nombre_usuario"];
            }
            else
            {
                Response.Redirect("index.aspx");
            }

           
        }
    }

    protected string obtenerTotalGastos()
    {
        string rut = rutSession;
        int valor = 0;
        ModeloBD bd = new ModeloBD();
        var totalGastos = from tg in bd.gasto
                             where tg.fk_rut_usuario == rut
                             select tg;

        if (totalGastos != null)
        {
            foreach (var gasto in totalGastos)
            {
                valor = valor + Convert.ToInt32(gasto.valor_gasto);

            }

            if (valor > remuneracionTotal)
            {
                ltGastos.ForeColor = System.Drawing.Color.Red;
                ltAvisoGastos.ForeColor = System.Drawing.Color.Red;
                ltGastos.Text = valor.ToString();
            }
            else {
                ltGastos.Text = valor.ToString();
            }
           
           
        
            
            return ltGastos.Text;
            
        }
        else
        {
            ltGastos.Text = "Sin Remuneración";
            return ltGastos.Text;
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
            remuneracionTotal = valor;
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
            //gdvHistorial.DataSource = gastos.ToList();
            //gdvHistorial.DataBind();


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