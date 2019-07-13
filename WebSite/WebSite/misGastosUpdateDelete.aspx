<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="misGastosUpdateDelete.aspx.cs" Inherits="misGastosUpdateDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form2" runat="server" class="box">
        <div class="col-sm-6">

            <table>
                <tr>
                    <td>
                        <h2 style="width: 200%">Gastos [Update - Delete]</h2>
                    </td>
                </tr>

                <tr>
                    <td>
                        <div class="btn-group">
                            <asp:DropDownList ID="cboGastos" runat="server" AutoPostBack="True" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnSelectedIndexChanged="cboGastos_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </td>

                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtNombreGasto" runat="server" class="form-control form-control-user" placeholder="Nombre Gasto" Style="width: 250%"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>
                        <asp:TextBox ID="txtCuotasPago" runat="server" class="form-control form-control-user" placeholder="Cuotas Pago" Style="width: 250%"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtValorGasto" runat="server" class="form-control form-control-user" placeholder="Valor Gasto" Style="width: 250%"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtFechaGasto" runat="server" class="form-control form-control-user" Style="width: 250%" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>

                 <tr>
                    <td>
                        <asp:TextBox ID="txtFechaBD" runat="server" class="form-control form-control-user" Style="width: 250%" TextMode="SingleLine"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" class="btn btn-primary btn-user btn-block" OnClick="btnModificar_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnBorrar" runat="server" Text="Eliminar" class="btn btn-primary btn-user btn-block" OnClick="btnBorrar_Click"/>

                    </td>
                </tr>
            </table>



        </div>
    </form>
</asp:Content>

