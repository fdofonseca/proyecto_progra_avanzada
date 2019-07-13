using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class crearIngresosMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnRegisterIngreso_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {


            ModeloBD bd = new ModeloBD();
            string nombreIngreso = txtNombreIngreso.Text.Trim();
            string nombreCargo = txtNombreCargo.Text.Trim();
            int valorIngreso = Convert.ToInt32(txtValorIngreso.Text.Trim());
            DateTime fechaIngreso = Convert.ToDateTime(txtFechaIngreso.Text);
            string rutUsuario = Session["rut_usuario"].ToString();

            var ingreso = bd.Set<remuneracion>();
            ingreso.Add(new remuneracion {
                valor_remuneracion = valorIngreso,
                fecha_remuneracion = fechaIngreso,
                nombre_remuneracion = nombreIngreso,
                cargo_remuneracion = nombreCargo,
                fk_rut_usuario = rutUsuario
            });

            bd.SaveChanges();
            Response.Write("<script language='javascript'>alert('Registro Exitoso! .');</script>");

            txtNombreCargo.Text = "";
            txtNombreIngreso.Text = "";
            txtValorIngreso.Text = "";
            txtFechaIngreso.Text = "";




        }
    }
}