using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace adonetdemo01
{
    public partial class SearchProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(DBConfig.ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from dbo.Products where productName like @prodText", con);

            da.SelectCommand.Parameters.AddWithValue("@prodText", "%" + txtName.Text + "%");
            DataSet ds = new DataSet();

            da.Fill(ds, "products_result");
            
            dlSearchResults.DataSource = ds.Tables["products_result"];
            dlSearchResults.DataBind();
        }
    }
}