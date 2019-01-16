using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace BSP
{
    public partial class RegisterProcessPlan : System.Web.UI.Page
    {
       

        DataTable dtIDPAction;

        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
            if (!IsPostBack)
            {

            }
            else
            {
                dtIDPAction = (DataTable)Session["dt_dtIDPAction"];

            }
        }
        


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                
                SqlConnection conn = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"); //Connection String
                conn.Open();
                foreach (GridViewRow row in gvActions.Rows)
                {
                        string Actions = row.Cells[0].Text;
                        //string Actions = ((TextBox)gvActions.Rows[0].FindControl("txtActions")).Text;

                        SqlCommand command = new SqlCommand("InsertIntoProcessPlan", conn);
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("@Date", SqlDbType.VarChar).Value = txtIDPDate.Text;
                        command.Parameters.Add("@Actions", SqlDbType.VarChar).Value = Actions;

                        command.ExecuteNonQuery();
                    }
                   
                conn.Close();

                Response.Write("<script>window.alert('Actions has been successfully saved.');window.location.href='" + "/Index.aspx';</" + "script>");
                
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtIDPDate.Text = "";
            txtIDPAction.Text = "";
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            this.CreatedWordDocument();
        }

        protected void lnkbtnActions_Click(object sender, EventArgs e)
        {
            RowActionText.Visible = true;
            RowButtons.Visible = false;
            txtIDPAction.Text = "";
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
            
            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara1;
            oPara1 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara1.Range.Text = "1. INTRODUCTION & BACKGROUND";
            oPara1.Range.Font.Bold = 1;
            oPara1.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            oPara1.Range.InsertParagraphAfter();

            //Insert a paragraph at the end of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara2;
            object oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara2 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara2.Range.Text = "Heading 2";
            oPara2.Format.SpaceAfter = 6;
            oPara2.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara3;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara3 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara3.Range.Text = "The IDP is a principal instrument that guides and informs budgeting, management and decision-making related to service delivery and development in a municipality. In order to ensure certain minimum quality standards of the Integrated Development Plan (IDP), and a proper coordination between and within spheres of government, the municipality is required to develop a process plan that will guide all actions during the development or review of the IDP. This plan has to include the following:";
            oPara3.Range.Font.Bold = 0;
            oPara3.Format.SpaceAfter = 24;
            oPara3.Range.InsertParagraphAfter();
            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara4;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara4 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara4.Range.Text = @"•A programme specifying the time frames for the different planning steps;
• Appropriate mechanisms, processes and procedures for consultation and participation of     local communities, organs of state, and other role players in the IDP drafting process;
• An indication of the organizational arrangements for the IDP process;
• Binding plans and planning requirements, i.e.policy and legislation; and
• Mechanisms and procedures for vertical and horizontal alignment.";
            oPara4.Range.Font.Bold = 0;
            oPara4.Format.SpaceAfter = 10;
            oPara4.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara5;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara5 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara5.Range.Text = "The Service Delivery and Budget Implementation Plan (SDBIP) details the implementation of service delivery and the budget for the financial year in compliance with the MFMA (Act 56 of 2003).The SDBIP serves as a contract between the administration, council and community, exposing the objectives set by council as quantifiable outcomes that can be implemented by the administration over the next twelve months. The SDBIP facilitates the process of holding management accountable for their performance. It provides the basis for measuring performance in the delivery of services. This therefore means that the IDP and budget cannot be implemented without the SDBIP.";
            oPara5.Range.Font.Bold = 0;
            oPara5.Format.SpaceAfter = 24;
            oPara5.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara6;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara6 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara6.Range.Text = "The MFMA requires the following to be included in the SDBIP of a municipality;";
            oPara6.Range.Font.Bold = 0;
            oPara6.Format.SpaceAfter = 24;
            oPara6.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara7;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara7 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara7.Range.Text = @"• Monthly projections of each source of revenue to be collected
• Monthly projections of each vote’s expenditure(operating and capital) and revenue.
• Quarterly projections of each vote’s service delivery targets and performance indicators
• Information on expenditure and service delivery in each ward";
            oPara7.Range.Font.Bold = 0;
            oPara7.Format.SpaceAfter = 10;
            oPara7.Range.InsertParagraphAfter();

            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara8;
            oPara8 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara8.Range.Text = "2.	BINDING LEGISLATION AND PLANNING REQUIREMENTS";
            oPara8.Range.Font.Bold = 1;
            oPara8.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            oPara8.Range.InsertParagraphAfter();

            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara9;
            oPara9 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara9.Range.Text = "2.1.	IDP PROCESS PLAN";
            oPara9.Range.Font.Bold = 1;
            oPara9.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            oPara9.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara10;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara10 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara10.Range.Text = @"Process Plan is regulated by Local Government Municipal Systems Act, 2000 (Act 32 of 2000) Chapter 5 Section 28 & 29, stipulates that:

28. (1) Each municipal council, within a prescribed period after the start of its elected term, must adopt a process set out in writing to guide the planning, drafting, adoption and review of its integrated development plan.

The municipality must through appropriate mechanisms, processes and procedures established in terms of Chapter 4, consult the local community before adopting the process.

(3) A municipality must give notice to the local community of particulars of the process it intends to follow.

Process to be followed:

29. (1) the process followed by a municipality to draft its integrated development plan, including its consideration and adoption of the draft plan, must -

(a) be in accordance with a predetermined programme specifying timeframes for the different steps;

(b) through appropriate mechanisms, processes and procedures established in terms of Chapter 4, allow for :

(i) the local community to be consulted on its development needs and priorities;

(ii) the local community to participate in the drafting of the integrated development plan; and

(iii) organs of state, including traditional authorities and other role players to be identified and consulted on the drafting of the integrated development plan;

(c) provide for the identification of all plans and planning requirements binding on the municipality in terms of national and provincial legislation; and

(d) be consistent with any other matters that may be prescribed by regulation.

Chapter 5 and Section 25 (1) of the Municipal Systems (2000) indicate that:

Each Municipal Council must, within a prescribed period after the start of its elected term, adopt a single, all inclusive and strategic plan for the development of the municipality which -

a) Links integrates and coordinates plans and takes into account proposals for the development of the municipality;

