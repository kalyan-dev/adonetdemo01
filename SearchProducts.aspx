<%@ Page Title="" Language="C#" MasterPageFile="~/Products.Master" AutoEventWireup="true" CodeBehind="SearchProducts.aspx.cs" Inherits="adonetdemo01.SearchProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Search Products</h2>
    <p></p>
    Product Name
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <p></p>

    <asp:DataList ID="dlSearchResults" runat="server">
        <ItemTemplate>
            <div class="item">
                <h3><%# Eval("productName") %></h3>
                <h4><%# Eval("price") %></h4>
                <h3><%# Eval("remarks") %></h3>
                <a href="ProductSales.aspx?Id=<%# Eval("Id") %>">Sales Report</a>
            </div>
        </ItemTemplate>
    </asp:DataList>


</asp:Content>
