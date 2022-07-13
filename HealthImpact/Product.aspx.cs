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

        public void SaveProduct_Click(object sender, EventArgs e)
        {
            HealthImpactEntities hp = new HealthImpactEntities();
            var productDetails = new ProductTable
            {
                BatchNumber = Convert.ToInt32(txtBatchNumber.Text),
                Product = ProductName.Text,
                Quantity = Convert.ToInt32(txtQuantity.Text),
                ManufacturingDate = DateTime.Parse(manufacturingDate.Text),
                Supplier = txtSupplier.Text,
                CostPrice = Convert.ToDouble(txtCostPrice.Text),
            };

            hp.ProductTables.Add(productDetails);
            hp.SaveChanges();
            hp.Dispose();                       
        }

        public void ProductReport_Click(object sender, EventArgs e)
        {
            //int numb = Convert.ToInt32(txtBatchNumber.Text.Trim());
            Response.Redirect("/ProductReport.aspx?name=" + ProductName.Text + " ");
            //Response.Redirect("/ProductReport.aspx?name='" + ProductName.Text + "' ");
        }
    }
}