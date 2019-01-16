using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSP
{
    public partial class SDBIP : System.Web.UI.Page
    {
        DataTable dtAMTAOD;
        DataTable dtASR;
        DataTable dtABSDAID;
        DataTable dtALED;
        DataTable dtAMFMAV;
        DataTable dtAGGAPP;
        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
           // this.BindProjectName();

            if (!IsPostBack)
            {
                this.BindDatagvBasicService();
                this.BindDatagvGoodGovernance();
                this.BindDatagvLocalEconomic();
                this.BindDatagvMunicipalFinace();
                this.BindDatagvMunicipalTransformation();
                this.BindDatagvSpacialRationale();
            }
            else
            {
                dtAGGAPP = (DataTable)Session["dt_AGGAPP"];
                dtAMFMAV = (DataTable)Session["dt_AMFMAV"];
                dtALED = (DataTable)Session["dt_ALED"];
                dtABSDAID = (DataTable)Session["dt_ABSDAID"];
                dtASR = (DataTable)Session["dt_ASR"];
                dtAMTAOD = (DataTable)Session["dt_AMTAOD"];

            }
        }
        protected void gvProjectPhase5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void lbAMTAOD_Click(object sender, EventArgs e)
        {
            tblAMTAOD.Visible = true;
            btnAddAMTAOD.Visible = true;
            btnCancelAMTAOD.Visible = true;
        }
        protected void btnCancelAMTAOD_Click(object sender, EventArgs e)
        {
            tblAMTAOD.Visible = false;
            btnAddAMTAOD.Visible = false;
            btnCancelAMTAOD.Visible = false;
        }
        protected void lbASR_Click(object sender, EventArgs e)
        {
            tblASR.Visible = true;
            btnaddASR.Visible = true;
            btnCancelASR.Visible = true;
        }
        protected void btnCancelASR_Click(object sender, EventArgs e)
        {
            tblASR.Visible = false;
            btnaddASR.Visible = false;
            btnCancelASR.Visible = false;
        }
        protected void lbABSDAID_Click(object sender, EventArgs e)
        {
            tblABSDAID.Visible = true;
            btnAddABSDAID.Visible = true;
            btnCancelABSDAID.Visible = true;
        }
        protected void btnCancelABSDAID_Click(object sender, EventArgs e)
        {
            tblABSDAID.Visible = false;
            btnAddABSDAID.Visible = false;
            btnCancelABSDAID.Visible = false;
        }
        protected void lbALED_Click(object sender, EventArgs e)
        {
            tblALED.Visible = true;
            btnAddALED.Visible = true;
            btnCancelALED.Visible = true;
        }
        protected void btnCancelALED_Click(object sender, EventArgs e)
        {
            tblALED.Visible = false;
            btnAddALED.Visible = false;
            btnCancelALED.Visible = false;
        }
        protected void lbAMFMAV_Click(object sender, EventArgs e)
        {
            tblAMFMAV.Visible = true;
            btnAddAMFMAV.Visible = true;
            btnCancelAMFMAV.Visible = true;
        }
        protected void btnCancelAMFMAV_Click(object sender, EventArgs e)
        {
            tblAMFMAV.Visible = false;
            btnAddAMFMAV.Visible = false;
            btnCancelAMFMAV.Visible = false;
        }
        protected void lbAGGAPP_Click(object sender, EventArgs e)
        {
            tblAGGAPP.Visible = true;
            btnAddAGGAPP.Visible = true;
            btnCancelAGGAPP.Visible = true;
        }
        protected void btnCancelAGGAPP_Click(object sender, EventArgs e)
        {
            tblAGGAPP.Visible = false;
            btnAddAGGAPP.Visible = false;
            btnCancelAGGAPP.Visible = false;
        }
        //protected void BindProjectName()
        //{
        //    string str = "Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI";
        //    SqlConnection con = new SqlConnection(str);
        //    string com = "select distinct ProjectName from ProjectPhase";
        //    SqlDataAdapter adpt = new SqlDataAdapter(com, con);
        //    DataTable dt = new DataTable();
        //    adpt.Fill(dt);
        //    ddlAMTAODProjectName.DataSource = dt;
        //    ddlAMTAODProjectName.DataBind();
        //    ddlAMTAODProjectName.DataTextField = "ProjectName";
        //    ddlAMTAODProjectName.DataValueField = "ProjectName";
        //    ddlAMTAODProjectName.DataBind();
        //    ddlAMTAODProjectName.Items.Insert(0, new ListItem("Please Select...", ""));

        //    ddlASRProjectName.DataSource = dt;
        //    ddlASRProjectName.DataBind();
        //    ddlASRProjectName.DataTextField = "ProjectName";
        //    ddlASRProjectName.DataValueField = "ProjectName";
        //    ddlASRProjectName.DataBind();
        //    ddlASRProjectName.Items.Insert(0, new ListItem("Please Select...", ""));

        //    ddlABSDAIDProjectName.DataSource = dt;
        //    ddlABSDAIDProjectName.DataBind();
        //    ddlABSDAIDProjectName.DataTextField = "ProjectName";
        //    ddlABSDAIDProjectName.DataValueField = "ProjectName";
        //    ddlABSDAIDProjectName.DataBind();
        //    ddlABSDAIDProjectName.Items.Insert(0, new ListItem("Please Select...", ""));

        //    ddlALEDProjectName.DataSource = dt;
        //    ddlALEDProjectName.DataBind();
        //    ddlALEDProjectName.DataTextField = "ProjectName";
        //    ddlALEDProjectName.DataValueField = "ProjectName";
        //    ddlALEDProjectName.DataBind();
        //    ddlALEDProjectName.Items.Insert(0, new ListItem("Please Select...", ""));

        //    ddlAMFMAVProjectName.DataSource = dt;
        //    ddlAMFMAVProjectName.DataBind();
        //    ddlAMFMAVProjectName.DataTextField = "ProjectName";
        //    ddlAMFMAVProjectName.DataValueField = "ProjectName";
        //    ddlAMFMAVProjectName.DataBind();
        //    ddlAMFMAVProjectName.Items.Insert(0, new ListItem("Please Select...", ""));

        //    ddlAGGAPPProjectName.DataSource = dt;
        //    ddlAGGAPPProjectName.DataBind();
        //    ddlAGGAPPProjectName.DataTextField = "ProjectName";
        //    ddlAGGAPPProjectName.DataValueField = "ProjectName";
        //    ddlAGGAPPProjectName.DataBind();
        //    ddlAGGAPPProjectName.Items.Insert(0, new ListItem("Please Select...", ""));
        protected void BindVillagesByWardNumber()
        {
            string str = "Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI";
            SqlConnection con = new SqlConnection(str);
            string com = "select Village from WardCommunity where WardNumber ='" + ddlAMTAODWardNumber.SelectedValue + "'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            ddlAMTAODProjectLocation.DataSource = dt;
            ddlAMTAODProjectLocation.DataBind();
            ddlAMTAODProjectLocation.DataTextField = "Village";
            ddlAMTAODProjectLocation.DataValueField = "Village";
            ddlAMTAODProjectLocation.DataBind();
            ddlAMTAODProjectLocation.Items.Insert(0, new ListItem("Please Select...", ""));
        }
        protected void btnAddAMTAOD_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {
                    
                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlAMTAODWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAMTAODProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlAMTAODProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Municipal Transformation and Organisational Development";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtAMTAODBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlAMTAODFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAMTAODStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAMTAODEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlAMTAODDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtAMTAODKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Municipal Transformation and Organisational Development";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtAMTAODBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtAMTAODAnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAMTAODProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlAMTAODFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtAMTAODBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAMTAODStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAMTAODEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtAMTAOD1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtAMTAOD2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtAMTAOD3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtAMTAOD4thTarget.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtAMTAODPortfoliaOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlAMTAODDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();


                tblAMTAOD.Visible = false;
                btnAddAMTAOD.Visible = false;
                btnCancelAMTAOD.Visible = false;

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnaddASR_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {

                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlASRWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtASRProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlASRProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Spatial Rationale";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtASRBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlASRFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtASRStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtASREndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlASRDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtASRKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Spatial Rationale";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtASRBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtASRAnnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtASRProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlASRFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtASRBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtASRStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtASREndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtASR1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtASR2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtASR3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtASR4thTarget.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtASRPortfolioOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlASRDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();
                tblASR.Visible = false;
                btnaddASR.Visible = false;
                btnCancelASR.Visible = false;

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnAddABSDAID_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {

                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlABSDAIDWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtABSDAIDProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlABSDAIDProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Basic Service Delivery and Infrastructure Development";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlABSDAIDFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtABSDAIDStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtABSDAIDEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlABSDAIDDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtABSDAIDKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Basic Service Delivery and Infrastructure Development";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtABSDAIDBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtABSDAIDAnnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtABSDAIDProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlABSDAIDFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtABSDAIDStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtABSDAIDEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtABSDAID1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txt2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtABSDAID3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txt4thTarget.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtABSDAIDPortfolioOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlABSDAIDDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();

                Response.Redirect("SDBIP.aspx");
                tblABSDAID.Visible = false;
                btnAddABSDAID.Visible = false;
                btnCancelABSDAID.Visible = false;
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnAddALED_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {

                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlALEDWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtALEDProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlALEDProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Local Economic Development";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtALEDBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlALEDFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtALEDStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtALEDEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlALEDDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtALEDKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Local Economic Development";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtALEDBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtALEDAnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtALEDProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlALEDFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtALEDBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtALEDStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtALEDEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtALED1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtALED2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtALED3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtALED4thTarget.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtALEDPortfolioOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlALEDDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();
                tblALED.Visible = false;
                btnAddALED.Visible = false;
                btnCancelALED.Visible = false;

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnAddAMFMAV_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {

                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlAGGAPPWardNumber3.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAMFMAVProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlAGGAPPProjectLocation3.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Municipal Finance Management and Viability";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtAMFMAVBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlAMFMAVFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAMFMAVStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAMFMAVEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlAMFMAVDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Municipal Finance Management and Viability";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtAMFMAVAnnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAMFMAVProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlAMFMAVFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtAMFMAVBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAMFMAVStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAMFMAVEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtAMFMAV1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtAMFMAV2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtAMFMAV3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtAMFMAV4thTarget.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtPortfolioOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlAMFMAVDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();
                tblAMFMAV.Visible = false;
                btnAddAMFMAV.Visible = false;
                btnCancelAMFMAV.Visible = false;

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void btnAddAGGAPP_Click(object sender, EventArgs e)
        {
            try
            {
                string stmt = "SELECT COUNT(*) FROM ProjectPhase";
                int count = 0;
                string ProjectNumber = "BLMM00";

                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                using (SqlCommand cmdCount = new SqlCommand(stmt, conn))
                {

                    count = (int)cmdCount.ExecuteScalar();
                }
                int PID = count + 1;
                string ProjectID;
                ProjectID = ProjectNumber + PID.ToString();

                SqlCommand commandProject = new SqlCommand("InsertIntoProjectPhase", conn);
                SqlCommand commandProjectSDPIP = new SqlCommand("InsertIntoProjectSDBIP", conn);
                SqlCommand commandProjectID = new SqlCommand("SelectMaxProjectID", conn);
                commandProject.CommandType = CommandType.StoredProcedure;
                commandProjectSDPIP.CommandType = CommandType.StoredProcedure;
                commandProjectID.CommandType = CommandType.StoredProcedure;

                commandProject.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectID;
                commandProject.Parameters.Add("@WardNumber", SqlDbType.VarChar).Value = ddlAGGAPPWardNumber.SelectedValue;
                commandProject.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAGGAPPProjectName.Text;
                commandProject.Parameters.Add("@ProjectLocation", SqlDbType.VarChar).Value = ddlAGGAPPProjectLocation.SelectedValue;
                commandProject.Parameters.Add("@KeyPerformanceArea", SqlDbType.VarChar).Value = "Good Governance and Public Participation";
                commandProject.Parameters.Add("@Budget", SqlDbType.VarChar).Value = txtAGGAPPBudget1819.Text;
                commandProject.Parameters.Add("@SourceofFunds", SqlDbType.VarChar).Value = ddlAGGAPPFundingSource.SelectedValue;
                commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAGGAPPStartDate.Text;
                commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAGGAPPEndDate.Text;
                commandProject.Parameters.Add("@ProjectClassification", SqlDbType.VarChar).Value = "Other Project";
                commandProject.ExecuteNonQuery();
                string ProjectMaxID;
                ProjectMaxID = commandProjectID.ExecuteScalar().ToString();

                commandProjectSDPIP.Parameters.Add("@ProjectID", SqlDbType.VarChar).Value = ProjectMaxID;
                commandProjectSDPIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlAGGAPPDevelopmentObjective.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtAGGAPPKeyPerformanceIndicator.Text;
                commandProjectSDPIP.Parameters.Add("@KPA", SqlDbType.VarChar).Value = "Good Governance and Public Participation";
                commandProjectSDPIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtAGGAPPBaseline.Text;
                commandProjectSDPIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtAGGAPPAnualTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtAGGAPPProjectName.Text;
                commandProjectSDPIP.Parameters.Add("@FundingSource", SqlDbType.VarChar).Value = ddlAGGAPPFundingSource.SelectedValue;
                commandProjectSDPIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtAGGAPPBudget1819.Text;
                commandProjectSDPIP.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtAGGAPPStartDate.Text;
                commandProjectSDPIP.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtAGGAPPEndDate.Text;
                commandProjectSDPIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtAGGAPP1stTarget.Text;
                commandProjectSDPIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtAGGAPP2ndTarget.Text;
                commandProjectSDPIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtAGGAPP3rdTarget.Text;
                commandProjectSDPIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtAGGAPP4thTargets.Text;
                commandProjectSDPIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtAGGAPPPortfolioOfEvidence.Text;
                commandProjectSDPIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlAGGAPPDept.SelectedValue;
                commandProjectSDPIP.ExecuteNonQuery();

                tblAGGAPP.Visible = false;
                btnAddAGGAPP.Visible = false;
                btnCancelAGGAPP.Visible = false;

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void BindDatagvMunicipalTransformation()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Municipal Transformation and Organisational Development'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvMunicipalTransformation.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvMunicipalTransformation.DataSource = dt;
                    gvMunicipalTransformation.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvSpacialRationale()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Spatial Rationale'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvSpacialRationale.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvSpacialRationale.DataSource = dt;
                    gvSpacialRationale.DataBind();
                }
                
                con.Close();
                
                
            }
        }
        protected void BindDatagvBasicService()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Basic Service Delivery and Infrastructure Development'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvBasicService.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvBasicService.DataSource = dt;
                    gvBasicService.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvLocalEconomic()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Local Economic Development'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvLocalEconomic.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvLocalEconomic.DataSource = dt;
                    gvLocalEconomic.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvMunicipalFinace()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Municipal Finance Management and Viability'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvMunicipalFinace.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvMunicipalFinace.DataSource = dt;
                    gvMunicipalFinace.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvGoodGovernance()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where KPA = 'Good Governance and Public Participation'", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvGoodGovernance.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvGoodGovernance.DataSource = dt;
                    gvGoodGovernance.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void ddlAMTAODDevelopmentObjective_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void gvGridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvGoodGovernance")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                tlbUpdate1.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

               // ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
               // ddlUpdateDepartment.SelectedValue = Department;
            }

            if (e.CommandName == "UpdategvMunicipalFinace")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

               // ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
               // ddlUpdateDepartment.SelectedValue = Department;
            }

            if (e.CommandName == "UpdategvLocalEconomic")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string ProjectName = row.Cells[4].Text;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName1 = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

               // ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName1;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
              //  ddlUpdateDepartment.SelectedValue = Department;
            }

            if (e.CommandName == "UpdategvBasicService")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

              //  ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
               // ddlUpdateDepartment.SelectedValue = Department;
            }

            if (e.CommandName == "UpdategvSpacialRationale")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

               // ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
               // ddlUpdateDepartment.SelectedValue = Department;
            }

            if (e.CommandName == "UpdategvMunicipalTransformation")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblUpdate.Visible = true;
                lbAMTAOD.Visible = false;
                lbASR.Visible = false;
                lbABSDAID.Visible = false;
                lbALED.Visible = false;
                lbAMFMAV.Visible = false;
                lbAGGAPP.Visible = false;
                string DevelopmentObjective = row.Cells[0].Text;
                string KPI = row.Cells[1].Text;
                string Baseline = row.Cells[2].Text;
                string AnualTargets = row.Cells[3].Text;
                string ProjectName = row.Cells[4].Text;
                string FundingSource = row.Cells[5].Text;
                string Budget = row.Cells[6].Text;
                string StartDate = row.Cells[7].Text;
                string EndDate = row.Cells[8].Text;
                string Firsttarget = row.Cells[9].Text;
                string Seconttarget = row.Cells[10].Text;
                string Thirdtarget = row.Cells[11].Text;
                string Fourthtarget = row.Cells[12].Text;
                string Portfolio = row.Cells[13].Text;
                string Department = row.Cells[14].Text;

               // ddlUpdateDevelopmentObjective.SelectedValue = DevelopmentObjective;
                txtUpdateKPI.Text = KPI;
                txtUpdateBaseline.Text = Baseline;
                txtUpdateAnualTarget.Text = AnualTargets;
                txtUpdateProjectName.Text = ProjectName;
                txtUpdateFundingSource.Text = FundingSource;
                txtUpdateBudget.Text = Budget;
                txtUpdateStartDate.Text = StartDate;
                txtUpdateEndDate.Text = EndDate;
                txtUpdatefirsttarget.Text = Firsttarget;
                txtUpdateSecondTarget.Text = Seconttarget;
                txtUpdatethirdtarget.Text = Thirdtarget;
                txtUpdatefirsttarget.Text = Fourthtarget;
                txtUpdatePortfolio.Text = Portfolio;
               // ddlUpdateDepartment.SelectedValue = Department;
            }
        }
        protected void ddlAMTAODWardNumber_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.BindVillagesByWardNumber();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();

                SqlCommand UpdateSDBIP = new SqlCommand("UpdateSDBIP", conn);
                UpdateSDBIP.CommandType = CommandType.StoredProcedure;

                UpdateSDBIP.Parameters.Add("@DevelopmentObjective", SqlDbType.VarChar).Value = ddlUpdateDevelopmentObjective.SelectedValue;
                UpdateSDBIP.Parameters.Add("@KeyPerformanceIndicatorsMeasurableObjective", SqlDbType.VarChar).Value = txtUpdateKPI.Text;
                UpdateSDBIP.Parameters.Add("@Baseline", SqlDbType.VarChar).Value = txtUpdateBaseline.Text;
                UpdateSDBIP.Parameters.Add("@AnnualTargets", SqlDbType.VarChar).Value = txtUpdateAnualTarget.Text;
                UpdateSDBIP.Parameters.Add("@Budget1819R000", SqlDbType.VarChar).Value = txtUpdateBudget.Text;
                UpdateSDBIP.Parameters.Add("@FirstQTarget", SqlDbType.VarChar).Value = txtUpdatefirsttarget.Text;
                UpdateSDBIP.Parameters.Add("@SecondQTarget", SqlDbType.VarChar).Value = txtUpdateSecondTarget.Text;
                UpdateSDBIP.Parameters.Add("@ThirdQTarget", SqlDbType.VarChar).Value = txtUpdatethirdtarget.Text;
                UpdateSDBIP.Parameters.Add("@FourthQTarget", SqlDbType.VarChar).Value = txtUpdatefourthtarget.Text;
                UpdateSDBIP.Parameters.Add("@PortfolioOfEvidence", SqlDbType.VarChar).Value = txtUpdatePortfolio.Text;
                UpdateSDBIP.Parameters.Add("@Department", SqlDbType.VarChar).Value = ddlUpdateDepartment.SelectedValue;
                UpdateSDBIP.Parameters.Add("@ProjectName", SqlDbType.VarChar).Value = txtUpdateProjectName.Text;

                UpdateSDBIP.ExecuteNonQuery();

                Response.Redirect("SDBIP.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnCancelUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("SDBIP.aspx");
        }
    }
}