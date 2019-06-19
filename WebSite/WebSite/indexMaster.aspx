<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="indexMaster.aspx.cs" Inherits="indexMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="1" class="centrar">
        <tr>
            <td>Rut</td>
            <td>
                <asp:TextBox ID="txtRut" runat="server" CssClass="textbox" MaxLength="12" placeholder="PlaceHolder"></asp:TextBox>
                <asp:RequiredFieldValidator ID="validatorRut" runat="server" ErrorMessage="El rut no puede ir vacio" ControlToValidate="txtRut" EnableClientScript="False" CssClass="error"></asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td>Nombre</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="textbox" MaxLength="40"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Paterno</td>
            <td>
                <asp:TextBox ID="txtPaterno" runat="server" CssClass="textbox" MaxLength="30"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Materno</td>
            <td>
                <asp:TextBox ID="txtMaterno" runat="server" CssClass="textbox" MaxLength="30"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnGuardar" runat="server" Text="Enviar" CssClass="boton" />
            </td>
            <td>
                <input id="btnLimpiar" type="reset" value="Limpiar" class="boton" />
            </td>
        </tr>
    </table>
</asp:Content>

