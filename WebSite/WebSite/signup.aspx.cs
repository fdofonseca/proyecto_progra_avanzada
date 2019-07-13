using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityModeloBD;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnRegister_Click1(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (txtNewPassword.Text.Trim().Equals(txtNewPassword2.Text.Trim()))
            {

                ModeloBD bd = new ModeloBD();
                string rut = txtNewUser.Text.Trim();
                string nombre = txtName.Text.Trim();
                string apellido = txtLastName.Text.Trim();
                string password = txtNewPassword.Text.Trim();


                var newUser = bd.Set<usuario>();
                newUser.Add(new usuario { rut_usuario = rut, nombre_usuario = nombre, apellido_usuario = apellido, password_usuario = password });

                bd.SaveChanges();

                Session["rut_usuario"] = rut;
                Session["nombre_usuario"] = nombre + " " + apellido; 
                Response.Redirect("indexMaster.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Las Contraseñas no coinciden! .');</script>");
            }

        }
    }
}