b) Aligns the resources and capacity of the municipality with the implementation of the plan;

c) Complies with the provisions of this Chapter; and

d) Is compatible with national and provincial development plans and planning requirements binding on the municipality in terms of legislation.

 
The legislation indicates that in terms of Section 34 of the MSA:

A Municipal Council –

(a) must review in accordance its integrated development plan –

(i) annually in accordance with an assessment of its performance       measurements in terms of Section 41; and

(ii)  to the extent that changing circumstances so demand; and 

(b) may amend its IDP in accordance with a prescribed process.

In terms of the core components of integrated development plans, Chapter 5 and Section 26 of the Municipal Systems Act (2000) indicate that:

An integrated development plan must reflect – 

(a) The Municipal Council’s vision for the long term development of the     municipality with special emphasis on the municipality’s most critical development and internal transformation needs;

(b) An assessment of the existing level of development in the municipality, which must include an identification of communities which do not have access to basic municipal services;

(c) The Council’s development priorities and objectives for its elected term, including its local economic development aims and its internal transformation needs;

(d) The Council’s development strategies which must be aligned with any national and provincial sectoral plans and planning requirements binding on the municipality in terms of legislation;

(e) A spatial development framework which must include the provision of basic guidelines for a land use management system for the municipality;

(f) The Council’s operational strategies;

(g) Applicable disaster management plans;

(h) A financial plan, which must include a budget projection for at least the next three years; and

(i) The key performance indicators and performance targets determined in    terms of Section 41.
";
            oPara10.Range.Font.Bold = 0;
            oPara10.Format.SpaceAfter = 24;
            oPara10.Range.InsertParagraphAfter();

            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara11;
            oPara11 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara11.Range.Text = "2.2 	THE ANNUAL BUDGET";
            oPara11.Range.Font.Bold = 0;
            oPara11.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            oPara11.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara12;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara12 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara12.Range.Text = @"The Annual Budget and the IDP are inextricably linked to one another, something that has been formalized through the promulgation of the Local Government: Municipal Finance Management Act No. 56 of 2003.  Chapter 4 and Section 21 (1) of the Municipal Finance Management Act (MFMA) indicate that:

The Mayor of a municipality must - 

