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
             string name = Request.QueryString["name"].ToString();
           
            HealthImpactEntities hp = new HealthImpactEntities();
             
            var productDetails = (from p in hp.ProductTables 
                                  where p.Product.ToString() == name
                                  //where p.BatchNumber == 12391
                                  select p).FirstOrDefault();
                                  //select p).SingleOrDefault();
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[6] { new DataColumn("batchNumber"), new DataColumn("productName"), new DataColumn("quantity")
                                  , new DataColumn("manufacturingDate"), new DataColumn("supplier"), new DataColumn("costPrice")});
                dt.Rows.Add(productDetails.BatchNumber, productDetails.Product, productDetails.Quantity, productDetails.ManufacturingDate,
                            productDetails.Supplier, productDetails.CostPrice);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}