using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
                Response.Redirect("Default.aspx", true);

            if (Session["AccessLevel"].ToString().Contains("Admin") != true && Session["AccessLevel"].ToString().Contains("Audit") != true )
                Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'

            lblsystemsuser.Text = Session["UserName"].ToString();
            lblAccessLevel.Text = Session["AccessLevel"].ToString();

            if (!IsPostBack)
            {
                lblTotalValue.Text = "0.0";
              
                // Enable the GridView paging option and  
                // specify the page size. 
                gvItems.AllowPaging = true;
                gvItems.PageSize = 15;


                // Enable the GridView sorting option. 
                gvItems.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "OrderNo ASC";

                txtstart.Text = DateTime.Now.ToString("dd-MMM-yyyy");
                txtEnddate.Text = DateTime.Now.ToString("dd-MMM-yyyy");

                fetchCashAthand();
                fetchFinancialsummary();

                // Populate the GridView. 
                BindGrid();

            }
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

    protected void cmdload_Click(object sender, EventArgs e)
    {
        fetchCashAthand();
        fetchFinancialsummary();
        BindGrid();
    }

    protected void gvItems_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        // Make sure the current GridViewRow is a data row. 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // Make sure the current GridViewRow is either  
            // in the normal state or an alternate row. 
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                //// Add client-side confirmation when deleting. 
                //((LinkButton)e.Row.Cells[1].Controls[0]).Attributes["onclick"] = "if(!confirm('Are you certain you want to delete this person ?')) return false;";
            }
        }
    }


    // GridView.PageIndexChanging Event 
    protected void gvItems_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // Set the index of the new display page.  
        gvItems.PageIndex = e.NewPageIndex;


        // Rebind the GridView control to  
        // show data in the new page. 
        BindGrid();
    }
    protected void gvItems_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // Make the GridView control into edit mode  
        // for the selected row.  
        gvItems.EditIndex = e.NewEditIndex;


        // Rebind the GridView control to show data in edit mode. 
        BindGrid();


    }

    protected void gvItems_Sorting(object sender, GridViewSortEventArgs e)
    {
        string[] strSortExpression = ViewState["SortExpression"].ToString().Split(' ');


        // If the sorting column is the same as the previous one,  
        // then change the sort order. 
        if (strSortExpression[0] == e.SortExpression)
        {
            if (strSortExpression[1] == "ASC")
            {
                ViewState["SortExpression"] = e.SortExpression + " " + "DESC";
            }
            else
            {
                ViewState["SortExpression"] = e.SortExpression + " " + "ASC";
            }
        }
        // If sorting column is another column,   
        // then specify the sort order to "Ascending". 
        else
        {
            ViewState["SortExpression"] = e.SortExpression + " " + "ASC";
        }


        // Rebind the GridView control to show sorted data. 
        BindGrid();
    }

    private void BindGrid()
    {


        DataTable dt = new DataTable();


        string strQry = " CONVERT(datetime, FORMAT(TransDate, 'dd-MMM-yyyy')) >= CONVERT(datetime, FORMAT(CONVERT(datetime,'" + Convert.ToDateTime(txtstart.Text) + "'), 'dd-MMM-yyyy'))  AND CONVERT(datetime, FORMAT(TransDate, 'dd-MMM-yyyy')) <= CONVERT(datetime, FORMAT(CONVERT(datetime,'" + Convert.ToDateTime(txtEnddate.Text) + "'), 'dd-MMM-yyyy'))";


        // string query = "SELECT convert(varchar, TransDate, 105) AS [Date], CAST(OrderNo AS nvarchar(50)) + '-'+ CAST(Sn AS nvarchar(50)) AS OrderNo, ProductCode + ' -(' + Category + ')-' + ProductName AS [Product Desc], Qty, FORMAT(SellPrice,'N') AS SellPrice, FORMAT(Cash,'N') AS Cash, FORMAT(POS,'N') AS POS, FORMAT(Transfer,'N') AS Transfer, FORMAT(Credit,'N') AS Credit,Username FROM  wsSales "; // Where " + strQry;

        string query = "SELECT convert(varchar, TransDate, 105) AS [Date], CAST(OrderNo AS nvarchar(50)) + '-'+ CAST(Sn AS nvarchar(50)) AS OrderNo, ProductCode + ' -(' + Category + ')-' + ProductName AS [Product Desc], Qty, FORMAT(SellPrice,'N') AS SellPrice, FORMAT(Cash+POS+Transfer,'N') AS Paid, FORMAT(Credit,'N') AS Credit FROM  wsSales Where " + strQry + " ORDER BY TransDate,OrderNo,Sn DESC";

        HttpContext.Current.Response.Write("<script language=javascript>alert('" + query + "');</script>");


        string constr = Session["Cnn"].ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Connection = con;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
        }

        if (dt.Rows.Count == 0)
        {
            //If no records then add a dummy row.
            dt.Rows.Add();
        }

        gvItems.DataSource = dt;
        gvItems.DataBind();
    }
    private void fetchFinancialsummary()
    {
        try
        {



            txtvalueofsales.Text = "0.0";
            txttodaycash.Text = "0.0";
            txtPossummary.Text = "0.0";
            txtTransfersummary.Text = "0.0";
            txtCreditsummary.Text = "0.0";
            txttobanksummary.Text = "0.0";
            txtexpensessummary.Text = "0.0";

            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);

            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;

            cmSQL.CommandText = "wsFetchTransactionSummary";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;

            cmSQL.Parameters.AddWithValue("@StartDate", txtstart.Text);
            cmSQL.Parameters.AddWithValue("@Enddate", txtEnddate.Text);

            //cmSQL.Parameters.AddWithValue("@StartDate",Convert.ToDateTime(DateTime.Now.Day + "-" + DateTime.Now.Month +"-" + DateTime.Now.Year + " 00:00:00",));
            //cmSQL.Parameters.AddWithValue("@Enddate", Convert.ToDateTime(DateTime.Now.Day + "-" + DateTime.Now.Month + "-" + DateTime.Now.Year + " 23:59:00"));


            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();

          

            //2019 - 07 - 30 11:07:10.447

            if (drSQL.HasRows)
            {
                if (drSQL.Read())
                {

                    // lblvalueofsales.InnerText 
                    //lblcash.InnerText = Convert.ToDouble(drSQL["Cash"]).ToString("N2");
                    txtvalueofsales.Text = Convert.ToDouble(drSQL["SalesValue"]).ToString("N2");
                    txttodaycash.Text = Convert.ToDouble(drSQL["Cash"]).ToString("N2");
                    txtPossummary.Text = Convert.ToDouble(drSQL["pos"]).ToString("N2");
                    txtTransfersummary.Text = Convert.ToDouble(drSQL["Transfer"]).ToString("N2");
                    txtCreditsummary.Text = Convert.ToDouble(drSQL["Credit"]).ToString("N2");
                    txttobanksummary.Text = Convert.ToDouble(drSQL["CashDeposit"]).ToString("N2");
                    txtexpensessummary.Text = Convert.ToDouble(drSQL["Expense"]).ToString("N2");


                }
            }


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

    private void fetchCashAthand()
    {
        try
        {

            lblcash.InnerText = "0.0";

            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);

            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;

            cmSQL.CommandText = "SELECT SUM(Cash) as Cash,SUM(POS) AS POS, SUM(Transfer) AS Transfer, SUM(Credit) AS Credit,SUM(CashDeposit) AS CashDeposit,SUM(Expense) AS Expense FROM wsViewTransactions";
            cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();


            if (drSQL.HasRows)
            {
                if (drSQL.Read())
                {

                    lblcash.InnerText = (Convert.ToDouble(drSQL["Cash"]) - Convert.ToDouble(drSQL["CashDeposit"]) - Convert.ToDouble(drSQL["Expense"])).ToString("N2");

                }
            }


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

    protected void gvItems_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (Session["AccessLevel"].ToString().Contains("Admin") != true)
        {
             HttpContext.Current.Response.Write("<script language=javascript>alert('Access Denied');</script>");
            return;
        }

            GridViewRow row = gvItems.SelectedRow;

       // Response.Redirect("salestransactions.aspx");
         Response.Redirect("salestransactions.aspx?orderno=" + GetIt4Me(row.Cells[2].Text,"-"));

      
    }

    public static string GetIt4Me(string TheStr, string LocStr)
    {
        string tempGetIt4Me = null;
        try
        {
            tempGetIt4Me = "";
            if (string.IsNullOrEmpty(TheStr) || string.IsNullOrEmpty(LocStr))
            {
                return tempGetIt4Me;
            }
            tempGetIt4Me = TheStr;
            int TheLen = TheStr.IndexOf(LocStr) + 1; //InStr(Trim(TheStr), LocStr) -----REMOVING TRIM
            if (TheLen != 0) // Trim(Mid$(Trim(TheStr), 1, TheLen - 1))
            {
                tempGetIt4Me = TheStr.Substring(0, TheLen - 1);
            }
            return tempGetIt4Me;
        }
        catch
        {
            return "";
        }
    }


    protected void gvItems_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow row = gvItems.Rows[e.NewSelectedIndex];

        //// You can cancel the select operation by using the Cancel
        //// property. For this example, if the user selects a customer with 
        //// the ID "ANATR", the select operation is canceled and an error message
        //// is displayed.
        //if (row.Cells[1].Text == "ANATR")
        //{
        //    e.Cancel = true;
        //    MessageLabel.Text = "You cannot select " + row.Cells[2].Text + ".";
        //}
    }
}