using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class bankandexpense : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
            {
                Response.Redirect("Default.aspx", true);
            }

            if (Session["AccessLevel"].ToString().Contains("Admin") != true && Session["AccessLevel"].ToString().Contains("Sales") != true)
                Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'

            lblsystemsuser.Text = Session["UserName"].ToString();
            lblAccessLevel.Text = Session["AccessLevel"].ToString();

            fetchCashAthand();


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

    private void fetchCashAthand()
    {
        try
        {


            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);

            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;

            lblCashAtHand.Text = "0.0";
            cmSQL.CommandText = "SELECT SUM(Cash) as Cash,SUM(POS) AS POS, SUM(Transfer) AS Transfer, SUM(Credit) AS Credit,SUM(CashDeposit) AS CashDeposit,SUM(Expense) AS Expense FROM wsViewTransactions";

            cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();



            if (drSQL.HasRows)
            {
                if (drSQL.Read())
                {

                    lblCashAtHand.Text = (Convert.ToDouble(drSQL["Cash"])- Convert.ToDouble(drSQL["CashDeposit"]) - Convert.ToDouble(drSQL["Expense"])).ToString("N2");

                }
            }
           


            txtcashathand.Text = lblCashAtHand.Text;

            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();


        }
        catch { }
        //catch (Exception ex)
        //{
        //    HttpContext.Current.Session["exception"] = ex.Message;
        //    HttpContext.Current.Response.Redirect("Error.aspx");
        //}
    }


    protected void cmdSaveToBank_Click(object sender, EventArgs e)
    {
        string dCnStr = Session["Cnn"].ToString();
        SqlConnection cnSQL = new SqlConnection(dCnStr);
        SqlCommand cmSQL = cnSQL.CreateCommand();

  
        try
        {
         
          
            cnSQL.Open();

            cmSQL.Parameters.Clear();
            cmSQL.CommandText = "wsInsertBankTrans";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@Username", Session["UserName"].ToString());
            cmSQL.Parameters.AddWithValue("@Amount", txtamttobank.Text);
            cmSQL.Parameters.AddWithValue("@BankName", "DefaultBank");
            
            cmSQL.ExecuteNonQuery();

            cmSQL.Dispose();
            cnSQL.Close();

            //HttpContext.Current.Response.Write("<script language=javascript>alert('SAVED!!!!!');</script>");


            txtamttobank.Text = "";

            fetchCashAthand();

        }

        catch (Exception ex)
        {

            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }

    protected void cmdSaveExpense_Click(object sender, EventArgs e)
    {
        string dCnStr = Session["Cnn"].ToString();
        SqlConnection cnSQL = new SqlConnection(dCnStr);
        SqlCommand cmSQL = cnSQL.CreateCommand();


        try
        {


            cnSQL.Open();

            cmSQL.Parameters.Clear();
            cmSQL.CommandText = "wsInsertExpenditure";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@Username", Session["UserName"].ToString());
            cmSQL.Parameters.AddWithValue("@Amount",txtAmtExpense.Text);
            cmSQL.Parameters.AddWithValue("@details", txtDetails.Text);

            cmSQL.ExecuteNonQuery();

            cmSQL.Dispose();
            cnSQL.Close();

            //HttpContext.Current.Response.Write("<script language=javascript>alert('SAVED!!!!!');</script>");


            txtAmtExpense.Text = "";
            txtDetails.Text = "";

            fetchCashAthand();

        }

        catch (Exception ex)
        {

            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }
}