<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductReport.aspx.cs" Inherits="HealthImpact.ProductReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Height="160px" Width="1200px" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
     >
    <Columns>
        <asp:TemplateField HeaderText = "Product Report" ItemStyle-Width="30">
           
        </asp:TemplateField>   
        <asp:BoundField DataField="batchNumber" HeaderText="Batch Number" ItemStyle-Width="150" />
        <asp:BoundField DataField="ProductName" HeaderText="Product Name" ItemStyle-Width="150" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-Width="150" />
        <asp:BoundField DataField="manufacturingDate" HeaderText="Manufacturing Date" ItemStyle-Width="150" />
        <asp:BoundField DataField="supplier" HeaderText="Supplier" ItemStyle-Width="150" />
        <asp:BoundField DataField="costPrice" HeaderText="Cost Price" ItemStyle-Width="150" />        

        
    </Columns>
</asp:GridView>
                <br />
                <br />
                <br />
</asp:Content>
