using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using adonetdemo01;


namespace adonetdemo01
{
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(DBConfig.ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand
                ("Insert into dbo.Products (productName,price,qoh,catcode,remarks) " +
                "values(@productName,@price,@qoh,@catcode,@remarks)",con);
            cmd.Parameters.AddWithValue("@productName", txtName.Text);
            cmd.Parameters.AddWithValue("@price", txtPrice.Text);
            cmd.Parameters.AddWithValue("@qoh", txtQoH.Text);
            cmd.Parameters.AddWithValue("@catcode", txtCatCode.Text);
            cmd.Parameters.AddWithValue("@remarks", txtRemarks.Text);

            try
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Product saved successfully";
            }
            catch(Exception ex)
            {
                lblMsg.Text = "Sorry, Product cannot be saved due to error" + ex.Message;
                Trace.Write("Error :" + ex.Message);
            }
            con.Close();
        }
    }
}