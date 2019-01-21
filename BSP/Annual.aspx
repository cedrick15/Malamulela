<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Annual.aspx.cs" Inherits="BSP.Annual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="sb-admin-2.css" rel="stylesheet" />
  <link href="style.css" rel="stylesheet" />
	<style type="text/css">
		.auto-style1 {
			border-top: thin dashed black;
			width: 354px;
			padding-left: 15px;
			background-color: #F2F3F4;
		}
	</style>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                
                <a class="navbar-brand" href="Index.aspx">PERFORMANCE MANAGEMENT SYSTEM</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        
                        <asp:Label ID="lblPCName" runat="server"></asp:Label>
                    </a>
                          
                    
                </li>
                
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                       <li>
                            <a href="SearchIDP.aspx"> IDP</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="ProcessPlan.aspx">Register Process Plan</a>
                                </li>
                                <li>
                                    <a href="ProjectPhase.aspx">Project Phase</a>
                                </li>
								<li>
                                    <a href="SearchProject.aspx">Search Project</a>
                                </li>
                                <li>
                                    <a href="SDBIP.aspx">SDBIP</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Organizational Per Reports<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Quarterly.aspx">Quarterly Performance</a>
                                </li>
                                <li>
                                    <a href="Mid-Year.aspx">Mid-Year Performance</a>
                                </li>
								<li>
                                    <a href="Annual.aspx">Annual Performance</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                       
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                &nbsp
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Annual Report
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    </div>
							<asp:GridView ID="gvAnnual" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvAnnual_RowCommand">
                                                   <Columns>
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField HeaderText="Start Date" DataField="StartDate" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													      <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView3" runat="server" CommandName="UpdategvAnnualy"
                                                    ForeColor="#339933">Update</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label>
                                            </EmptyDataTemplate>
                                                       
                                                    </asp:GridView>
                                        <table runat="server" id="tblAnnualy" visible ="false">
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtDevelopmentObjective" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate0" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtKPI" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><span ><asp:Label ID="lblIDPDate4" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label>&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtBaseline" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate2" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtAnualTarget" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate3" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtProjectName" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate5" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtFundingSource" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate6" runat="server" Text="Budget" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtBudget" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate7" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtStartDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate8" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtEndDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate9" runat="server" Text="Mid Year Target" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtMidYearTarget" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate10" runat="server" Text="Mid Yaer Progress" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> 
                                                    <asp:DropDownList ID="ddlMidYearProgress" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Not Achieved</asp:ListItem>
                                                        <asp:ListItem>Achieved</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate17" runat="server" Text="Reason For Variance" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtReasonForVariance" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate18" runat="server" Text="Remedial Action/Intervention" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtRemedialAction" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate19" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtPortfolioOfEvidence" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate20" runat="server" Text="Upload" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> 
													<asp:FileUpload ID="FileUpload1" runat="server" />
												</td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate21" runat="server" Text="Department" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtDepartment" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1">&nbsp;</td>
                                                <td class="Topcolumn1"> 
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
													<asp:Button ID="btnSave" runat="server" Text="Save" />
												</td>
                                                <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="auto-style1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                                    </form>
                                </div>
                                
                            </div>
                            
                        </div>
                       
        </div>                
    </form>
                        
</body>
</html>
