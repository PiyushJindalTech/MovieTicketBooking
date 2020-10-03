using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;

namespace ImagineUpline
{
    public class Global
    {
        public static string ConnectionString { get; set; }
    }
}


namespace BeMoviesBooking
{
    public class BeMovieBooking
    {
        public BeMovieBooking()
        {
            ImagineUpline.Global.ConnectionString = ConfigurationSettings.AppSettings["ConnectionString1"].ToString();
        }

        public DataSet BeGetMovies(ref string _Error)
        {
            #region Member Declaration
            DataSet objDS = new DataSet();
            SqlConnection objCon = null;
            SqlDataAdapter objDA = null;
            #endregion Member Declaration
            try
            {
                string tQuery = "Select RID as MovieID, Isnull(CASE WHEN LEN(isnull(Title,'')) > 20 THEN SUBSTRING(Title,0,16) + '...'  ELSE isnull(Title,'') END, '') as 'MovieName', Isnull(Summary,'') as MovieSummary, ISNULL(Actors,'') as MovieActors, Isnull(Rating,'') MovieRating, Isnull(Director,'') as MovieDirector, ISNULL(ImagePath,'') as ImagePath, Isnull(replace(convert(varchar,Modifieddate,106),' ','-'),'') as 'LastModifieddate',Isnull(cast(DATEPART(HOUR, MovieDuration) as nvarchar(5)),'') + 'h ' + Isnull(cast(DATEPART(MINUTE, MovieDuration) as nvarchar(5)),'') + 'M' as MovieDuration  from tblmovie with (nolock) where Status = 1";

                using (objCon = new SqlConnection(ImagineUpline.Global.ConnectionString))
                {
                    objDA = new SqlDataAdapter(tQuery, objCon);
                    objDA.Fill(objDS);
                    return objDS;
                }
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public string BeAddMovie(string movieDetails)
        {
            string tMovieName = "", tMovieDirector = "", tMovieActors = "", tMovieRating = "", tImagePath = "", tMovieSummary = "", tMovieDuration = "";
            XmlDocument objDoc = null;
            XmlNode objNode = null;
            SqlConnection objCon = null;
            SqlDataAdapter objDA = null;
            SqlCommandBuilder objCB = null;

            #region Retrive Data from XML
            try
            {
                objDoc = new XmlDocument();
                objDoc.LoadXml(movieDetails);

                objNode = objDoc.GetElementsByTagName("MovieName")[0];
                if (objNode != null)
                    tMovieName = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieDirector")[0];
                if (objNode != null)
                    tMovieDirector = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieActors")[0];
                if (objNode != null)
                    tMovieActors = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieRating")[0];
                if (objNode != null)
                    tMovieRating = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieImageName")[0];
                if (objNode != null)
                    tImagePath = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieSummary")[0];
                if (objNode != null)
                    tMovieSummary = objNode.InnerText;

                objNode = objDoc.GetElementsByTagName("MovieDuration")[0];
                if (objNode != null)
                    tMovieDuration = objNode.InnerText;
            }
            catch (Exception ex)
            {
                return "-2: " + ex.Message + Environment.NewLine + ex.StackTrace;
            }
            #endregion Retrive Data from XML

            #region DataBase
            try
            {
                string tQuery = "SELECT Top 0 RID ,Title ,Director ,Actors ,Rating ,ImagePath ,Summary ,[Status], ModifiedDate, CreatedDate ,MovieDuration  FROM tblmovie   with (nolock)";
                using (objCon = new SqlConnection(ImagineUpline.Global.ConnectionString))
                {
                    objDA = new SqlDataAdapter(tQuery, objCon);
                    objCB = new SqlCommandBuilder(objDA);

                    objCB.GetUpdateCommand();
                    using (DataSet objDS = new DataSet())
                    {
                        objDA.Fill(objDS);
                        DataRow dr = objDS.Tables[0].NewRow();
                        dr["Title"] = tMovieName;
                        dr["Director"] = tMovieDirector;
                        dr["Actors"] = tMovieActors;
                        dr["Rating"] = tMovieRating;
                        dr["ImagePath"] = tImagePath;
                        dr["Summary"] = tMovieSummary;
                        dr["Status"] = 1;
                        dr["CreatedDate"] = DateTime.Now.ToString();
                        dr["ModifiedDate"] = DateTime.Now.ToString();
                        dr["MovieDuration"] = tMovieDuration;

                        objDS.Tables[0].Rows.Add(dr);
                        objDA.Update(objDS);
                    }
                }
                return "1";
            }
            catch (Exception ex)
            {
                return "-4: " + ex.Message + Environment.NewLine + ex.StackTrace;
            }
            #endregion DataBase
        }
    }
}
