<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="crearGastoMaster.aspx.cs" Inherits="crearGastoMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <form id="form2" runat="server" class="box">
        <div class="col-sm-6">
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <table>
                <tr>
                    <td>
                        <h2 style="width: 200%">Nuevo Gasto</h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtNombreGasto" runat="server" class="form-control form-control-user" placeholder="Nombre Gasto" Style="width: 250%"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombreGasto" runat="server" Width="250%" ForeColor="Red"
                            ErrorMessage="Debe ingresar un nombre para el Gasto"
                            ControlToValidate="txtNombreGasto" EnableClientScript="false">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="btn-group">
                            <asp:DropDownList ID="cboTipoGasto" runat="server" AutoPostBack="True" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>
                        </div>
                    </td>

                </tr>

                <tr>
                    <td>
                        <div class="btn-group">
                            <asp:DropDownList ID="cboTipoPago" runat="server" AutoPostBack="True" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" OnSelectedIndexChanged="cboTipoPago_SelectedIndexChanged"></asp:DropDownList>
                        </div>
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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Width="250%" ForeColor="Red"
                            ErrorMessage="Debe ingresar un Valor para el Gasto"
                            ControlToValidate="txtValorGasto" EnableClientScript="false">
                        </asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtFechaGasto" runat="server" class="form-control form-control-user" Style="width: 250%" TextMode="Date"></asp:TextBox>

                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Registrar" class="btn btn-primary btn-user btn-block" OnClick="btnRegister_Click" style="margin-top: 20px"/>
                    </td>
                </tr>
            </table>



        </div>
    </form>
</asp:Content>

