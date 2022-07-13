using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthImpact
{
    public partial class ProductReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            //Retrieving entered Product Name from the Product.aspx page
             string name = Request.QueryString["name"].ToString();
           
            HealthImpactEntities hp = new HealthImpactEntities();
             
            //Searching for the product details by Product Name
            var productDetails = (from p in hp.ProductTables 
                                  where p.Product.ToString() == name
                                  //where p.BatchNumber == 12391
                                  select p).FirstOrDefault();
            if (!IsPostBack)
            {
                //Creating DataTable and adding GridView elements to object
                DataTable dt = new DataTable();
                //Specifying Title of Gridview Columns
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("batchNumber"), new DataColumn("productName"), new DataColumn("quantity")
                                  , new DataColumn("manufacturingDate"), new DataColumn("supplier"), new DataColumn("costPrice")});
                //Specifying values for each Gridview Column
                dt.Rows.Add(productDetails.BatchNumber, productDetails.Product, productDetails.Quantity, productDetails.ManufacturingDate,
                            productDetails.Supplier, productDetails.CostPrice);

                //Binding GridView data to the Front end ProductReport.aspx
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}