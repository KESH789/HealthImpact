<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductReport.aspx.cs" Inherits="HealthImpact.ProductReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<br />
                <br />
                  <%-- Gridview that retrieves information from the back end to output Product details in Gridview--%>
                <asp:GridView ID="GridView1" runat="server" Height="50px" Width="800px" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    RowStyle-BackColor="#fcfcfc" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
     >
    <Columns>
        <asp:TemplateField HeaderText = " Product Report" ItemStyle-Width="135">
           
        </asp:TemplateField>  
       <%-- <asp:BoundField DataField="batchNumber" HeaderText="Batch Number" ItemStyle-Width="100" />
        <asp:BoundField DataField="ProductName" HeaderText="Product Name" ItemStyle-Width="100" />
        <asp:BoundField DataField="quantity" HeaderText="Quantity" ItemStyle-Width="100" />
        <asp:BoundField DataField="manufacturingDate" HeaderText="Manufacturing Date" ItemStyle-Width="100" />
        <asp:BoundField DataField="supplier" HeaderText="Supplier" ItemStyle-Width="100" />
        <asp:BoundField DataField="costPrice" HeaderText="Cost Price" ItemStyle-Width="100" />        --%>

        
    </Columns>
</asp:GridView>
                <br />
                <br />
                <br />
</asp:Content>
