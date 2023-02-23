using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace HealthImpact
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Testing Github desktop Repo Deleting Commits
        public void SaveProduct_Click(object sender, EventArgs e)
        {
            HealthImpactEntities hp = new HealthImpactEntities();
            
            //Retrieving input data from from end input and saving to Database
            var productDetails = new ProductTable
            {
                BatchNumber = Convert.ToInt32(txtBatchNumber.Text),
                Product = ProductName.Text,
                Quantity = Convert.ToInt32(txtQuantity.Text),
                ManufacturingDate = DateTime.Parse(manufacturingDate.Text),
                Supplier = txtSupplier.Text,
                CostPrice = Convert.ToDouble(txtCostPrice.Text),
            };

            //Saving Data instantiated object to the Database
            hp.ProductTables.Add(productDetails);
            hp.SaveChanges();
            hp.Dispose();                       
        }

        public void ProductReport_Click(object sender, EventArgs e)
        {
            //Redirecting to ProductReport page
            //Parsing through the Product name to the ProductReport page, so the Product Report will be generated from the user input Product Name.
            Response.Redirect("/ProductReport.aspx?name=" + ProductName.Text + " ");
        }
    }
}