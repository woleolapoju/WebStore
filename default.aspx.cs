using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public static string dUserName = "";
    public static string dAccessLevel = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserName"] = "";
        Session["UserID"] = "";
        Session["Pwd"] = "";
        Session["Category"] = "";
        Session["Cnn"] = "";
        Session["exception"] = "";
        Session["AccessLevel"] = "";
        Session["Owner"] = "NIFTOM BOUTIQUE";
        Session["Cnn"] = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;

        lblowner.Text = Session["Owner"].ToString();
    }

    private static Boolean AuthenticateUser(string dUserID, string dPwd, string dCnStr)
    {
        {
            Boolean tempAuthenticateUser = false;

            try
            {

         if (dUserID == null || dPwd == null)
                {

                    //Response.Write("<script language=javascript>alert('Login details not entered!');</script>");


                }



                SqlConnection cnSQL = new SqlConnection(dCnStr);
                SqlCommand cmSQL = new SqlCommand("dFetchUserAccessByPwd", cnSQL);
                SqlDataReader drSQL;

                int i = 0;
                cnSQL.Open();
                cmSQL.CommandText = "wsFetchUserAccessByPwd";
                cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cmSQL.Parameters.AddWithValue("@UserID", dUserID);
                cmSQL.Parameters.AddWithValue("@UserPwd", dPwd);

                drSQL = cmSQL.ExecuteReader();

                if (drSQL.HasRows == false)
                {
                    i = 1;
                }
                else
                {
                    if (drSQL.Read())
                    {
                        dUserName = drSQL["Username"].ToString();
                        dAccessLevel = drSQL["AccessLevel"].ToString();
                        i = 10;
                    }
                }
                cmSQL.Dispose();
                drSQL.Close();
                cnSQL.Close();



                if (i == 1)
                {
                    tempAuthenticateUser = false;
                }

                if (i == 10)
                {
                    tempAuthenticateUser = true;
                }

                return tempAuthenticateUser;

            }

            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");


                HttpContext.Current.Session["exception"] = ex.Message;
                HttpContext.Current.Response.Redirect("Error.aspx");

                return false;

            }
        }
    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {

        if (AuthenticateUser(userID.Value, userPwd.Value, Session["Cnn"].ToString()) == true)
        {
            Session["UserName"] = dUserName;
            Session["UserID"] = userID.Value;
            Session["Pwd"] = userPwd.Value;
            Session["AccessLevel"] = dAccessLevel;

            //  Response.Write("<script language=javascript>alert('Welcome!');</script>");

       
            if (dAccessLevel.Contains("Admin") == true)
                Response.Redirect("dashboard.aspx", true);
            if (dAccessLevel.Contains("Restock") == true)
                Response.Redirect("restock.aspx", true);
            //Response.Redirect("sales.aspx", true);
            if (dAccessLevel.Contains("Sales") == true)
                Response.Redirect("sales.aspx", true);
            if (dAccessLevel.Contains("Audit") == true)
                Response.Redirect("dashboard.aspx", true);
        }
        else
        {
            Session["UserName"] = "";
            Session["UserID"] = "";
            Session["Pwd"] = "";
            Session["AccessLevel"] = "";
            //HttpContext.Current.Response.Write("<script language=javascript>alert('Invalid User Login Information!');</script>");

        }

    }

}