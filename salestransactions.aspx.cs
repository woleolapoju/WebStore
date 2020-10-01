using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class salestransactions : System.Web.UI.Page
{
    public int newOrderNo = 0;
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

            BindStockGrid();
            BindCustomerGrid();

            fetchCashAthand();
            fetchFinancialsummary();

            newOrderNo = Convert.ToInt16(Request.QueryString["orderno"].ToString());

            if (!IsPostBack)
            {

                lblproductname.InnerText = "";
                lblPriceRange.Text = "";
                txtSellPrice.Text = "0";
                txtAbsMin.Text = "0.0";
                txtMin.Text = "0.0";
                txtMax.Text = "0.0";
                totalPrice.Text = "0.0";
                totalQty.Text = "0";
                lblbasket.Text = "0 (0)";
                txtunitinstore.Text = "0";

                BindGrid(Request.QueryString["orderno"].ToString());
            //    BindGrid_Duplicate(Request.QueryString["orderno"].ToString());

                //  divGrid.Style.Add("Display","none");

            }
            else
            {
                lblbasket.Text = totalPrice.Text + " (" + totalQty.Text + ")";
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

    private void BindGrid(string dorderno)
    {
        DataTable dt = new DataTable();
        string query = "SELECT '('+ProductCode+')- (' +Category+') ' + ProductName AS ProductDesc, Qty, Format(SellPrice,'N') AS SellPrice FROM wsSales where OrderNo=" + dorderno;
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

        gvCart.DataSource = dt;
        gvCart.DataBind();
    }

    //private void BindGrid_Duplicate(string dorderno)
    //{
    //    DataTable dt1 = new DataTable();
    //    string query = "SELECT '('+ProductCode+')- (' +Category+') ' + ProductName AS ProductDesc, Qty, Format(SellPrice,'N') AS SellPrice FROM wsSales where OrderNo=" + dorderno;
    //    string constr = Session["Cnn"].ToString();
    //    using (SqlConnection con = new SqlConnection(constr))
    //    {
    //        using (SqlCommand cmd = new SqlCommand(query))
    //        {
    //            cmd.Connection = con;
    //            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
    //            {
    //                sda.SelectCommand = cmd;
    //                sda.Fill(dt1);
    //            }
    //        }
    //    }

    //    if (dt1.Rows.Count == 0)
    //    {
    //        //If no records then add a dummy row.
    //        dt1.Rows.Add();
    //    }

    //    givcart_duplicate.DataSource = dt1;
    //    givcart_duplicate.DataBind();
    //}

    private void BindStockGrid()
    {
        DataTable dt = new DataTable();
        string query = "SELECT ProductCode, ProductName, Category,  CostPrice, Pack, AbsMinSellPrice, MinSellprice, MaxSellPrice, UnitInStore FROM wsStoreItems WHERE Discontinue=0 AND UnitInStore>0";
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

        gvList.DataSource = dt;
        gvList.DataBind();
    }


    private void BindCustomerGrid()
    {
        DataTable dt = new DataTable();
        string query = "SELECT DISTINCT CustomerPhone, CustomerName FROM wsSales WHERE (CustomerPhone <> '') AND (NOT (CustomerPhone IS NULL))";
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

        gvCustomer.DataSource = dt;
        gvCustomer.DataBind();
    }

    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        string dCnStr = Session["Cnn"].ToString();
        SqlConnection cnSQL = new SqlConnection(dCnStr);
        SqlCommand cmSQL = cnSQL.CreateCommand();

        SqlTransaction myTrans = null;

        try
        {

            cnSQL.Open();

            //HttpContext.Current.Response.Write("<script language=javascript>alert('SA12bbbbb!!!!!');</script>");


            myTrans = cnSQL.BeginTransaction();
            cmSQL.Transaction = myTrans;

            cmSQL.Parameters.Clear();
            cmSQL.CommandText = "wsRefundSalesQty";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@OrderNo", newOrderNo);

            //cmSQL.Parameters.AddWithValue("@ProductCode", productcode);
            //cmSQL.Parameters.AddWithValue("@Qty", qtyD[i].ToString());
            cmSQL.ExecuteNonQuery();


            cmSQL.Parameters.Clear();
            cmSQL.CommandText = "wsDeleteSales";
            cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
            cmSQL.Parameters.AddWithValue("@OrderNo", newOrderNo);
            cmSQL.ExecuteNonQuery();


            //for (int i = 0; i < gvCart.Rows.Count; i++)
            //{

            //    String cellText = string.Empty;

            //    cellText = ((TextBox)gvCart.Rows[i].FindControl("txtProductDesc")).Text.Trim();
            //}


            //foreach (GridViewRow row in gvCart.Rows)
            //{
            //    for (int i = 0; i < gvCart.Columns.Count; i++)
            //    {
            //        // String header = gvCart.Columns[i].HeaderText;
            //        String cellText = Convert.ToString(row.Cells[i].Text); // row.Cells[i].Text;
            //        Convert.ToString(row.Cells[i].Text);
            //    }
            //}




            //if (!string.IsNullOrEmpty(Request.Form["Product"]) && !string.IsNullOrEmpty(Request.Form["qty"]) && !string.IsNullOrEmpty(Request.Form["Price"]))
            //{

            ////Fetch the Hidden Field values from the Request.Form collection.
            //string[] Product = Request.Form["Product"].Split(',');
            //string[] qty = Request.Form["qty"].Split(',');
            //string[] Price = Request.Form["Price"].Split(',');
            //string productcode = "";


            for (int i = 0; i < gvCart.Rows.Count; i++)
            {

                String cellProductDesc = string.Empty;
                String  cellQty = string.Empty;

                String  cellPrice = string.Empty;

                //    for (int i = 0; i < Product.Length; i++)

                cellProductDesc = ((TextBox)gvCart.Rows[i].FindControl("txtGProductDesc")).Text.Trim();
                cellQty = ((TextBox)gvCart.Rows[i].FindControl("txtGQty")).Text.Trim();

                cellPrice = ((TextBox)gvCart.Rows[i].FindControl("txtGPrice")).Text.Trim();

                string productcode = Mid(GetIt4Me(cellProductDesc, ")-"), 1, -1);
                    cmSQL.Parameters.Clear();
                    cmSQL.CommandText = "wsInsertSales";
                    cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                    cmSQL.Parameters.AddWithValue("@OrderNo", newOrderNo);
                    cmSQL.Parameters.AddWithValue("@Sn", i + 1);
                    cmSQL.Parameters.AddWithValue("@ProductCode", productcode);
                    //cmSQL.Parameters.AddWithValue("@ProductName", productname);
                    cmSQL.Parameters.AddWithValue("@Qty", cellQty.ToString());
                    cmSQL.Parameters.AddWithValue("@SellPrice", cellPrice.ToString());
                    cmSQL.Parameters.AddWithValue("@Username", Session["UserName"].ToString());
                    cmSQL.Parameters.AddWithValue("@CustomerPhone", txtCustomerPhone.Text);
                    cmSQL.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
                    cmSQL.Parameters.AddWithValue("@Cash", txtCash.Text);
                    cmSQL.Parameters.AddWithValue("@POS", txtPOS.Text);
                    cmSQL.Parameters.AddWithValue("@Transfer", txtTransfer.Text);
                    cmSQL.Parameters.AddWithValue("@Credit", txtCredit.Text);
                    cmSQL.ExecuteNonQuery();

            }

            

            myTrans.Commit();

                cmSQL.Dispose();
                cnSQL.Close();


            HttpContext.Current.Response.Redirect("dashboard.aspx");

            // Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'


        }

        catch (Exception ex)
        {
            //myTrans.Rollback();
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
        finally
        {
            HttpContext.Current.Response.Redirect("dashboard.aspx");
        }
    }

    protected void cmdSubmit_Click_Old(object sender, EventArgs e)
    {

        
        HttpContext.Current.Response.Write("<script language=javascript>alert('SA12bbbbb!!!!!');</script>");

        string dCnStr = Session["Cnn"].ToString();
        SqlConnection cnSQL = new SqlConnection(dCnStr);
        SqlCommand cmSQL = cnSQL.CreateCommand();

        SqlTransaction myTrans = null;

        //try
        //{

        if (!string.IsNullOrEmpty(Request.Form["Product"]) && !string.IsNullOrEmpty(Request.Form["qty"]))
        {

            Response.Redirect("default.aspx");

            //Fetch the Hidden Field values from the Request.Form collection.
            string[] ProductD = Request.Form["ProductD"].Split(',');
            string[] qtyD = Request.Form["qtyD"].Split(',');


            string productcode = "";
            //string productname = "";

            cnSQL.Open();

            HttpContext.Current.Response.Write("<script language=javascript>alert('SA12bbbbb!!!!!');</script>");


            myTrans = cnSQL.BeginTransaction();
            cmSQL.Transaction = myTrans;


            for (int i = 0; i < ProductD.Length; i++)
            {

                productcode = Mid(GetIt4Me(ProductD[i], ")-"), 1, -1);
                HttpContext.Current.Response.Write("<script language=javascript>alert('" + productcode + "');</script>");

                cmSQL.Parameters.Clear();
                cmSQL.CommandText = "wsRefundSalesQty";
                cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                cmSQL.Parameters.AddWithValue("@ProductCode", productcode);
                cmSQL.Parameters.AddWithValue("@Qty", qtyD[i].ToString());
                cmSQL.ExecuteNonQuery();

            }


            if (!string.IsNullOrEmpty(Request.Form["Product"]) && !string.IsNullOrEmpty(Request.Form["qty"]) && !string.IsNullOrEmpty(Request.Form["Price"]))
            {

                //Fetch the Hidden Field values from the Request.Form collection.
                string[] Product = Request.Form["Product"].Split(',');
                string[] qty = Request.Form["qty"].Split(',');
                string[] Price = Request.Form["Price"].Split(',');


                for (int i = 0; i < Product.Length; i++)
                {

                    productcode = Mid(GetIt4Me(Product[i], ")-"), 1, -1);
                    cmSQL.Parameters.Clear();
                    cmSQL.CommandText = "wsInsertSales";
                    cmSQL.CommandType = System.Data.CommandType.StoredProcedure;
                    cmSQL.Parameters.AddWithValue("@OrderNo", newOrderNo);
                    cmSQL.Parameters.AddWithValue("@Sn", i + 1);
                    cmSQL.Parameters.AddWithValue("@ProductCode", productcode);
                    //cmSQL.Parameters.AddWithValue("@ProductName", productname);
                    cmSQL.Parameters.AddWithValue("@Qty", qty[i].ToString());
                    cmSQL.Parameters.AddWithValue("@SellPrice", Price[i].ToString());
                    cmSQL.Parameters.AddWithValue("@Username", Session["UserName"].ToString());
                    cmSQL.Parameters.AddWithValue("@CustomerPhone", txtCustomerPhone.Text);
                    cmSQL.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
                    cmSQL.Parameters.AddWithValue("@Cash", txtCash.Text);
                    cmSQL.Parameters.AddWithValue("@POS", txtPOS.Text);
                    cmSQL.Parameters.AddWithValue("@Transfer", txtTransfer.Text);
                    cmSQL.Parameters.AddWithValue("@Credit", txtCredit.Text);
                    cmSQL.ExecuteNonQuery();

                }
            }

            myTrans.Commit();

            cmSQL.Dispose();
            cnSQL.Close();

        }

        //  Response.Redirect("dashboard.aspx", true);

        Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'

        //userid.Value = "";
        //username.Value = "";


        //     txtproductcode.Text = "";
        // lblproductname.InnerText = "";
        // lblPriceRange.Text = "";
        // txtSellPrice.Text = "0";
        // txtAbsMin.Text = "0.0";
        // txtMin.Text = "0.0";
        // txtMax.Text = "0.0";
        // totalPrice.Text = "0.0";
        // totalQty.Text = "0";
        // lblbasket.Text = "0 (0)";
        // txtunitinstore.Text = "0";
        // txtCash.Text = "0.0";
        // txtPOS.Text = "0.0";
        // txtTransfer.Text = "0.0";
        // txtCredit.Text = "0.0";
        // txtCustomerPhone.Text = "";
        // txtCustomerName.Text = "";


        // this.BindGrid(Request.QueryString["orderno"].ToString());

        // divGrid.Style.Add("Display", "none");

        // lblbasket.Text = "0 (0)";
        //// divProductDetails.Style.Add("Display", "none");

        // fetchCashAthand();
        // fetchFinancialsummary();

    }

    //catch (Exception ex)
    //{
    //    //myTrans.Rollback();
    //    HttpContext.Current.Session["exception"] = ex.Message;
    //    HttpContext.Current.Response.Redirect("Error.aspx");
    //}

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

public static string Mid(string param, int startIndex, int length)
{
    string result;
    if (length == -1)
    {
        result = param.Substring(startIndex);
    }
    else
    {
        result = param.Substring(startIndex, length);
    }
    return result;
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

        cmSQL.CommandText = "wsFetchTransactionSummaryForToday"; //"wsFetchTransactionSummary";
        cmSQL.CommandType = System.Data.CommandType.StoredProcedure;


        //cmSQL.Parameters.AddWithValue("@StartDate", DateTime.Now.ToString("yyyy/MMM/dd"));
        //cmSQL.Parameters.AddWithValue("@Enddate", DateTime.Now.ToString("yyyy/MMM/dd"));

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

}