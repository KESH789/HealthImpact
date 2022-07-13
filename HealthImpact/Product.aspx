<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="HealthImpact.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <%-- Page to list a product--%>
        <!-- BEGIN PAGE TITLE/BREADCRUMB -->
		<div class="parallax colored-bg pattern-bg" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1 class="page-title">Product Report</h1>
						
                        <%-- Links to redirect to pages in the top menu Bar--%>
						<ul class="breadcrumb">
							<li><a href="\Login.aspx">Home </a></li>
							<li><a href="Register">Register With Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE TITLE/BREADCRUMB -->
    <!-- BEGIN CONTENT WRAPPER -->
		<div class="content">
			<div class="container">
				<div class="row">
				
					<!-- BEGIN MAIN CONTENT -->
					<div class="main col-sm-12">
    <div class="form-horizontal">
        <h4>Add new Product Details</h4>
        <hr />
                 
              <%-- Textbox fields to Product name--%>

        <asp:ValidationSummary runat="server" CssClass="col-md-2 control-label" />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Product Name</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="ProductName" CssClass="form-control" TextMode="SingleLine" />
              </div>
        </div>
             <%-- Textbox fields to Input Batch Number--%>

         <div class="form-group">
             <asp:Label runat="server" AssociatedControlID="txtBatchNumber" CssClass="col-md-2 control-label">Batch Number</asp:Label>
              <div class="col-md-10 col-lg-6">
                 <asp:TextBox runat="server" ID="txtBatchNumber" CssClass="form-control" TextMode="SingleLine" />
                 </div>
         </div>
               <%-- Textbox fields to Input Product Quantity--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtQuantity" CssClass="col-md-2 control-label">Quantity</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="txtQuantity" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQuantity"
                    CssClass="text-danger" ErrorMessage="The quantity is required." />
            </div>
        </div>
           <%-- Textbox fields to Input Manufacturing Date--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="manufacturingDate" CssClass="col-md-2 control-label">Manufacturing Date</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" Width="250px" ID="manufacturingDate" CssClass="form-control" TextMode="Date" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="manufacturingDate"
                    CssClass="text-danger" ErrorMessage="The Manufacturing Date is required." />
            </div>
        </div>
            <%-- Textbox fields to Input Supplier Name--%>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSupplier" CssClass="col-md-2 control-label">Supplier</asp:Label>
            
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="txtSupplier" CssClass="form-control" TextMode="SingleLine" />
              </div>
        </div>
            <%-- Textbox fields to Input Cost Price of Product--%>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCostPrice" CssClass="col-md-2 control-label">Cost Price</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="txtCostPrice" TextMode="SingleLine" CssClass="form-control" />
              </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <div id="ReCaptchContainer"></div>  
                   <label style="font-weight:100" id="lblMessage" runat="server" clientidmode="static"></label>  
                </div>
            <div class="col-md-offset-2 col-md-10">
                 <%-- Button to save the Product to the Database--%>
                <asp:Button runat="server" ID="SaveProduct" OnClick="SaveProduct_Click" Text="Save Product" class="btn btn-fullcolor" />
                <br />
                <br />
                 <%-- Button to redirect to Product Report page, where the product report is generated from the Database. --%>
                <asp:Button runat="server" ID="ProductReport" OnClick="ProductReport_Click" Text="View Product Report" class="btn1 btn-fullcolor" />

                <br />
                <br />

            </div>
        </div>
    </div>

                        </div>
                    </div>
                </div>
            </div>
</asp:Content>


