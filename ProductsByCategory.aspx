<%@ Page Title="" Language="C#" MasterPageFile="~/Products.Master" AutoEventWireup="true" CodeBehind="ProductsByCategory.aspx.cs" Inherits="adonetdemo01.ProductsByCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Products by Category</h2>
    <p></p>
    Select Category
    <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" DataSourceID="sdsCategories" 
        DataTextField="CategoryName" DataValueField="CategoryCode"></asp:DropDownList>
    <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:rccltestCon %>" 
        SelectCommand="SELECT * FROM [ProductCategories]"></asp:SqlDataSource>
    <p></p>

    <asp:GridView ID="gvProducts" runat="server" DataSourceID="sdsProducts" Width="100%" DataKeyNames="Id" 
        EmptyDataText="Sorry! No products found." AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="productName" HeaderText="ProductName" SortExpression="productName" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="qoh" HeaderText="QoH" SortExpression="qoh" />
            <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
            <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" />
        </Columns>

        <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="#FF3300" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:rccltestCon %>" 
        SelectCommand="SELECT * FROM [Products] WHERE ([catcode] = @catcode)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlCategories" Name="catcode" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
