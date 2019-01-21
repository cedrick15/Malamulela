<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProject.aspx.cs" Inherits="BSP.SearchProject" %>

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
			width: 340px;
			padding-left: 15px;
			background-color: #F2F3F4;
			height: 24px;
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
                            <a href=""> IDP</a>
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
                            Search Project
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    </div>
                                        
                                        <asp:GridView ID="gvProjectSearch" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvProjectSearch_RowCommand">
                                                   <Columns>
													   <asp:BoundField DataField="WardNumber" HeaderText="Ward Number" />
													   <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" />
													   <asp:BoundField DataField="ProjectLocation" HeaderText="Project Location" />
													   <asp:BoundField DataField="KeyPerformanceArea" HeaderText="Key Performance Area" />
													   <asp:BoundField DataField="Budget" HeaderText="Budget" />
													   <asp:BoundField DataField="SourceofFunds" HeaderText="Source of Funds" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label>
                                            </EmptyDataTemplate>
                                                       
                                                    </asp:GridView>
                            <br />
                           <table runat="server" id="tblSDBIP" visible="false">
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate17" runat="server" Text="Key Performance Area" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="auto-style1">
                                                    <asp:TextBox ID="txtKPA" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox>
                                                </td>
                                            <td class="auto-style1"></td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate18" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:TextBox ID="txtProjectName" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate4" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:TextBox ID="txtFundingSource" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
														<asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem>
														<asp:ListItem>Sound Financial Management</asp:ListItem>
														<asp:ListItem>Improve access to sustainable basis services</asp:ListItem>
														<asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem>
														<asp:ListItem>Integrated local economy</asp:ListItem>
														<asp:ListItem>Integrated spartial and human settlement</asp:ListItem>
														<asp:ListItem>Effective community participation</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate0" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate1" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate2" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1">&nbsp;</td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    &nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate6" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate7" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate8" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate9" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txt1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate10" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txt2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate11" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txt3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate12" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txt4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="auto-style1"><asp:Label ID="lblIDPDate13" runat="server" Text="19/20 " CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="auto-style1"><asp:TextBox ID="txt1920" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="auto-style1"></td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate16" runat="server" Text="20/21 " CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txt2021" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate15" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtPortfoliaOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate14" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
														 <asp:ListItem>OM</asp:ListItem>
														<asp:ListItem>CORPS</asp:ListItem>
														<asp:ListItem>B and T</asp:ListItem>
														<asp:ListItem>TECH</asp:ListItem>
														<asp:ListItem>COMM</asp:ListItem>
														<asp:ListItem>P and D</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
&nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" />
&nbsp;<asp:Button ID="btnPrint" runat="server" Text="Print" />
                                                </td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                            </table>
                                        
                                    </form>
                                </div>
                                
                            </div>
                            
                        </div>
                       
        </div>                
    </form>
                        
</body>
</html>
