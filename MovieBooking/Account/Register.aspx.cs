using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using BeMoviesBooking.DataAccess;
using System.Xml;
using System.Xml.Serialization;
using MovieBooking.App_Code;
using System.IO;

namespace MovieBooking.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

      
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string userDetails = "";
                Member objMember = new Member();
                AccountRegistration userRegistration = new AccountRegistration
                {
                    FirstName = txtFirstName.Text.Trim(),
                    MiddleName = txtMiddleName.Text.Trim(),
                    LastName = txtLastName.Text.Trim(),
                    MobileNo = txtMobileNo.Text.Trim(),
                    EmailID = txtEmailID.Text.Trim(),
                    IsAdmin = false,
                    Password = txtPassword.Text.Trim()
                };
                XmlSerializer xmlserializer = new XmlSerializer(userRegistration.GetType());
                var stringWriter = new StringWriter();
                using (var writer = XmlWriter.Create(stringWriter))
                {
                    xmlserializer.Serialize(writer, userRegistration);
                    userDetails = stringWriter.ToString();
                }
                string tStatus = objMember.beSaveRegistrationDetails(userDetails);
            }
            catch (Exception ex)
            {

            }
        }


        protected void Clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmailID.Text = "";
            txtPassword.Text = "";
        }
    }
}