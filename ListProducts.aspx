<%@ Page Title="" Language="C#" MasterPageFile="~/Products.Master" AutoEventWireup="true" CodeBehind="ListProducts.aspx.cs" Inherits="adonetdemo01.ListProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Products</h2>
    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsProducts"
        width="100%" AllowPaging="true" PageSize="5">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="productName" HeaderText="ProductName" SortExpression="productName" />
            <asp:BoundField DataField="price" DataFormatString="{0:######.00}" HeaderText="Price" SortExpression="price">
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="qoh" HeaderText="QoH" SortExpression="qoh" >
                <ItemStyle HorizontalAlign="Right"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" >
                <ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
               <asp:BoundField DataField="remarks" HeaderText="Remarks" SortExpression="remarks" >
                <ItemStyle HorizontalAlign="Left"></ItemStyle>
            </asp:BoundField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sdsProducts" runat="server" 
        ConnectionString="<%$ ConnectionStrings:rccltestCon %>" 
        SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
