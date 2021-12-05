<%@ Page Title="" Language="C#" MasterPageFile="~/Products.Master" AutoEventWireup="true" CodeBehind="EditProducts.aspx.cs" Inherits="adonetdemo01.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Edit Products</h2>
    <asp:GridView ID="gvProducts" runat="server" DataSourceID="sdsProducts" Width="100%" DataKeyNames="Id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:rccltestCon %>" 
        DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" 
        SelectCommand="SELECT * FROM [Products]" 
        UpdateCommand="UPDATE [Products] SET [productName] = @productName, [price] = @price, [qoh] = @qoh, [catcode] = @catcode, [remarks] = @remarks WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="productName" Type="String" />
            <asp:Parameter Name="price" Type="Decimal" />
            <asp:Parameter Name="qoh" Type="Int32" />
            <asp:Parameter Name="catcode" Type="String" />
            <asp:Parameter Name="remarks" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
