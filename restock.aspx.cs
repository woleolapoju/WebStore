using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Restock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserID"].ToString() == null || Session["UserID"].ToString() == "")
                Response.Redirect("Default.aspx", true);

            if (Session["AccessLevel"].ToString().Contains("Admin") != true && Session["AccessLevel"].ToString().Contains("Restock") != true)
                Response.Redirect(Request.UrlReferrer.ToString()); // go back to where you are coming from'

            lblsystemsuser.Text = Session["UserName"].ToString();
            lblAccessLevel.Text = Session["AccessLevel"].ToString();

            if (!IsPostBack)
            {
                lblTotalValue.Text = "0.0";
                loadcategory();
                // Enable the GridView paging option and  
                // specify the page size. 
                gvItems.AllowPaging = true;
                gvItems.PageSize = 15;


                // Enable the GridView sorting option. 
                gvItems.AllowSorting = true;


                // Initialize the sorting expression. 
                ViewState["SortExpression"] = "ProductCode ASC";


                // Populate the GridView. 
                BindGridView(cboCategory.Text);

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
    private void loadcategory()
    {
        try
        {
            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);

            cboCategory.Items.Clear();
         

            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
            cmSQL.CommandText = "SELECT DISTINCT Category FROM wsCategory";
            cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();

            while (drSQL.Read())
            {
                cboCategory.Items.Add(drSQL["Category"].ToString());
            }
            cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();

            cboCategory.Items.Add("(ALL)");

        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }

    private void BindGridView(string dCategory)
    {
        try {

            using (SqlConnection conn = new SqlConnection(Session["Cnn"].ToString()))
            {
                // Create a DataSet object. 
                DataSet dsPerson = new DataSet();
                string strSelectCmd = "";

                // Create a SELECT query. 
                //string strSelectCmd = "SELECT PersonID,LastName,FirstName FROM Person";
                if (dCategory == "(ALL)")
                    strSelectCmd = "SELECT ProductCode, ProductName, Category,AbsMinSellPrice, MinSellprice, MaxSellPrice, UnitInStore FROM wsStoreItems WHERE Discontinue=0 ORDER BY Category";
                else
                    strSelectCmd = "SELECT ProductCode, ProductName, Category,AbsMinSellPrice, MinSellprice, MaxSellPrice, UnitInStore FROM wsStoreItems WHERE Discontinue=0  AND Category='" + dCategory + "'";

                // Create a SqlDataAdapter object 
                // SqlDataAdapter represents a set of data commands and a  
                // database connection that are used to fill the DataSet and  
                // update a SQL Server database.  
                SqlDataAdapter da = new SqlDataAdapter(strSelectCmd, conn);



                // Open the connection 
                conn.Open();


                // Fill the DataTable named "Person" in DataSet with the rows 
                // returned by the query.new n 
                da.Fill(dsPerson, "wsStoreItems");


                // Get the DataView from Person DataTable. 
                DataView dvPerson = dsPerson.Tables["wsStoreItems"].DefaultView;


                // Set the sort column and sort order. 
                dvPerson.Sort = ViewState["SortExpression"].ToString();


                // Bind the GridView control. 
                gvItems.DataSource = dvPerson;
                gvItems.DataBind();

            }
                findStockValue(dCategory);

        }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }


    // GridView.RowDataBound Event 
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
        BindGridView(cboCategory.Text);
    }


    // GridView.RowEditing Event 
    protected void gvItems_RowEditing(object sender, GridViewEditEventArgs e)
    {
        // Make the GridView control into edit mode  
        // for the selected row.  
        gvItems.EditIndex = e.NewEditIndex;


        // Rebind the GridView control to show data in edit mode. 
        BindGridView(cboCategory.Text);


        // Hide the Add button. 
        lbtnAdd.Visible = false;
    }


    // GridView.RowCancelingEdit Event 
    protected void gvItems_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        // Exit edit mode. 
        gvItems.EditIndex = -1;


        // Rebind the GridView control to show data in view mode. 
        BindGridView(cboCategory.Text);


        // Show the Add button. 
        lbtnAdd.Visible = true;
    }


    // GridView.RowUpdating Event 
    protected void gvItems_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            using (SqlConnection conn = new SqlConnection(Session["Cnn"].ToString()))
            {
                // Create a command object. 
                SqlCommand cmd = new SqlCommand();


                // Assign the connection to the command. 
                cmd.Connection = conn;


                // Set the command text 
                // SQL statement or the name of the stored procedure  
                cmd.CommandText = "UPDATE wsStoreItems SET UnitInStore = UnitInStore + @UnitInStore WHERE ProductCode = @ProductCode";


                // Set the command type 
                // CommandType.Text for ordinary SQL statements;  
                // CommandType.StoredProcedure for stored procedures. 
                cmd.CommandType = CommandType.Text;


                // Get the PersonID of the selected row. 
                string strProductCode = gvItems.Rows[e.RowIndex].Cells[1].Text;
                string UnitInStore = ((TextBox)gvItems.Rows[e.RowIndex].FindControl("txtnewStock")).Text;
                string strProductName = ((Label)gvItems.Rows[e.RowIndex].FindControl("lblProductname")).Text;
               
          
                // Append the parameters. 
                cmd.Parameters.Add("@ProductCode", SqlDbType.NVarChar, 50).Value = strProductCode;
                cmd.Parameters.Add("@UnitInStore", SqlDbType.Int).Value = Convert.ToInt16(UnitInStore);

         

                // Open the connection. 
                conn.Open();
                // Execute the command. 
                cmd.ExecuteNonQuery();
                

                cmd.Parameters.Clear();
                cmd.CommandText = "wsInsertRestock";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ProductCode", strProductCode);
                cmd.Parameters.AddWithValue("@ProductName", strProductName);
                cmd.Parameters.AddWithValue("@Qty", UnitInStore);
                cmd.Parameters.AddWithValue("@Username", Session["UserName"].ToString());
                cmd.ExecuteNonQuery();

                


            }


            // Exit edit mode. 
            gvItems.EditIndex = -1;


            // Rebind the GridView control to show data after updating. 
            BindGridView(cboCategory.Text);


            // Show the Add button. 
            lbtnAdd.Visible = true;
    }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");

        }
    }

    // GridView.RowDeleting Event 
    protected void gvItems_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(Session["Cnn"].ToString()))
        {
            // Create a command object. 
            SqlCommand cmd = new SqlCommand();


            // Assign the connection to the command. 
            cmd.Connection = conn;


            // Set the command text 
            // SQL statement or the name of the stored procedure  
            cmd.CommandText = "DELETE FROM Person WHERE PersonID = @PersonID";


            // Set the command type 
            // CommandType.Text for ordinary SQL statements;  
            // CommandType.StoredProcedure for stored procedures. 
            cmd.CommandType = CommandType.Text;


            // Get the PersonID of the selected row. 
            string strPersonID = gvItems.Rows[e.RowIndex].Cells[2].Text;


            // Append the parameter. 
            cmd.Parameters.Add("@PersonID", SqlDbType.Int).Value = strPersonID;


            // Open the connection. 
            conn.Open();


            // Execute the command. 
            cmd.ExecuteNonQuery();
        }


        // Rebind the GridView control to show data after deleting. 
        BindGridView(cboCategory.Text);
    }


    // GridView.Sorting Event 
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
        BindGridView(cboCategory.Text);
    }

    protected void lbtnAdd_Click(object sender, EventArgs e)
    {
        // Hide the Add button and showing Add panel. 
        lbtnAdd.Visible = false;
        pnlAdd.Visible = true;
    }


    protected void lbtnSubmit_Click(object sender, EventArgs e)
    {

        try {

            SqlConnection conn = new SqlConnection(Session["Cnn"].ToString());

            // Create a command object. 
            SqlCommand cmd = new SqlCommand();


            // Assign the connection to the command. 
            cmd.Connection = conn;


            // Set the command text 
            // SQL statement or the name of the stored procedure  

            cmd.CommandText = "wsInsertStoreItems";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ProductCode", tbProductCode.Text);
            cmd.Parameters.AddWithValue("@ProductName", tbProductName.Text);
            cmd.Parameters.AddWithValue("@Category", cboCategory.Text);
            cmd.Parameters.AddWithValue("@ReorderLevel", 0);
            cmd.Parameters.AddWithValue("@MaxQty", 0);
            cmd.Parameters.AddWithValue("@CostPrice", 0);
            cmd.Parameters.AddWithValue("@Discontinue", 0);
            cmd.Parameters.AddWithValue("@Pack", "Unit");
            cmd.Parameters.AddWithValue("@Remark", "");
            cmd.Parameters.AddWithValue("@ShelfLocation", "");
            cmd.Parameters.AddWithValue("@AbsMinSellPrice", tbAbs.Text);
            cmd.Parameters.AddWithValue("@MinSellprice", tbMin.Text);
            cmd.Parameters.AddWithValue("@MaxSellPrice", tbMax.Text);
            cmd.Parameters.AddWithValue("@UnitInStore", tbQty.Text);


            // Open the connection. 
            conn.Open();


            // Execute the command. 
            cmd.ExecuteNonQuery();





        // Rebind the GridView control to show inserted data. 
        BindGridView(cboCategory.Text);


        // Empty the TextBox controls. 
        tbProductCode.Text = "";
        tbProductName.Text = "";
        tbAbs.Text = "0";
        tbMin.Text = "0";
        tbMax.Text = "0";
        tbQty.Text = "0";

        // Show the Add button and hiding the Add panel. 
        lbtnAdd.Visible = true;
        pnlAdd.Visible = false;
            }

             catch (Exception ex)
        {
           // HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
          Response.Write("<script language=javascript>alert('Item Code already exist');</script>");
        }
    }




