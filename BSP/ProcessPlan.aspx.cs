using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BSP
{
    public partial class ProcessPlan : System.Web.UI.Page
    {

        DataTable dtAnalysis;
        DataTable dtStrategies;
        DataTable dtProject;
        DataTable dtIntegration;
        DataTable dtApproval;

        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;

            string currentMonth = DateTime.Now.Month.ToString();
            string currentYear = DateTime.Now.Year.ToString();

            //monthLabel.Text = currentMonth;
            //yearLabel.Text = currentYear;

            if (!IsPostBack)
            {
                int year = DateTime.Now.Year;
                DateTime firstDay = new DateTime(year, 6, 1);
                DateTime lastDay = new DateTime(year + 1, 7, 31);

                

                txtStartDate.Text = firstDay.ToString().Substring(0, 10);
                txtEndDate.Text = lastDay.ToString().Substring(0, 10);

                //string message = "";
                //foreach (ListItem item in lstFruits.Items)
                //{
                //    if (item.Selected)
                //    {
                //        message += item.Text + " " + item.Value + "\\n";
                //    }
                //}
            }
            else
            {
                dtAnalysis = (DataTable)Session["dt_dtAnalysis"];
                dtStrategies = (DataTable)Session["dt_dtStrategies"];
                dtProject = (DataTable)Session["dt_dtProject"];
                dtIntegration = (DataTable)Session["dt_dtIntegration"];
                dtApproval = (DataTable)Session["dt_dtApproval"];

            }
        }

        //private void PopulateYear()
        //{
        //    ddlYear.Items.Clear();
        //    ListItem lt = new ListItem();
        //    lt.Text = "YYYY";
        //    lt.Value = "0";
        //    ddlYear.Items.Add(lt);
        //    for (int i = DateTime.Now.Year; i >= 1950; i--)
        //    {
        //        lt = new ListItem();
        //        lt.Text = i.ToString();
        //        lt.Value = i.ToString();
        //        ddlYear.Items.Add(lt);
        //    }
        //    ddlYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
        //}

        protected void drPhase_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drPhase.SelectedValue == "ANALYSIS PHASE")
            {
                AnalysisPhase.Visible = true;
            }
            else
            {
                AnalysisPhase.Visible = false;
            }
            if (drPhase.SelectedValue == "STRATEGIES PHASE")
            {
                StrategiesPhase.Visible = true;
            }
            else
            {
                StrategiesPhase.Visible = false;
            }
            if (drPhase.SelectedValue == "PROJECT PHASE")
            {
                ProjectPhase.Visible = true;
            }
            else
            {
                ProjectPhase.Visible = false;
            }
            if (drPhase.SelectedValue == "INTEGRATION PHASE")
            {
                IntegrationPhase.Visible = true;
            }
            else
            {
                IntegrationPhase.Visible = false;
            }
            if (drPhase.SelectedValue == "APPROVAL PHASE")
            {
                ApprovalPhase.Visible = true;
            }
            else
            {
                ApprovalPhase.Visible = false;
            }
        }

        protected void btnCancelAnalysis_Click(object sender, EventArgs e)
        {
            drPhase.ClearSelection();
            AnalysisPhase.Visible = false;
        }

        protected void btnCancelStrategies_Click(object sender, EventArgs e)
        {
            drPhase.ClearSelection();
            StrategiesPhase.Visible = false;
        }

        protected void btnCancelProject_Click(object sender, EventArgs e)
        {
            drPhase.ClearSelection();
            ProjectPhase.Visible = false;
        }

        protected void btnCancelIntegration_Click(object sender, EventArgs e)
        {
            drPhase.ClearSelection();
            IntegrationPhase.Visible = false;
        }

        protected void btnCancelApproval_Click(object sender, EventArgs e)
        {
            drPhase.ClearSelection();
            ApprovalPhase.Visible = false;
        }

        protected void btnAddAnalysis_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtAnalysis == null)
                {
                    {
                        dtAnalysis = new DataTable();
                        DataColumn dc1Analysis = new DataColumn("PLANNING ACTIVITY");
                        DataColumn dc2Analysis = new DataColumn("TASK");
                        DataColumn dc3Analysis = new DataColumn("RESPONSIBLE PERSON");
                        DataColumn dc4Analysis = new DataColumn("PARTICIPANTS");
                        DataColumn dc5Analysis = new DataColumn("TIME SCHEDULE");
                        dtAnalysis.Columns.Add(dc1Analysis);
                        dtAnalysis.Columns.Add(dc2Analysis);
                        dtAnalysis.Columns.Add(dc3Analysis);
                        dtAnalysis.Columns.Add(dc4Analysis);
                        dtAnalysis.Columns.Add(dc5Analysis);
                    }

                    DataRow drAnalysis = dtAnalysis.NewRow();
                    drAnalysis[0] = drAnalysisPlanning.SelectedValue;
                    drAnalysis[1] = drAnalysisTask.SelectedValue;
                    drAnalysis[2] = drAnalysisResponsiblePerson.SelectedValue;
                    drAnalysis[3] = drAnalysisParticipants.SelectedValue;
                    drAnalysis[4] = txtAnalysisDate.Text;
                    dtAnalysis.Rows.Add(drAnalysis);
                    Session["dt_dtAnalysis"] = dtAnalysis;

                    gvAnalysis.DataSource = dtAnalysis;
                    gvAnalysis.DataBind();
                }
                else
                {
                    DataRow drAnalysis = dtAnalysis.NewRow();
                    drAnalysis[0] = drAnalysisPlanning.SelectedValue;
                    drAnalysis[1] = drAnalysisTask.SelectedValue;
                    drAnalysis[2] = drAnalysisResponsiblePerson.SelectedValue;
                    drAnalysis[3] = drAnalysisParticipants.SelectedValue;
                    drAnalysis[4] = txtAnalysisDate.Text;
                    dtAnalysis.Rows.Add(drAnalysis);
                    Session["dt_dtAnalysis"] = dtAnalysis;

                    gvAnalysis.DataSource = dtAnalysis;
                    gvAnalysis.DataBind();
                    
                }

                AnalysisPhase.Visible = false;
                lblANALYSISPHASE.Visible = true;
            }
            
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnAddStrategies_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtStrategies == null)
                {
                    {
                        dtStrategies = new DataTable();
                        DataColumn dc1Strategies = new DataColumn("PLANNING ACTIVITY");
                        DataColumn dc2Strategies = new DataColumn("TASK");
                        DataColumn dc3Strategies = new DataColumn("RESPONSIBLE PERSON");
                        DataColumn dc4Strategies = new DataColumn("PARTICIPANTS");
                        DataColumn dc5Strategies = new DataColumn("TIME SCHEDULE");
                        dtStrategies.Columns.Add(dc1Strategies);
                        dtStrategies.Columns.Add(dc2Strategies);
                        dtStrategies.Columns.Add(dc3Strategies);
                        dtStrategies.Columns.Add(dc4Strategies);
                        dtStrategies.Columns.Add(dc5Strategies);
                    }

                    DataRow drStrategies = dtStrategies.NewRow();
                    drStrategies[0] = drStrategiesPlanning.SelectedValue;
                    drStrategies[1] = drStrategiesTask.SelectedValue;
                    drStrategies[2] = drStrategiesResponsiblePerson.SelectedValue;
                    drStrategies[3] = drStrategiesParticipants.SelectedValue;
                    drStrategies[4] = txtStrategiesDate.Text;
                    dtStrategies.Rows.Add(drStrategies);
                    Session["dt_dtStrategies"] = dtStrategies;

                    gvStrategies.DataSource = dtStrategies;
                    gvStrategies.DataBind();
                }
                else
                {
                    DataRow drStrategies = dtStrategies.NewRow();
                    drStrategies[0] = drStrategiesPlanning.SelectedValue;
                    drStrategies[1] = drStrategiesTask.SelectedValue;
                    drStrategies[2] = drStrategiesResponsiblePerson.SelectedValue;
                    drStrategies[3] = drStrategiesParticipants.SelectedValue;
                    drStrategies[4] = txtStrategiesDate.Text;
                    dtStrategies.Rows.Add(drStrategies);
                    Session["dt_dtStrategies"] = dtStrategies;

                    gvStrategies.DataSource = dtStrategies;
                    gvStrategies.DataBind();
                    
                }
                StrategiesPhase.Visible = false;
                lblSTRATEGIESPHASE.Visible = true;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnAddProject_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtProject == null)
                {
                    {
                        dtProject = new DataTable();
                        DataColumn dc1Project = new DataColumn("PLANNING ACTIVITY");
                        DataColumn dc2Project = new DataColumn("TASK");
                        DataColumn dc3Project = new DataColumn("RESPONSIBLE PERSON");
                        DataColumn dc4Project = new DataColumn("PARTICIPANTS");
                        DataColumn dc5Project = new DataColumn("TIME SCHEDULE");
                        dtProject.Columns.Add(dc1Project);
                        dtProject.Columns.Add(dc2Project);
                        dtProject.Columns.Add(dc3Project);
                        dtProject.Columns.Add(dc4Project);
                        dtProject.Columns.Add(dc5Project);
                    }

                    DataRow drProject = dtProject.NewRow();
                    drProject[0] = drProjectPlanning.SelectedValue;
                    drProject[1] = drProjectTask.SelectedValue;
                    drProject[2] = drProjectResponsiblePerson.SelectedValue;
                    drProject[3] = drProjectParticipants.SelectedValue;
                    drProject[4] = txtProjectDate.Text;
                    dtProject.Rows.Add(drProject);
                    Session["dt_dtProject"] = dtProject;

                    gvProject.DataSource = dtProject;
                    gvProject.DataBind();
                }
                else
                {
                    DataRow drProject = dtProject.NewRow();
                    drProject[0] = drProjectPlanning.SelectedValue;
                    drProject[1] = drProjectTask.SelectedValue;
                    drProject[2] = drProjectResponsiblePerson.SelectedValue;
                    drProject[3] = drProjectParticipants.SelectedValue;
                    drProject[4] = txtProjectDate.Text;
                    dtProject.Rows.Add(drProject);
                    Session["dt_dtProject"] = dtProject;

                    gvProject.DataSource = dtProject;
                    gvProject.DataBind();
                    
                }
                ProjectPhase.Visible = false;
                lblPROJECTPHASE.Visible = true;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnAddIntegration_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtIntegration == null)
                {
                    {
                        dtIntegration = new DataTable();
                        DataColumn dc1Integration = new DataColumn("PLANNING ACTIVITY");
                        DataColumn dc2Integration = new DataColumn("TASK");
                        DataColumn dc3Integration = new DataColumn("RESPONSIBLE PERSON");
                        DataColumn dc4Integration = new DataColumn("PARTICIPANTS");
                        DataColumn dc5Integration = new DataColumn("TIME SCHEDULE");
                        dtIntegration.Columns.Add(dc1Integration);
                        dtIntegration.Columns.Add(dc2Integration);
                        dtIntegration.Columns.Add(dc3Integration);
                        dtIntegration.Columns.Add(dc4Integration);
                        dtIntegration.Columns.Add(dc5Integration);
                    }

                    DataRow drIntegration = dtIntegration.NewRow();
                    drIntegration[0] = drIntegrationPlanning.SelectedValue;
                    drIntegration[1] = drIntegrationTask.SelectedValue;
                    drIntegration[2] = drIntegrationResponsiblePerson.SelectedValue;
                    drIntegration[3] = drIntegrationParticipants.SelectedValue;
                    drIntegration[4] = txtIntegrationDate.Text;
                    dtIntegration.Rows.Add(drIntegration);
                    Session["dt_dtIntegration"] = dtIntegration;

                    gvIntegration.DataSource = dtIntegration;
                    gvIntegration.DataBind();
                }
                else
                {
                    DataRow drIntegration = dtIntegration.NewRow();
                    drIntegration[0] = drIntegrationPlanning.SelectedValue;
                    drIntegration[1] = drIntegrationTask.SelectedValue;
                    drIntegration[2] = drIntegrationResponsiblePerson.SelectedValue;
                    drIntegration[3] = drIntegrationParticipants.SelectedValue;
                    drIntegration[4] = txtIntegrationDate.Text;
                    dtIntegration.Rows.Add(drIntegration);
                    Session["dt_dtIntegration"] = dtIntegration;

                    gvIntegration.DataSource = dtIntegration;
                    gvIntegration.DataBind();
                    
                }
                IntegrationPhase.Visible = false;
                lblINTEGRATIONPHASE.Visible = true;
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnAddApproval_Click(object sender, EventArgs e)
        {
            try
            {
                if (dtApproval == null)
                {
                    {
                        dtApproval = new DataTable();
                        DataColumn dc1Approval = new DataColumn("PLANNING ACTIVITY");
                        DataColumn dc2Approval = new DataColumn("TASK");
                        DataColumn dc3Approval = new DataColumn("RESPONSIBLE PERSON");
                        DataColumn dc4Approval = new DataColumn("PARTICIPANTS");
                        DataColumn dc5Approval = new DataColumn("TIME SCHEDULE");
                        dtApproval.Columns.Add(dc1Approval);
                        dtApproval.Columns.Add(dc2Approval);
                        dtApproval.Columns.Add(dc3Approval);
                        dtApproval.Columns.Add(dc4Approval);
                        dtApproval.Columns.Add(dc5Approval);
                    }

                    DataRow drApproval = dtApproval.NewRow();
                    drApproval[0] = drApprovalPlanning.SelectedValue;
                    drApproval[1] = drApprovalTask.SelectedValue;
                    drApproval[2] = drApprovalResponsiblePerson.SelectedValue;
                    drApproval[3] = drApprovalParticipants.SelectedValue;
                    drApproval[4] = txtApprovalDate.Text;
                    dtApproval.Rows.Add(drApproval);
                    Session["dt_dtApproval"] = dtApproval;

                    gvApproval.DataSource = dtApproval;
                    gvApproval.DataBind();
                }
                else
                {
                    DataRow drApproval = dtApproval.NewRow();
                    drApproval[0] = drApprovalPlanning.SelectedValue;
                    drApproval[1] = drApprovalTask.SelectedValue;
                    drApproval[2] = drApprovalResponsiblePerson.SelectedValue;
                    drApproval[3] = drApprovalParticipants.SelectedValue;
                    drApproval[4] = txtApprovalDate.Text;
                    dtApproval.Rows.Add(drApproval);
                    Session["dt_dtApproval"] = dtApproval;

                    gvApproval.DataSource = dtApproval;
                    gvApproval.DataBind();
                    
                }
                ApprovalPhase.Visible = false;
                lblAPPROVALPHASE.Visible = true;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        protected void gvAnalysis_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtAnalysis.Rows.Count > 0)
            {

                dtAnalysis.Rows[e.RowIndex].Delete();
                gvAnalysis.DataSource = dtAnalysis;
                gvAnalysis.DataBind();

            }
        }
        protected void gvStrategies_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtStrategies.Rows.Count > 0)
            {

                dtStrategies.Rows[e.RowIndex].Delete();
                gvStrategies.DataSource = dtStrategies;
                gvStrategies.DataBind();

            }
        }
        protected void gvIntegration_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtIntegration.Rows.Count > 0)
            {

                dtIntegration.Rows[e.RowIndex].Delete();
                gvIntegration.DataSource = dtIntegration;
                gvIntegration.DataBind();

            }
        }
        protected void gvProject_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            if (dtProject.Rows.Count > 0)
            {

                dtProject.Rows[e.RowIndex].Delete();
                gvProject.DataSource = dtProject;
                gvProject.DataBind();

            }
        }
        protected void gvApproval_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtApproval.Rows.Count > 0)
            {

                dtApproval.Rows[e.RowIndex].Delete();
                gvApproval.DataSource = dtApproval;
                gvApproval.DataBind();

            }
        }

        protected void gvStrategies_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();
                SqlCommand commandProcessPlan = new SqlCommand("InsertIntoProcessPlan", conn);
                commandProcessPlan.CommandType = CommandType.StoredProcedure;

                commandProcessPlan.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                commandProcessPlan.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                commandProcessPlan.ExecuteNonQuery();

                foreach (GridViewRow row in gvAnalysis.Rows)
                {
                    string PlanningActivity = row.Cells[0].Text;
                    string Task = row.Cells[1].Text;
                    string ResponsiblePerson = row.Cells[2].Text;
                    string Participants = row.Cells[3].Text;
                    string TimeScheduled = row.Cells[4].Text;
                    //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;
                    SqlCommand commandAnalysis = new SqlCommand("InsertIntoAnalysis", conn);
                    commandAnalysis.CommandType = CommandType.StoredProcedure;

                    commandAnalysis.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                    commandAnalysis.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                    commandAnalysis.Parameters.Add("@PlanningActivity", SqlDbType.VarChar).Value = PlanningActivity;
                    commandAnalysis.Parameters.Add("@Task", SqlDbType.VarChar).Value = Task;
                    commandAnalysis.Parameters.Add("@ResponsiblePerson", SqlDbType.VarChar).Value = ResponsiblePerson;
                    commandAnalysis.Parameters.Add("@Participants", SqlDbType.VarChar).Value = Participants;
                    commandAnalysis.Parameters.Add("@TimeScheduled", SqlDbType.VarChar).Value = Convert.ToDateTime(TimeScheduled);

                    commandAnalysis.ExecuteNonQuery();
                }

                foreach (GridViewRow row in gvStrategies.Rows)
                {
                    string PlanningActivity = row.Cells[0].Text;
                    string Task = row.Cells[1].Text;
                    string ResponsiblePerson = row.Cells[2].Text;
                    string Participants = row.Cells[3].Text;
                    string TimeScheduled = row.Cells[4].Text;
                    //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;
                    SqlCommand commandStrategies = new SqlCommand("InsertIntoStrategies", conn);
                    commandStrategies.CommandType = CommandType.StoredProcedure;

                    commandStrategies.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                    commandStrategies.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                    commandStrategies.Parameters.Add("@PlanningActivity", SqlDbType.VarChar).Value = PlanningActivity;
                    commandStrategies.Parameters.Add("@Task", SqlDbType.VarChar).Value = Task;
                    commandStrategies.Parameters.Add("@ResponsiblePerson", SqlDbType.VarChar).Value = ResponsiblePerson;
                    commandStrategies.Parameters.Add("@Participants", SqlDbType.VarChar).Value = Participants;
                    commandStrategies.Parameters.Add("@TimeScheduled", SqlDbType.VarChar).Value = TimeScheduled;

                    commandStrategies.ExecuteNonQuery();
                }

                foreach (GridViewRow row in gvProject.Rows)
                {
                    string PlanningActivity = row.Cells[0].Text;
                    string Task = row.Cells[1].Text;
                    string ResponsiblePerson = row.Cells[2].Text;
                    string Participants = row.Cells[3].Text;
                    string TimeScheduled = row.Cells[4].Text;
                    //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;
                    SqlCommand commandProject = new SqlCommand("InsertIntoProject", conn);
                    commandProject.CommandType = CommandType.StoredProcedure;

                    commandProject.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                    commandProject.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                    commandProject.Parameters.Add("@PlanningActivity", SqlDbType.VarChar).Value = PlanningActivity;
                    commandProject.Parameters.Add("@Task", SqlDbType.VarChar).Value = Task;
                    commandProject.Parameters.Add("@ResponsiblePerson", SqlDbType.VarChar).Value = ResponsiblePerson;
                    commandProject.Parameters.Add("@Participants", SqlDbType.VarChar).Value = Participants;
                    commandProject.Parameters.Add("@TimeScheduled", SqlDbType.VarChar).Value = TimeScheduled;

                    commandProject.ExecuteNonQuery();
                }

                foreach (GridViewRow row in gvIntegration.Rows)
                {
                    string PlanningActivity = row.Cells[0].Text;
                    string Task = row.Cells[1].Text;
                    string ResponsiblePerson = row.Cells[2].Text;
                    string Participants = row.Cells[3].Text;
                    string TimeScheduled = row.Cells[4].Text;
                    //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;
                    SqlCommand commandIntegration = new SqlCommand("InsertIntoIntegration", conn);
                    commandIntegration.CommandType = CommandType.StoredProcedure;

                    commandIntegration.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                    commandIntegration.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                    commandIntegration.Parameters.Add("@PlanningActivity", SqlDbType.VarChar).Value = PlanningActivity;
                    commandIntegration.Parameters.Add("@Task", SqlDbType.VarChar).Value = Task;
                    commandIntegration.Parameters.Add("@ResponsiblePerson", SqlDbType.VarChar).Value = ResponsiblePerson;
                    commandIntegration.Parameters.Add("@Participants", SqlDbType.VarChar).Value = Participants;
                    commandIntegration.Parameters.Add("@TimeScheduled", SqlDbType.VarChar).Value = TimeScheduled;

                    commandIntegration.ExecuteNonQuery();
                }

                foreach (GridViewRow row in gvApproval.Rows)
                {
                    string PlanningActivity = row.Cells[0].Text;
                    string Task = row.Cells[1].Text;
                    string ResponsiblePerson = row.Cells[2].Text;
                    string Participants = row.Cells[3].Text;
                    string TimeScheduled = row.Cells[4].Text;
                    //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;
                    SqlCommand commandApproval = new SqlCommand("InsertIntoApproval", conn);
                    commandApproval.CommandType = CommandType.StoredProcedure;

                    commandApproval.Parameters.Add("@StartDate", SqlDbType.VarChar).Value = txtStartDate.Text;
                    commandApproval.Parameters.Add("@EndDate", SqlDbType.VarChar).Value = txtEndDate.Text;
                    commandApproval.Parameters.Add("@PlanningActivity", SqlDbType.VarChar).Value = PlanningActivity;
                    commandApproval.Parameters.Add("@Task", SqlDbType.VarChar).Value = Task;
                    commandApproval.Parameters.Add("@ResponsiblePerson", SqlDbType.VarChar).Value = ResponsiblePerson;
                    commandApproval.Parameters.Add("@Participants", SqlDbType.VarChar).Value = Participants;
                    commandApproval.Parameters.Add("@TimeScheduled", SqlDbType.VarChar).Value = TimeScheduled;

                    commandApproval.ExecuteNonQuery();
                }

                conn.Close();

                Response.Write("<script>window.alert('Actions has been successfully saved.');window.location.href='" + "/Index.aspx';</" + "script>");


            }
            catch (Exception)
            {

                throw;
            }
        }
       
        private void CreatedWordDocument()
        {
           
            object oMissing = System.Reflection.Missing.Value;
            object oEndOfDoc = "\\endofdoc"; /* \endofdoc is a predefined bookmark */

            //Start Word and create a new document.
            Microsoft.Office.Interop.Word._Application oWord;
            Microsoft.Office.Interop.Word._Document oDoc;
            oWord = new Microsoft.Office.Interop.Word.Application();
            oWord.Visible = true;

            oDoc = oWord.Documents.Add(ref oMissing, ref oMissing,
            ref oMissing, ref oMissing);
            oDoc = oWord.ActiveDocument;

            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara1;
            oPara1 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara1.Range.Text = "Collins Chabane Local Municipality";
            oPara1.Range.Font.Bold = 1;
            oPara1.Format.SpaceAfter = 30;    //24 pt spacing after paragraph.
            oPara1.Range.InsertParagraphAfter();

            Microsoft.Office.Interop.Word.InlineShape Picture1;
            object oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            Picture1 = oDoc.Content.InlineShapes.AddPicture(@"D:\ColinsPic.png");

            
            
           // oDoc.InlineShapes.AddPicture(@"D:\ColinsPic.png", ref oMissing, ref oMissing, ref oMissing);

            ////Insert a paragraph at the beginning of the document.
            //Microsoft.Office.Interop.Word.Paragraph oPara1;
            //oPara1 = oDoc.Content.Paragraphs.Add(ref oMissing);
            //oPara1.Range.Text = "Heading 1";
            //oPara1.Range.Font.Bold = 1;
            //oPara1.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            //oPara1.Range.InsertParagraphAfter();

            //Microsoft.Office.Interop.Word.Table Otable;
            //Microsoft.Office.Interop.Word.Range wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;

            //StringWriter stringWriter = new StringWriter();
            //HtmlTextWriter htw = new HtmlTextWriter(stringWriter);
            //gvAnalysis.Width = 100;
            //gvAnalysis.HeaderRow.Style.Add("background-color", "#FFFFFF");
            //gvAnalysis.RenderControl(htw);
            //Response.Write(stringWriter.ToString());
            

            //Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        protected void btnPrint_Click(object sender, EventArgs e)
        {
            this.CreatedWordDocument();
        }

        protected void drAnalysisResponsiblePerson_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem listItem in drAnalysisResponsiblePerson.Items)
            {
                if (listItem.Selected)
                {
                    var val = listItem.Value;
                    var txt = listItem.Text;
                }
            }
        }
    }
}