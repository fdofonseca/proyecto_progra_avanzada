using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class crearGastoMaster : System.Web.UI.Page
{
    public int gastosGlobal = 0;
    public int remuneracionGlobal = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LlenarTipoGasto();
            LlenarTipoPago();
            txtCuotasPago.Visible = false;
          
        }
        remuneracionGlobal = obtenerDatosRemuneracion();
        gastosGlobal = obtenerTotalGastos();
    }

    protected int obtenerDatosRemuneracion()
    {
        string rut = Session["rut_usuario"].ToString();
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
            remuneracionGlobal = valor;
            return remuneracionGlobal;
        }

        return remuneracionGlobal;



    }

    protected int obtenerTotalGastos()
    {
        string rut = Session["rut_usuario"].ToString();
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

            gastosGlobal = valor;
            return gastosGlobal;
        }

        return gastosGlobal;

    }

    private void LlenarTipoGasto()
    {

        cboTipoGasto.DataBind();
        cboTipoGasto.Items.Insert(0, "Seleccione un Tipo de Gasto");
        cboTipoGasto.Items.Insert(1, "Ocio");
        cboTipoGasto.Items.Insert(2, "Comida");
        cboTipoGasto.Items.Insert(3, "Vestimenta");
        cboTipoGasto.Items.Insert(4, "Transporte");


    }

    private void LlenarTipoPago()
    {
        cboTipoPago.DataBind();
        cboTipoPago.Items.Insert(0, "Seleccione un Tipo de Pago");
        cboTipoPago.Items.Insert(1, "Efectivo");
        cboTipoPago.Items.Insert(2, "Debito");
        cboTipoPago.Items.Insert(3, "Credito");

    }

    protected void cboTipoPago_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (cboTipoPago.SelectedIndex == 3)
        {
            txtCuotasPago.Visible = true;

        }
        else
        {
            txtCuotasPago.Visible = false;
        }
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (!(gastosGlobal > remuneracionGlobal))
            {
                if (cboTipoGasto.SelectedIndex != 0)
                {
                    if (cboTipoPago.SelectedIndex != 0)
                    {
                        ModeloBD bd = new ModeloBD();
                        string nombreGasto = txtNombreGasto.Text.Trim();
                        string tipoGasto = cboTipoGasto.SelectedValue;
                        string tipoPago = cboTipoPago.SelectedValue;
                        int valorCuota = Convert.ToInt32(txtValorGasto.Text.Trim());
                        DateTime fechaGasto = Convert.ToDateTime(txtFechaGasto.Text);
                        string rutUsuario = Session["rut_usuario"].ToString();

                        var gasto = bd.Set<gasto>();
                        gasto.Add(new gasto
                        {
                            nombre_gasto = nombreGasto,
                            tipo_gasto = tipoGasto,
                            tipo_pago_gasto = tipoPago,
                            valor_gasto = valorCuota,
                            fecha_gasto = fechaGasto,
                            fk_rut_usuario = rutUsuario
                        });

                        bd.SaveChanges();
                        Response.Write("<script language='javascript'>alert('Registro Exitoso! .');</script>");
                        txtNombreGasto.Text = "";
                        txtValorGasto.Text = "";
                        txtCuotasPago.Text = "";
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('Debe Seleccionar un Tipo de Pago! .');</script>");
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('Debe Seleccionar un Tipo de Gasto! .');</script>");
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Sus gastos superaron su Remuneración Mensual!, Elimine un Gasto o Agregue una Nueva Remuneración .');</script>");
                txtNombreGasto.Text = "";
                txtValorGasto.Text = "";
                txtCuotasPago.Text = "";
            }
        }
    }
}