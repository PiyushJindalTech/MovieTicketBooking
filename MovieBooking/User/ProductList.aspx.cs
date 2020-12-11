using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BeMoviesBooking;
using System.Data;

namespace MovieBooking.User
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string _Error = "";
            try
            {
                DataSet objDS = new DataSet();
                BeMovieBooking objMovieBooking = new BeMovieBooking();
                objDS = objMovieBooking.BeGetProducts(ref _Error);
                rptProducts.DataSource = objDS;
                rptProducts.DataBind();
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnAddMovie_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }
    }
}