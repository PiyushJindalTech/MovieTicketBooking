using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BeMoviesBooking;

namespace MovieBooking.Account
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Getdata();
            }
        }
        public void Getdata()
        {
            string _Error = "";
            DataSet objDS = new DataSet();
            BeMoviesBooking.BeMovieBooking objMovieBooking = new BeMoviesBooking.BeMovieBooking();
            objDS = objMovieBooking.BeGetMovies(ref _Error);
            GrdMovies.DataSource = objDS;
            GrdMovies.DataBind();
        }
        protected void vie_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlDataAdapter da1 = new SqlDataAdapter("select moviename,director,movieactres,movierating,movieimage from tblmovie where moviename='" + movname.SelectedItem.Text + "'", con);
            //DataSet ds = new DataSet();
            //da1.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //DataList1.DataSource = ds;
            //DataList1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from tblmovie where moviename='" + movname.SelectedItem.Text + "'", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Movie Deleted Successfully')</script>");
            }
            else
                Response.Write("<script>alert('Movie not Deleted ')</script>");
        }
    }
}