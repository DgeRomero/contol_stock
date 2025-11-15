<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="listaProductos.aspx.cs" Inherits="ControlStock.listaProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:GridView runat="server" ID="dvgListaArticulos" DataKeyNames="id"
                CssClass="table table-bordered table-hover" AutoGenerateColumns="false"
                OnSelectedIndexChanged="dvgListaArticulos_SelectedIndexChanged"
                OnPageIndexChanging="dvgListaArticulos_PageIndexChanging"
                AllowPaging="true" PageSize="5">
                <Columns>
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Marca" DataField="Marca.Descripcion" />
                    <asp:BoundField HeaderText="Categoria" DataField="Categoria.Descripcion" />                    
                    <asp:BoundField HeaderText="Precio" DataField="Precio" DataFormatString="{0:F2}" />                    
                    <asp:BoundField HeaderText="Código" DataField="Codigo" />                    
                    <asp:CommandField HeaderText="Acción" ShowSelectButton="true" ItemStyle-CssClass="text-center" SelectText="🔥" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
