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
    public partial class Mid_Year : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
            this.BindDatagvMidYear();
        }
        protected void BindDatagvMidYear()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from SDBIP where StartDate >= CONVERT(datetime, 'july 1 2019') and EndDate <= CONVERT(datetime,'june 30 2020')", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvMidYear.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvMidYear.DataSource = dt;
                    gvMidYear.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void gvMidYear_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "UpdategvMidYear")
            {
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
                tblMidYear.Visible = true;
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
            tblMidYear.Visible = false;
        }
    }
}