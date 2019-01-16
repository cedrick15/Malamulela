using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSP
{
    public partial class ProjectPhase : System.Web.UI.Page
    {
        DataTable dtProjectPhase;
        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
            DateTime now = DateTime.Now;
            if (!IsPostBack)
            {
                this.ProjectID();

            }
            else
            {
                dtProjectPhase = (DataTable)Session["dt_ProjectPhase"];
            }
            
        }
        
        protected void ProjectID()
        {
            string stmt = "SELECT COUNT(*) FROM ProjectPhase";
            int count = 0;
            string ProjectNumber = "BLMM00";

            using (SqlConnection thisConnection = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                using (SqlCommand cmdCount = new SqlCommand(stmt, thisConnection))
                {
                    thisConnection.Open();
                    count = (int)cmdCount.ExecuteScalar();
                }
            }
            int PID = count + 1;
            txtProjectID.Text = ProjectNumber + PID.ToString();
            
        }
        protected void BindVillagesByWardNumber()
        {
            string str = "Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI";
            SqlConnection con = new SqlConnection(str);
            string com = "select Village from WardCommunity where WardNumber ='" + ddlWardNumber.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlProjectLocation.DataSource = dt;
            ddlProjectLocation.DataBind();
            ddlProjectLocation.DataTextField = "Village";
            ddlProjectLocation.DataValueField = "Village";
            ddlProjectLocation.DataBind();
            ddlProjectLocation.Items.Insert(0, new ListItem("Please Select...", ""));
        }
        protected void ddlWardNumber_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.BindVillagesByWardNumber();
        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();
                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = txtProjectID.Text;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = ddlKPA.SelectedValue;
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtBudget.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Capital Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = ddlKPA.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = "";
                commandProjectSDPIP.ExecuteNonQuery();

                if (dtProjectPhase == null)
                {
                    {
                        dtProjectPhase = new DataTable();
                        DataColumn dc1ProjectPhase = new DataColumn("PROJECT ID");
                        DataColumn dc2ProjectPhase = new DataColumn("WARD NUMBER");
                        DataColumn dc3ProjectPhase = new DataColumn("PROJECT NAME");
                        DataColumn dc4ProjectPhase = new DataColumn("PROJECT LOCATION (VILLAGE)");
                        DataColumn dc5ProjectPhase = new DataColumn("KEY PERFORMANCE AREA");
                        DataColumn dc6ProjectPhase = new DataColumn("SOURCE OF FUND");
                        DataColumn dc7ProjectPhase = new DataColumn("YEAR 1");
                        DataColumn dc8ProjectPhase = new DataColumn("YEAR 2");
                        DataColumn dc9ProjectPhase = new DataColumn("YEAR 3");
                        DataColumn dc10ProjectPhase = new DataColumn("YEAR 4");
                        DataColumn dc11ProjectPhase = new DataColumn("YEAR 5");

                        dtProjectPhase.Columns.Add(dc1ProjectPhase);
                        dtProjectPhase.Columns.Add(dc2ProjectPhase);
                        dtProjectPhase.Columns.Add(dc3ProjectPhase);
                        dtProjectPhase.Columns.Add(dc4ProjectPhase);
                        dtProjectPhase.Columns.Add(dc5ProjectPhase);
                        dtProjectPhase.Columns.Add(dc6ProjectPhase);
                        dtProjectPhase.Columns.Add(dc7ProjectPhase);
                        dtProjectPhase.Columns.Add(dc8ProjectPhase);
                        dtProjectPhase.Columns.Add(dc9ProjectPhase);
                        dtProjectPhase.Columns.Add(dc10ProjectPhase);
                        dtProjectPhase.Columns.Add(dc11ProjectPhase);
                    }

                    DataRow drProjectPhase = dtProjectPhase.NewRow();
                    drProjectPhase[0] = txtProjectID.Text;
                    drProjectPhase[1] = ddlWardNumber.SelectedValue;
                    drProjectPhase[2] = txtProjectName.Text;
                    drProjectPhase[3] = ddlProjectLocation.SelectedValue;
                    drProjectPhase[4] = ddlKPA.SelectedValue;
                    drProjectPhase[5] = ddlFundingSource.SelectedValue;

                    // String diff2 = (txtEndDate.Text - txtStartDate.Text).TotalDays.ToString();
                    DateTime CurrentDate = Convert.ToDateTime(txtStartDate.Text);
                    DateTime EndDate = Convert.ToDateTime(txtEndDate.Text);
                    TimeSpan Diff = EndDate - CurrentDate;
                    int Days = Diff.Days;

                    if (Days <= 366)
                    {
                        drProjectPhase[6] = txtBudget.Text;
                    }
                    else if (Days <= 366 && Days >= 732)
                    {
                        drProjectPhase[7] = txtBudget.Text;
                    }
                    else if (Days <= 732 && Days >= 1098)
                    {
                        drProjectPhase[8] = txtBudget.Text;
                    }
                    else if (Days <= 1098 && Days >= 1464)
                    {
                        drProjectPhase[9] = txtBudget.Text;
                    }
                    else if (Days <=1464 && Days >= 1830)
                    {
                        drProjectPhase[10] = txtBudget.Text;
                    }

                   
                    dtProjectPhase.Rows.Add(drProjectPhase);
                    Session["dt_ProjectPhase"] = dtProjectPhase;

                    gvProjectPhase.DataSource = dtProjectPhase;
                    gvProjectPhase.DataBind();
                }
                else
                {
                    DataRow drProjectPhase = dtProjectPhase.NewRow();
                    drProjectPhase[0] = txtProjectID.Text;
                    drProjectPhase[1] = ddlWardNumber.SelectedValue;
                    drProjectPhase[2] = txtProjectName.Text;
                    drProjectPhase[3] = ddlProjectLocation.SelectedValue;
                    drProjectPhase[4] = ddlKPA.SelectedValue;
                    drProjectPhase[5] = ddlFundingSource.SelectedValue;

                    // String diff2 = (txtEndDate.Text - txtStartDate.Text).TotalDays.ToString();
                    DateTime CurrentDate = Convert.ToDateTime(txtStartDate.Text);
                    DateTime EndDate = Convert.ToDateTime(txtEndDate.Text);
                    TimeSpan Diff = EndDate - CurrentDate;
                    int Days = Diff.Days;

                    if (Days <= 366)
                    {
                        drProjectPhase[6] = txtBudget.Text;
                    }
                    else if (Days <= 366 && Days >= 732)
                    {
                        drProjectPhase[7] = txtBudget.Text;
                    }
                    else if (Days <= 732 && Days >= 1098)
                    {
                        drProjectPhase[8] = txtBudget.Text;
                    }
                    else if (Days <= 1098 && Days >= 1464)
                    {
                        drProjectPhase[9] = txtBudget.Text;
                    }
                    else if (Days <= 1464 && Days >= 1830)
                    {
                        drProjectPhase[10] = txtBudget.Text;
                    }

                    dtProjectPhase.Rows.Add(drProjectPhase);
                    Session["dt_ProjectPhase"] = dtProjectPhase;

                    gvProjectPhase.DataSource = dtProjectPhase;
                    gvProjectPhase.DataBind();

                }
                tblProjectPhase.Visible = false;
                lnkAddProject.Visible = true;
                lblMUNICIPALINSTITUTION.Visible = true;
            }
            catch (Exception)
            {

                throw;
            }

        }
        protected void gvProjectPhase_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtProjectPhase.Rows.Count > 0)
            {

                dtProjectPhase.Rows[e.RowIndex].Delete();
                gvProjectPhase.DataSource = dtProjectPhase;
                gvProjectPhase.DataBind();

            }
        }
        protected void lnkAddProject_Click(object sender, EventArgs e)
        {
            tblProjectPhase.Visible = true;
        }

        protected void txtProjectName_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            SqlCommand cmd = null;
            string ProjectName = txtProjectName.Text;

           string connectionString = "Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI";
           string cmdStr = string.Format("select ProjectName from ProjectPhase where ProjectName = @ProjectName");

           
            conn = new SqlConnection(connectionString);
            cmd = new SqlCommand(cmdStr, conn);
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName);
            conn.Open();
            
            SqlDataReader reader = cmd.ExecuteReader();
            
            if (reader.HasRows)

            {
                lblProjectName.Text = "The Project Name already exits";
            }

            else

            {
                lblProjectName.Visible = false;
            }
        }
    }
}