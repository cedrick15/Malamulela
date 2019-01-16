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
    public partial class SearchIDP : System.Web.UI.Page
    {
        DataTable dtIDPAction;
        protected void Page_Load(object sender, EventArgs e)
        {
            string PCName = Dns.GetHostEntry(Request.ServerVariables["REMOTE_ADDR"]).HostName;
            lblPCName.Text = PCName;
            if (!this.IsPostBack)
            {
                this.BindData();
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
        protected void BindData()
        {
            using (SqlConnection con = new SqlConnection("Data Source = DESKTOP-IG73UCV\\SQLEXPRESS; Database = PerformanceManagement; Integrated Security = SSPI"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select Date, Actions from ProcessPlan", con);

                SqlDataReader dr = cmd.ExecuteReader();
                gvActions.DataSource = dr;
                if (dr.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);
                   
                    gvActions.DataSource = dt;
                    gvActions.DataBind();
                }
              //  gvActions.DataBind();
                con.Close();
            }
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            gvActions.PageIndex = e.NewPageIndex;
            this.BindData();
        }
        protected void gvActions_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string eCmdName = e.CommandName;
            string eCmdArg = e.CommandArgument.ToString();

            if (eCmdName == "Community")
            {
                Session["Supplier Name"] = eCmdArg;
                Response.Redirect("/CommunityBasedPlanning.aspx");
            }
            if (eCmdName == "Analysis")
            {
                Session["Supplier Name"] = eCmdArg;
                Response.Redirect("/Analysis.aspx");
            }
            if (eCmdName == "ProjectPhase")
            {
                Session["Supplier Name"] = eCmdArg;
                Response.Redirect("/ProjectPhase.aspx");
            }
            if (eCmdName == "Community")
            {
                Session["Supplier Name"] = eCmdArg;
                Response.Redirect("/CommunityBasedPlanning.aspx");
            }
        }
    }
}