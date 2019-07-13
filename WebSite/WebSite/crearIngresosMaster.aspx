<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="crearIngresosMaster.aspx.cs" Inherits="crearIngresosMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form2" runat="server" class="box">
        <div class="col-sm-6">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table>
                <tr>
                    <td>
                        <h2 style="width: 200%">Nuevo Ingreso</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtNombreIngreso" runat="server" class="form-control form-control-user" placeholder="Nombre Trabajo Ingreso" Style="width: 250%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreGasto" runat="server" Width="250%" ForeColor="Red"
                            ErrorMessage="Debe ingresar un nombre para el Ingreso"
                            ControlToValidate="txtNombreIngreso" EnableClientScript="false">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtNombreCargo" runat="server" class="form-control form-control-user" placeholder="Nombre Cargo" Style="width: 250%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreCargo" runat="server" Width="250%" ForeColor="Red"
                            ErrorMessage="Debe ingresar un nombre para el Cargo"
                            ControlToValidate="txtNombreCargo" EnableClientScript="false">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtValorIngreso" runat="server" class="form-control form-control-user" placeholder="Valor Ingreso" Style="width: 250%" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Width="250%" ForeColor="Red"
                            ErrorMessage="Debe ingresar un Valor para el Ingreso"
                            ControlToValidate="txtValorIngreso" EnableClientScript="false">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtFechaIngreso" runat="server" class="form-control form-control-user" Style="width: 250%" TextMode="Date"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnRegisterIngreso" runat="server" Text="Registrar Ingreso" class="btn btn-primary btn-user btn-block" Style="margin-top: 20px" OnClick="btnRegisterIngreso_Click" />
                    </td>
                </tr>
            </table>



        </div>
    </form>
</asp:Content>

