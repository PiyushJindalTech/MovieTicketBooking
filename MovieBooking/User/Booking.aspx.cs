using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MovieBooking.User
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CustomerID"] == null)
                Response.Redirect("~/Account/Login.aspx");
            hdnMovieID.Value = Convert.ToString(Request.QueryString["MovieID"]);
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            string disabledSeats = "";
            try
            {
                BeMoviesBooking.BeMovieBooking objBe = new BeMoviesBooking.BeMovieBooking();
                string BookedSeat = objBe.BeGetBookedSeatsAccordingDate(DateTime.Now.ToString("yyyy-MM-dd"));
                if (BookedSeat.EndsWith(","))
                    BookedSeat = BookedSeat.TrimEnd(',');
                if (BookedSeat != "")
                    disabledSeats = "'A2,B2,C2,A4,B4,C4,D2,E2,F2,D4,E4,F4" + "," + BookedSeat + "'";
                else
                    disabledSeats = "'A2,B2,C2,A4,B4,C4,D2,E2,F2,D4,E4,F4'";
                string str = "<script>disableBookedSeat(" + disabledSeats + ");</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnProceed_Click(object sender, EventArgs e)
        {
            try
            {
                string bookedSeat = "";
                ContentPlaceHolder MainContent = Page.Master.FindControl("MainContent") as ContentPlaceHolder;
                for (int i = 'A'; i <= 'F'; i++)
                {
                    for (int j = 1; j <= 5; j++)
                    {
                        string chkId = Convert.ToChar(i).ToString() + j.ToString();
                        CheckBox checkBox = MainContent.FindControl(chkId) as CheckBox;
                        if (checkBox.Checked)
                        {
                            bookedSeat += chkId + ",";
                        }
                    }
                }
                if (bookedSeat.EndsWith(","))
                    bookedSeat = bookedSeat.TrimEnd(',');
                BeMoviesBooking.BeMovieBooking objBe = new BeMoviesBooking.BeMovieBooking();
                objBe.BeSaveBooking(Convert.ToString(Session["CustomerID"]), hdnMovieID.Value, bookedSeat, DateTime.Now.ToString());


            }
            catch (Exception ex)
            {

            }
        }
    }
}