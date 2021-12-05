<%@ Page Title="" Language="C#" MasterPageFile="~/Products.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="adonetdemo01.AddProduct" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>--%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add Product</h2>
    Product Name<br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <p></p>
    Product Price <br />
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <p></p>
    Quantity on Hand<br />
    <asp:TextBox ID="txtQoH" runat="server"></asp:TextBox>
    <p></p>
    Category Code <br />
    <asp:TextBox ID="txtCatCode" runat="server"></asp:TextBox>
    <p></p>
    Remarks<br />
    <asp:TextBox ID="txtRemarks" runat="server"></asp:TextBox>
    <p></p>
    <asp:Button ID="btn_Save" runat="server" Text="Save" OnClick="btn_Save_Click" />
    <p></p>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

</asp:Content>
