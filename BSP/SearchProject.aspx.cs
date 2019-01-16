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
    public partial class SearchProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
                lblPCName.Text = PCName;
                this.BindProject();
            }
            else
            {


            }
        }

        protected void BindProject()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select WardNumber,ProjectName,ProjectLocation,KeyPerformanceArea,Budget,SourceofFunds,StartDate,EndDate from ProjectPhase", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvProjectSearch.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    gvProjectSearch.DataSource = dt;
                    gvProjectSearch.DataBind();
                }
                //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void gvProjectSearch_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SDBIP")
            {
                tblSDBIP.Visible = true;
                GridViewRow row = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);

                

                string ProjectName = row.Cells[1].Text;
                string KPA = row.Cells[3].Text;
                string FundingSource = row.Cells[5].Text;
                
                txtKPA.Text = KPA;
                txtProjectName.Text = ProjectName;
                txtFundingSource.Text = FundingSource;
            }
        }
    }
}