(b) at least 10 months before the start of the budget year, table in the Municipal Council a time schedule outlining key deadlines for –

The preparation, tabling and approval of the annual budget;

The annual review of -

aa) the integrated development plan in terms of Section 34 of the Municipal Systems Act; and

bb) the budget related policies.

i) the tabling and adoption of any amendments to the integrated development plan and the budget-related policies; and

ii) the consultative processes forming part of the processes referred to in subparagraphs (i). 
";
            oPara12.Range.Font.Bold = 0;
            oPara12.Format.SpaceAfter = 24;
            oPara12.Range.InsertParagraphAfter();

            //Insert a paragraph at the beginning of the document.
            Microsoft.Office.Interop.Word.Paragraph oPara13;
            oPara13 = oDoc.Content.Paragraphs.Add(ref oMissing);
            oPara13.Range.Text = "2.3	SERVICE DELIVERY AND BUDGET IMPLEMENTATION PLAN (SDBIP)";
            oPara13.Range.Font.Bold = 1;
            oPara13.Format.SpaceAfter = 24;    //24 pt spacing after paragraph.
            oPara13.Range.InsertParagraphAfter();

            //Insert another paragraph.
            Microsoft.Office.Interop.Word.Paragraph oPara14;
            oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            oPara14 = oDoc.Content.Paragraphs.Add(ref oRng);
            oPara14.Range.Text = @"According to Chapter 7 of Local Government: Municipal Finance Management Act 56 of 2003 section 53 (1), the mayor of a municipality must-

c) take all reasonable steps to ensure

i) that the municipality approves its annual budget before the start of the budget year;

ii) that the municipality's service delivery and budget implementation plan is approved by the mayor within 28 days after the approval of the budget; and

iii) that the annual performance agreements as required in terms of section 57(1)(b) of the Municipal Systems Act for the municipal manager and all senior managers-

aa) comply with this Act in order to promote sound financial management;

