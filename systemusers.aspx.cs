using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class systemusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
            {
                Response.Redirect("Default.aspx", true);
            }

            if (Session["AccessLevel"].ToString().Contains("Admin") != true)
                 Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'

            lblsystemsuser.Text = Session["UserName"].ToString();
            lblAccessLevel.Text = Session["AccessLevel"].ToString();

        }
        catch (Exception ex)
        {

            // HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
            Session["exception"] = ex.Message;
            //"Object reference" not set to an instance of an object"
            if (ex.Message.StartsWith("Object reference") == true || ex.Message.StartsWith("Thread was being aborted") == true)
                Response.Redirect("Default.aspx");
            else
                Response.Redirect("Error.aspx");
        }

    }

    protected void cmdsave_Click(object sender, EventArgs e)
    {
        try
        {

            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
            {
                Response.Redirect("Default.aspx", true);
            }

            string dAccessLevel = "";
           
            if  (chkSales.Checked) dAccessLevel = "Sales";
            if (chkRestock.Checked)
            {
                if (dAccessLevel !="")
                    dAccessLevel = dAccessLevel + ","+ "Restock";
                else
                    dAccessLevel = "Restock";
            }
            if (chkAudit.Checked)
            {
                if (dAccessLevel != "")
                    dAccessLevel = dAccessLevel + "," + "Audit";
                else
                    dAccessLevel = "Audit";
            }

            if (chkAdmin.Checked) dAccessLevel = "Admin";

            if (dAccessLevel=="")
            {
                HttpContext.Current.Response.Write("<script language=javascript>alert('Pls select at least an access level');</script>");
                return;
            }

            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();

            cnSQL.Open();
            cmSQL.CommandText = "wsInsertUserAccess";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@UserID", userid.Value);
            cmSQL.Parameters.AddWithValue("@UserName", username.Value);
            cmSQL.Parameters.AddWithValue("@UserPassword", pwd.Value);
            cmSQL.Parameters.AddWithValue("@AccessLevel", dAccessLevel);
            cmSQL.Parameters.AddWithValue("@Suspend", 0);

            cmSQL.ExecuteNonQuery();


            cmSQL.Dispose();
            cnSQL.Close();

            HttpContext.Current.Response.Write("<script language=javascript>alert('SAVED!!!!!');</script>");
            userid.Value = "";
            username.Value = "";

        }
        catch (Exception ex)
        {

            HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
        }
    }
}