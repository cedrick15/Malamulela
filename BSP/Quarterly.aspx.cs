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
    public partial class Quarterly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
            this.BindDatagvQuarter1();
            this.BindDatagvQuarter2();
            this.BindDatagvQuarter3();
            this.BindDatagvQuarter4();
        }
        protected void BindDatagvQuarter1()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where StartDate >= CONVERT(datetime, 'july 1 2019') and EndDate <= CONVERT(datetime,'june 30 2020')", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvQuarter1.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvQuarter1.DataSource = dt;
                    gvQuarter1.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvQuarter2()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where StartDate >= CONVERT(datetime, 'july 1 2019') and EndDate <= CONVERT(datetime,'june 30 2020')", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvQuarter2.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvQuarter2.DataSource = dt;
                    gvQuarter2.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvQuarter3()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where StartDate >= CONVERT(datetime, 'july 1 2019') and EndDate <= CONVERT(datetime,'june 30 2020')", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvQuarter3.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvQuarter3.DataSource = dt;
                    gvQuarter3.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void BindDatagvQuarter4()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where StartDate >= CONVERT(datetime, 'july 1 2019') and EndDate <= CONVERT(datetime,'june 30 2020')", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvQuarter4.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvQuarter4.DataSource = dt;
                    gvQuarter4.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void gvQuarter1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvQ1")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblQuarterly.Visible = true;
                string ProjectName = row.Cells[0].Text;
                string DevelopmentObjective = row.Cells[1].Text;
                string KPI = row.Cells[2].Text;
                string Baseline = row.Cells[3].Text;
                string AnnualTarget = row.Cells[4].Text;
                string StartDate = row.Cells[5].Text;
                string EndDate = row.Cells[6].Text;

                txtProjectName.Text = ProjectName;
                txtDevelopmentObjective.Text = DevelopmentObjective;
                txtKPI.Text = KPI;
                txtBaseline.Text = Baseline;
                txtAnualTarget.Text = AnnualTarget;
                txtStartDate.Text = StartDate;
                txtEndDate.Text = EndDate;

            }
        }
        protected void gvQuarter2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvQ2")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblQuarterly.Visible = true;
                string ProjectName = row.Cells[0].Text;
                string DevelopmentObjective = row.Cells[1].Text;
                string KPI = row.Cells[2].Text;
                string Baseline = row.Cells[3].Text;
                string AnnualTarget = row.Cells[4].Text;
                string StartDate = row.Cells[5].Text;
                string EndDate = row.Cells[6].Text;

                txtProjectName.Text = ProjectName;
                txtDevelopmentObjective.Text = DevelopmentObjective;
                txtKPI.Text = KPI;
                txtBaseline.Text = Baseline;
                txtAnualTarget.Text = AnnualTarget;
                txtStartDate.Text = StartDate;
                txtEndDate.Text = EndDate;

            }
        }
        protected void gvQuarter3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvQ3")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblQuarterly.Visible = true;
                string ProjectName = row.Cells[0].Text;
                string DevelopmentObjective = row.Cells[1].Text;
                string KPI = row.Cells[2].Text;
                string Baseline = row.Cells[3].Text;
                string AnnualTarget = row.Cells[4].Text;
                string StartDate = row.Cells[5].Text;
                string EndDate = row.Cells[6].Text;

                txtProjectName.Text = ProjectName;
                txtDevelopmentObjective.Text = DevelopmentObjective;
                txtKPI.Text = KPI;
                txtBaseline.Text = Baseline;
                txtAnualTarget.Text = AnnualTarget;
                txtStartDate.Text = StartDate;
                txtEndDate.Text = EndDate;

            }
        }
        protected void gvQuarter4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvQ4")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblQuarterly.Visible = true;
                string ProjectName = row.Cells[0].Text;
                string DevelopmentObjective = row.Cells[1].Text;
                string KPI = row.Cells[2].Text;
                string Baseline = row.Cells[3].Text;
                string AnnualTarget = row.Cells[4].Text;
                string StartDate = row.Cells[5].Text;
                string EndDate = row.Cells[6].Text;

                txtProjectName.Text = ProjectName;
                txtDevelopmentObjective.Text = DevelopmentObjective;
                txtKPI.Text = KPI;
                txtBaseline.Text = Baseline;
                txtAnualTarget.Text = AnnualTarget;
                txtStartDate.Text = StartDate;
                txtEndDate.Text = EndDate;

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            tblQuarterly.Visible = false;
        }
    }
}