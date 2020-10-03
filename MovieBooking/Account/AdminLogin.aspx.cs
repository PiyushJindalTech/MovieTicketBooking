using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BeMoviesBooking.DataAccess;

namespace MovieBooking.Account
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string _Error = "";
            DataSet objDS = new DataSet();
            try
            {
                Member member = new Member();
                objDS = member.BeGetAdminLogin(txtEmailID.Text.Trim(), txtPassword.Text.Trim(), ref _Error);
                if (!(_Error.StartsWith("-")))
                {
                    if(objDS.Tables[0].Rows.Count > 0)
                    {
                        string Name = Convert.ToString(objDS.Tables[0].Rows[0]["Name"]);
                        Session["AdminLogin_Name"] = Name;
                        Response.Redirect("~/Admin/Dashboard/CustomerList.aspx");
                    }
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}