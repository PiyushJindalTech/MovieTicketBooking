using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using BeMoviesBooking.DataAccess;
using MovieBooking.App_Code;
using System.Xml;
using System.Xml.Serialization;
using System.IO;

namespace MovieBooking.Account
{
    public partial class AdminRegister : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            //FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);

            //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            //if (!OpenAuth.IsLocalUrl(continueUrl))
            //{
            //    continueUrl = "~/";
            //}
            //Response.Redirect(continueUrl);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string adminDetails = "";
                Member objMember = new Member();
                AccountRegistration adminRegistration = new AccountRegistration
                {
                    FirstName = txtFirstName.Text.Trim(),
                    MiddleName = txtMiddleName.Text.Trim(),
                    LastName = txtLastName.Text.Trim(),
                    MobileNo = txtMobileNo.Text.Trim(),
                    EmailID = txtEmailID.Text.Trim(),
                    IsAdmin = true,
                    Password = txtPassword.Text.Trim()
                };
                XmlSerializer xmlserializer = new XmlSerializer(adminRegistration.GetType());
                var stringWriter = new StringWriter();
                using (var writer = XmlWriter.Create(stringWriter))
                {
                    xmlserializer.Serialize(writer, adminRegistration);
                    adminDetails = stringWriter.ToString();
                }
                string tStatus = objMember.beSaveRegistrationDetails(adminDetails);
            }
            catch (Exception ex)
            {

            }


        }


        protected void Clear()
        {
            txtFirstName.Text = "";
            txtMiddleName.Text = "";
            txtLastName.Text = "";
            txtMobileNo.Text = "";
            txtEmailID.Text = "";
            txtPassword.Text = "";
        }
    }
}