bb) are linked to the measurable performance objectives approved with the budget and to the service delivery and budget implementation plan; and
Act.
";
            oPara14.Range.Font.Bold = 0;
            oPara14.Format.SpaceAfter = 24;
            oPara14.Range.InsertParagraphAfter();

            ////Insert a 3 x 5 table, fill it with data, and make the first row
            ////bold and italic.
            //Microsoft.Office.Interop.Word.Table oTable;
            //Microsoft.Office.Interop.Word.Range wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //oTable = oDoc.Tables.Add(wrdRng, 3, 5, ref oMissing, ref oMissing);
            //oTable.Range.ParagraphFormat.SpaceAfter = 6;
            //int r, c;
            //string strText;
            //for (r = 1; r <= 3; r++)
            //    for (c = 1; c <= 5; c++)
            //    {
            //        strText = "r" + r + "c" + c;
            //        oTable.Cell(r, c).Range.Text = strText;
            //    }
            //oTable.Rows[1].Range.Font.Bold = 1;
            //oTable.Rows[1].Range.Font.Italic = 1;

            ////Add some text after the table.
            //Microsoft.Office.Interop.Word.Paragraph oPara4;
            //oRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //oPara4 = oDoc.Content.Paragraphs.Add(ref oRng);
            //oPara4.Range.InsertParagraphBefore();
            //oPara4.Range.Text = "And here's another table:";
            //oPara4.Format.SpaceAfter = 24;
            //oPara4.Range.InsertParagraphAfter();

            ////Insert a 5 x 2 table, fill it with data, and change the column widths.
            //wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //oTable = oDoc.Tables.Add(wrdRng, 5, 2, ref oMissing, ref oMissing);
            //oTable.Range.ParagraphFormat.SpaceAfter = 6;
            //for (r = 1; r <= 5; r++)
            //    for (c = 1; c <= 2; c++)
            //    {
            //        strText = "r" + r + "c" + c;
            //        oTable.Cell(r, c).Range.Text = strText;
            //    }
            //oTable.Columns[1].Width = oWord.InchesToPoints(2); //Change width of columns 1 & 2
            //oTable.Columns[2].Width = oWord.InchesToPoints(3);

            ////Keep inserting text. When you get to 7 inches from top of the
            ////document, insert a hard page break.
            //object oPos;
            //double dPos = oWord.InchesToPoints(7);
            //oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range.InsertParagraphAfter();
            //do
            //{
            //    wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //    wrdRng.ParagraphFormat.SpaceAfter = 6;
            //    wrdRng.InsertAfter("A line of text");
            //    wrdRng.InsertParagraphAfter();
            //    oPos = wrdRng.get_Information
            //                           (Microsoft.Office.Interop.Word.WdInformation.wdVerticalPositionRelativeToPage);
            //}
            //while (dPos >= Convert.ToDouble(oPos));
            //object oCollapseEnd = Microsoft.Office.Interop.Word.WdCollapseDirection.wdCollapseEnd;
            //object oPageBreak = Microsoft.Office.Interop.Word.WdBreakType.wdPageBreak;
            //wrdRng.Collapse(ref oCollapseEnd);
            //wrdRng.InsertBreak(ref oPageBreak);
            //wrdRng.Collapse(ref oCollapseEnd);
            //wrdRng.InsertAfter("We're now on page 2. Here's my chart:");
            //wrdRng.InsertParagraphAfter();

            ////Insert a chart.
            //Microsoft.Office.Interop.Word.InlineShape oShape;
            //object oClassType = "MSGraph.Chart.8";
            //wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //oShape = wrdRng.InlineShapes.AddOLEObject(ref oClassType, ref oMissing,
            //ref oMissing, ref oMissing, ref oMissing,
            //ref oMissing, ref oMissing, ref oMissing);

            ////Demonstrate use of late bound oChart and oChartApp objects to
            ////manipulate the chart object with MSGraph.
            //object oChart;
            //object oChartApp;
            //oChart = oShape.OLEFormat.Object;
            //oChartApp = oChart.GetType().InvokeMember("Application",
            //BindingFlags.GetProperty, null, oChart, null);

            ////Change the chart type to Line.
            //object[] Parameters = new Object[1];
            //Parameters[0] = 4; //xlLine = 4
            //oChart.GetType().InvokeMember("ChartType", BindingFlags.SetProperty,
            //null, oChart, Parameters);

            ////Update the chart image and quit MSGraph.
            //oChartApp.GetType().InvokeMember("Update",
            //BindingFlags.InvokeMethod, null, oChartApp, null);
            //oChartApp.GetType().InvokeMember("Quit",
            //BindingFlags.InvokeMethod, null, oChartApp, null);
            ////... If desired, you can proceed from here using the Microsoft Graph 
            ////Object model on the oChart and oChartApp objects to make additional
            ////changes to the chart.

            ////Set the width of the chart.
            //oShape.Width = oWord.InchesToPoints(6.25f);
            //oShape.Height = oWord.InchesToPoints(3.57f);

            //Add text after the chart.
            //wrdRng = oDoc.Bookmarks.get_Item(ref oEndOfDoc).Range;
            //wrdRng.InsertParagraphAfter();
            //wrdRng.InsertAfter("THE END.");

            //Close this form
        }

        protected void btnAddAction_Click(object sender, EventArgs e)
        {
            RowActionText.Visible = false;
            RowButtons.Visible = true;
            try
            {
                if (dtIDPAction == null)
                {
                    {
                        dtIDPAction = new DataTable();
                        DataColumn dc1IDPAction = new DataColumn("Actions");
                        dtIDPAction.Columns.Add(dc1IDPAction);

                    }

                    DataRow drIDPAction = dtIDPAction.NewRow();
                    drIDPAction[0] = txtIDPAction.Text;
                    dtIDPAction.Rows.Add(drIDPAction);
                    Session["dt_dtIDPAction"] = dtIDPAction;
                    gvActions.DataSource = dtIDPAction;
                    gvActions.DataBind();

                }
                else
                {
                    DataRow drIDPAction = dtIDPAction.NewRow();
                    drIDPAction[0] = txtIDPAction.Text;
                    dtIDPAction.Rows.Add(drIDPAction);
                    Session["dt_dtIDPAction"] = dtIDPAction;
                    gvActions.DataSource = dtIDPAction;
                    gvActions.DataBind();
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void gvActions_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            if (dtIDPAction.Rows.Count > 0)
            {

                dtIDPAction.Rows[e.RowIndex].Delete();
                gvActions.DataSource = dtIDPAction;
                gvActions.DataBind();

            }
        }
    }
}