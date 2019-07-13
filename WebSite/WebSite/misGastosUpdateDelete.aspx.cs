using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class misGastosUpdateDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            BuscarGasto();
            txtFechaBD.Visible = false;
            txtNombreGasto.Visible = false;
            txtValorGasto.Visible = false;
            txtFechaGasto.Visible = false;
            txtCuotasPago.Visible = false;

            btnBorrar.Visible = false;
            btnModificar.Visible = false;
        }






    }


    private void BuscarGasto()
    {
        ModeloBD bd = new ModeloBD();
        string rutUsuario = Session["rut_usuario"].ToString();

        var gasto = from g in bd.gasto
                    where g.fk_rut_usuario == rutUsuario
                    select g;

        if (gasto != null)
        {
            cboGastos.DataSource = gasto.ToList();
            cboGastos.DataTextField = "nombre_gasto";
            cboGastos.DataValueField = "id_gasto";
            cboGastos.DataBind();

        }

    }

    protected void cboGastos_SelectedIndexChanged(object sender, EventArgs e)
    {

        var gastoSelect = Convert.ToInt32(cboGastos.SelectedValue);
        ModeloBD bd = new ModeloBD();
        var buscar = bd.gasto.FirstOrDefault(g => g.id_gasto == gastoSelect);

        btnBorrar.Visible = true;
        btnModificar.Visible = true;

        txtNombreGasto.Visible = true;
        txtNombreGasto.Text = buscar.nombre_gasto;

        txtValorGasto.Visible = true;
        txtValorGasto.Text = Convert.ToString(buscar.valor_gasto);

        if (buscar.tipo_pago_gasto.Equals("Credito"))
        {
            txtCuotasPago.Text = Convert.ToString(buscar.pago_cuotas);
        }
        else
        {
            txtCuotasPago.Visible = false;
        }
        txtFechaGasto.Visible = false;
        txtFechaBD.Visible = true;
        txtFechaBD.Text = Convert.ToString(buscar.fecha_gasto);
    }

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        ModeloBD bd = new ModeloBD();
        int gasto = Convert.ToInt32(cboGastos.SelectedValue);


        var buscar2 = bd.gasto.Find(gasto);
        if (buscar2 != null)
        {

            buscar2.nombre_gasto = txtNombreGasto.Text.Trim();
            buscar2.valor_gasto = Convert.ToInt32(txtValorGasto.Text.Trim());
            buscar2.fecha_gasto = Convert.ToDateTime(txtFechaBD.Text.Trim());

            bd.Entry(buscar2).State = System.Data.Entity.EntityState.Modified;
            bd.SaveChanges();

            Response.Write("<script language='javascript'>alert('Gasto Modificado Correctamente! .');</script>");
            Page.Response.Redirect(Page.Request.Url.ToString(), true);

        }
    }

    protected void btnBorrar_Click(object sender, EventArgs e)
    {
        ModeloBD bd = new ModeloBD();
        int gasto = Convert.ToInt32(cboGastos.SelectedValue);


        var buscar = bd.gasto.FirstOrDefault(g => g.id_gasto == gasto);
        if (buscar != null)
        {
            bd.gasto.Remove(buscar);
            bd.SaveChanges();

            Response.Write("<script language='javascript'>alert('Vehículo Eliminado! .');</script>");

            Page.Response.Redirect(Page.Request.Url.ToString(), true);


        }
    }
}