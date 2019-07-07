using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Page.IsValid)
        {
            ModeloBD bd = new ModeloBD();
            var datos = bd.usuario.FirstOrDefault(u => u.rut_usuario == txtUser.Text.Trim() &&
                                                  u.password_usuario == txtPassword.Text.Trim());

            if (datos != null)
            {
                Session["rut_usuario"] = datos.rut_usuario;
                // Session.Remove["nombre_real"];
                // Session.Abandon
                Response.Redirect("indexMaster.aspx");


            }
            else
            {
                Response.Write("<script language='javascript'>alert('Usuario o Contraseña Incorrecto!.');</script>");
                txtUser.Text = "";
                txtPassword.Text = "";
            }
        }


    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.RedirectPermanent("signup.aspx");
    }
}