protected void lbtnCancel_Click(object sender, EventArgs e)
    {
        // Empty the TextBox controls. 
        tbProductCode.Text = "";
        tbProductName.Text = "";
        tbAbs.Text = "0";
        tbMin.Text = "0";
        tbMax.Text = "0";
        tbQty.Text = "0";


        // Show the Add button and hiding the Add panel. 
        lbtnAdd.Visible = true;
        pnlAdd.Visible = false;
    }


    protected void cboCategory_SelectedIndexChanged(object sender, EventArgs e)

    {
        //Response.Write("<script language=javascript>alert('Login details not entered!');</script>");
        BindGridView(cboCategory.Text);
    }


    protected void cmdNewCategory_Click(object sender, EventArgs e)
    {
        {
            string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);
            SqlCommand cmSQL = cnSQL.CreateCommand();

            try
            {

                if (txtNewCategory.Text == "")
                {
                    HttpContext.Current.Response.Write("<script language=javascript>alert('Pls enter category');</script>");
                    return;
                }
                cnSQL.Open();

                cmSQL.Parameters.Clear();
                cmSQL.CommandText = "INSERT INTO wsCategory (Category) VALUES ('" + txtNewCategory.Text + "')";
                cmSQL.CommandType = System.Data.CommandType.Text;
                cmSQL.ExecuteNonQuery();


                cmSQL.Dispose();
                cnSQL.Close();

                txtNewCategory.Text = "";
                loadcategory();

            }


            catch (Exception ex)
            {
                HttpContext.Current.Response.Write("<script language=javascript>alert('" + ex.Message + "');</script>");
            }
        }
    }

     private void findStockValue(string dCategory)
    {
        try
        {

           

           string dCnStr = Session["Cnn"].ToString();
            SqlConnection cnSQL = new SqlConnection(dCnStr);

            SqlCommand cmSQL = cnSQL.CreateCommand();
            SqlDataReader drSQL = null;
            string strSelectCmd = "";
            if (dCategory == "(ALL)")
                strSelectCmd = "SELECT isnull(SUM(UnitInStore*MinSellprice),0) AS Totalvalue FROM wsStoreItems WHERE Discontinue=0";
            else
                strSelectCmd = "SELECT isnull(SUM(UnitInStore*MinSellprice),0) AS Totalvalue FROM wsStoreItems WHERE Discontinue=0  AND Category='" + dCategory + "'";

      
        cmSQL.CommandText = strSelectCmd;
        cmSQL.CommandType = System.Data.CommandType.Text;
            cnSQL.Open();
            drSQL = cmSQL.ExecuteReader();



        if (drSQL.HasRows)
        {
            if (drSQL.Read())
            {

                lblTotalValue.Text = Convert.ToDouble(drSQL["Totalvalue"]).ToString("N2");

            }
        }
        else
        {
            lblTotalValue.Text = "0.0";
        }



        cmSQL.Connection.Close();
            cmSQL.Dispose();
            cnSQL.Close();
            cnSQL.Dispose();


    }
        catch (Exception ex)
        {
            HttpContext.Current.Session["exception"] = ex.Message;
            HttpContext.Current.Response.Redirect("Error.aspx");
        }
    }

}
