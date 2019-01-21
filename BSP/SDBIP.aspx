<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SDBIP.aspx.cs" Inherits="BSP.SDBIP" %>

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
                            SDBIP
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    </div>

                             <asp:Label ID="lblMUNICIPALINSTITUTION" runat="server" Text="MUNICIPAL TRANSFORMATION AND ORGANISATIONAL DEVELOPMENT" Visible="False"></asp:Label>
                                        <asp:GridView ID="gvMunicipalTransformation" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvGridview_RowCommand">
                                                   <Columns>
                                                        <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />

                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView3" runat="server" CommandName="UpdategvMunicipalTransformation"
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
                                        <asp:LinkButton ID="lbAMTAOD" runat="server" OnClick="lbAMTAOD_Click">ADD MUNICIPAL TRANSFORMATION AND ORGANISATIONAL DEVELOPMENT</asp:LinkButton>
                                        <table runat="server" id="tblAMTAOD" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate16" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMTAODWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate17" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMTAODProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMTAODDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODDevelopmentObjective_SelectedIndexChanged">
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
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate1" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate2" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODAnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate3" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:TextBox ID="txtAMTAODProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate4" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMTAODFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    	<asp:ListItem>MIG</asp:ListItem>
														<asp:ListItem>Own Funding</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate6" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate7" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate8" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate9" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAOD1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate10" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAOD2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate11" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAOD3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate12" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAOD4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate15" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtAMTAODPortfoliaOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate14" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMTAODDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
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
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnAddAMTAOD" runat="server" Text="Add" Visible="False" OnClick="btnAddAMTAOD_Click" />
&nbsp;<asp:Button ID="btnCancelAMTAOD" runat="server" Text="Cancel" OnClick="btnCancelAMTAOD_Click" Visible="False" />
&nbsp;</td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                            </table>

                             <asp:Label ID="lblMUNICIPALINSTITUTION0" runat="server" Text="SPATIAL RATIONALE" Visible="False"></asp:Label>
                                        <asp:GridView ID="gvSpacialRationale" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="true" ShowFooter="True" OnRowCommand="gvGridview_RowCommand">
                                                   <Columns>
													   <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />
                                                       
                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView12" runat="server" CommandName="UpdategvSpacialRationale"
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

							<asp:LinkButton ID="lbASR" runat="server" OnClick="lbASR_Click">ADD SPATIAL RATIONALE</asp:LinkButton>

							<table runat="server" id="tblASR" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate18" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlASRWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate23" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlASRProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label1" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlASRDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
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
                                                <td class="Topcolumn1"><asp:Label ID="Label2" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label3" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label4" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRAnnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label5" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:TextBox ID="txtASRProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label6" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlASRFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
														<asp:ListItem>MIG</asp:ListItem>
														<asp:ListItem>Own Funding</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label8" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label9" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label10" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASREndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label11" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASR1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label12" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASR2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label13" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASR3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label14" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASR4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label17" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtASRPortfolioOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label18" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlASRDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
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
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnaddASR" runat="server" Text="ADD" Visible="False" OnClick="btnaddASR_Click" />
&nbsp;<asp:Button ID="btnCancelASR" runat="server" Text="Cancel" OnClick="btnCancelASR_Click" Visible="False" />
&nbsp;</td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                            </table>

<asp:Label ID="lblMUNICIPALINSTITUTION1" runat="server" Text="BASIC SERVICE DELIVERY AND INFRASTRUCTURE DEVELOPMENT" Visible="False"></asp:Label><asp:GridView ID="gvBasicService" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvGridview_RowCommand"><Columns>
                                                       <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />
                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView9" runat="server" CommandName="UpdategvBasicService"
                                                    ForeColor="#339933">Update</asp:LinkButton></ItemTemplate><HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label></EmptyDataTemplate></asp:GridView><asp:LinkButton ID="lbABSDAID" runat="server" OnClick="lbABSDAID_Click">ADD BASIC SERVICE DELIVERY AND INFRASTRUCTURE DEVELOPMENT</asp:LinkButton><table runat="server" id="tblABSDAID" visible ="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate19" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlABSDAIDWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate24" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlABSDAIDProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label19" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlABSDAIDDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem><asp:ListItem>Sound Financial Management</asp:ListItem><asp:ListItem>Improve access to sustainable basis services</asp:ListItem><asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem><asp:ListItem>Integrated local economy</asp:ListItem><asp:ListItem>Integrated spartial and human settlement</asp:ListItem><asp:ListItem>Effective community participation</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label20" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label21" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label22" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDAnnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label23" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtABSDAIDProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label24" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlABSDAIDFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>MIG</asp:ListItem><asp:ListItem>Own Funding</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label26" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label27" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label28" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label29" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAID1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label30" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txt2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label31" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAID3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label32" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txt4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label35" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtABSDAIDPortfolioOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label36" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlABSDAIDDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>OM</asp:ListItem><asp:ListItem>CORPS</asp:ListItem><asp:ListItem>B and T</asp:ListItem><asp:ListItem>TECH</asp:ListItem><asp:ListItem>COMM</asp:ListItem><asp:ListItem>P and D</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td><td class="Topcolumn1"> &nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnAddABSDAID" runat="server" Text="ADD" Visible="False" OnClick="btnAddABSDAID_Click" />
&nbsp;<asp:Button ID="btnCancelABSDAID" runat="server" Text="Cancel" OnClick="btnCancelABSDAID_Click" Visible="False" />
&nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                            </table><asp:Label ID="lblMUNICIPALINSTITUTION2" runat="server" Text="LOCAL ECONOMIC DEVELOPMENT" Visible="False"></asp:Label><asp:GridView ID="gvLocalEconomic" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvGridview_RowCommand"><Columns>
                                                        <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />
                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView10" runat="server" CommandName="UpdategvLocalEconomic"
                                                    ForeColor="#339933">Update</asp:LinkButton></ItemTemplate><HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label></EmptyDataTemplate></asp:GridView><asp:LinkButton ID="lbALED" runat="server" OnClick="lbALED_Click">ADD LOCAL ECONOMIC DEVELOPMENT</asp:LinkButton><table runat="server" id="tblALED" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate20" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlALEDWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate25" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlALEDProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label37" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlALEDDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem><asp:ListItem>Sound Financial Management</asp:ListItem><asp:ListItem>Improve access to sustainable basis services</asp:ListItem><asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem><asp:ListItem>Integrated local economy</asp:ListItem><asp:ListItem>Integrated spartial and human settlement</asp:ListItem><asp:ListItem>Effective community participation</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label38" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label39" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label40" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDAnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label41" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtALEDProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label42" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlALEDFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>MIG</asp:ListItem><asp:ListItem>Own Funding</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label44" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label45" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label46" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label47" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALED1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label48" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALED2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label49" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALED3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label50" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALED4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label53" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtALEDPortfolioOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label54" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlALEDDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>OM</asp:ListItem><asp:ListItem>CORPS</asp:ListItem><asp:ListItem>B and T</asp:ListItem><asp:ListItem>TECH</asp:ListItem><asp:ListItem>COMM</asp:ListItem><asp:ListItem>P and D</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td><td class="Topcolumn1"> &nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnAddALED" runat="server" Text="ADD" Visible="False" OnClick="btnAddALED_Click" />
&nbsp;<asp:Button ID="btnCancelALED" runat="server" Text="Cancel" OnClick="btnCancelALED_Click" Visible="False" />
&nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                            </table><asp:Label ID="lblMUNICIPALINSTITUTION3" runat="server" Text="MUNICIPAL FINANCE MANAGEMENT AND VIABILITY" Visible="False"></asp:Label><asp:GridView ID="gvMunicipalFinace" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvGridview_RowCommand"><Columns>
                                                        <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />
                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView11" runat="server" CommandName="UpdategvMunicipalFinace"
                                                    ForeColor="#339933">Update</asp:LinkButton></ItemTemplate><HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label></EmptyDataTemplate></asp:GridView><asp:LinkButton ID="lbAMFMAV" runat="server" OnClick="lbAMFMAV_Click">ADD MUNICIPAL FINANCE MANAGEMENT AND VIABILITY</asp:LinkButton><table runat="server" id="tblAMFMAV" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate21" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPWardNumber3" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate26" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPProjectLocation3" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label55" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMFMAVDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem><asp:ListItem>Sound Financial Management</asp:ListItem><asp:ListItem>Improve access to sustainable basis services</asp:ListItem><asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem><asp:ListItem>Integrated local economy</asp:ListItem><asp:ListItem>Integrated spartial and human settlement</asp:ListItem><asp:ListItem>Effective community participation</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label56" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label57" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label58" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAVAnnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label59" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtAMFMAVProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label60" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMFMAVFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>MIG</asp:ListItem><asp:ListItem>Own Funding</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label62" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAVBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label63" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAVStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label64" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAVEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label65" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAV1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label66" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAV2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label67" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAV3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label68" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAMFMAV4thTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label71" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtPortfolioOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label72" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAMFMAVDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>OM</asp:ListItem><asp:ListItem>CORPS</asp:ListItem><asp:ListItem>B and T</asp:ListItem><asp:ListItem>TECH</asp:ListItem><asp:ListItem>COMM</asp:ListItem><asp:ListItem>P and D</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td><td class="Topcolumn1"> &nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnAddAMFMAV" runat="server" Text="ADD" Visible="False" OnClick="btnAddAMFMAV_Click" />
&nbsp;<asp:Button ID="btnCancelAMFMAV" runat="server" Text="Cancel" OnClick="btnCancelAMFMAV_Click" Visible="False" />
&nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                            </table>
							 <asp:Label ID="Label73" runat="server" Text="GOOD GOVERNACE AND PUBLIC PARTICIPATION" Visible="False"></asp:Label><asp:GridView ID="gvGoodGovernance" runat="server" AutoGenerateColumns="False" Width="1010px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowCommand="gvGridview_RowCommand"><Columns>
                                                        <asp:BoundField DataField="DevelopmentObjective" HeaderText="Development Objective" />
													   <asp:BoundField DataField="KeyPerformanceIndicatorsMeasurableObjective" HeaderText="Key Performance Indicators/Measurable Objective" />
													   <asp:BoundField DataField="Baseline" HeaderText="Baseline" />
													   <asp:BoundField DataField="AnnualTargets" HeaderText="Annual Targets" />
													   <asp:BoundField DataField="ProjectName" HeaderText="Project Name" />
													   <asp:BoundField DataField="FundingSource" HeaderText="Funding Source" />
													   <asp:BoundField DataField="Budget1819R000" HeaderText="Budget 18/19 R'000" />
													   <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
													   <asp:BoundField DataField="EndDate" HeaderText="End Date" />
													   <asp:BoundField DataField="FirstQTarget" HeaderText="1st Q Target" />
													   <asp:BoundField DataField="SecondQTarget" HeaderText="2nd Q Targets" />
													   <asp:BoundField DataField="ThirdQTarget" HeaderText="3rd Q Targets" />
													   <asp:BoundField DataField="FourthQTarget" HeaderText="4th Q Targets" />
													   <asp:BoundField DataField="PortfolioOfEvidence" HeaderText="Portfolio Of Evidence" />
													   <asp:BoundField DataField="Department" HeaderText="Dept." />
                                       
                                        <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView11" runat="server" CommandName="UpdategvGoodGovernance"
                                                    ForeColor="#339933">Update</asp:LinkButton></ItemTemplate><HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="80px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label></EmptyDataTemplate></asp:GridView><asp:LinkButton ID="lbAGGAPP" runat="server" OnClick="lbAGGAPP_Click">ADD GOOD GOVERNACE AND PUBLIC PARTICIPATION</asp:LinkButton><table runat="server" id="tblAGGAPP" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate22" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlAMTAODWardNumber_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>1</asp:ListItem>
                                                        <asp:ListItem>2</asp:ListItem>
                                                        <asp:ListItem>3</asp:ListItem>
                                                        <asp:ListItem>4</asp:ListItem>
                                                        <asp:ListItem>5</asp:ListItem>
                                                        <asp:ListItem>6</asp:ListItem>
                                                        <asp:ListItem>7</asp:ListItem>
                                                        <asp:ListItem>8</asp:ListItem>
                                                        <asp:ListItem>9</asp:ListItem>
                                                        <asp:ListItem>10</asp:ListItem>
                                                        <asp:ListItem>11</asp:ListItem>
                                                        <asp:ListItem>12</asp:ListItem>
                                                        <asp:ListItem>13</asp:ListItem>
                                                        <asp:ListItem>14</asp:ListItem>
                                                        <asp:ListItem>15</asp:ListItem>
                                                        <asp:ListItem>16</asp:ListItem>
                                                        <asp:ListItem>17</asp:ListItem>
                                                        <asp:ListItem>18</asp:ListItem>
                                                        <asp:ListItem>19</asp:ListItem>
                                                        <asp:ListItem>20</asp:ListItem>
                                                        <asp:ListItem>21</asp:ListItem>
                                                        <asp:ListItem>22</asp:ListItem>
                                                        <asp:ListItem>23</asp:ListItem>
                                                        <asp:ListItem>24</asp:ListItem>
                                                        <asp:ListItem>25</asp:ListItem>
                                                        <asp:ListItem>26</asp:ListItem>
                                                        <asp:ListItem>27</asp:ListItem>
                                                        <asp:ListItem>28</asp:ListItem>
                                                        <asp:ListItem>29</asp:ListItem>
                                                        <asp:ListItem>30</asp:ListItem>
                                                        <asp:ListItem>31</asp:ListItem>
                                                        <asp:ListItem>32</asp:ListItem>
                                                        <asp:ListItem>33</asp:ListItem>
                                                        <asp:ListItem>34</asp:ListItem>
                                                        <asp:ListItem>35</asp:ListItem>
                                                        <asp:ListItem>36</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate27" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label74" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem><asp:ListItem>Sound Financial Management</asp:ListItem><asp:ListItem>Improve access to sustainable basis services</asp:ListItem><asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem><asp:ListItem>Integrated local economy</asp:ListItem><asp:ListItem>Integrated spartial and human settlement</asp:ListItem><asp:ListItem>Effective community participation</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label75" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPKeyPerformanceIndicator" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label76" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label77" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPAnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label78" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtAGGAPPProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
                                                </td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label79" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>MIG</asp:ListItem><asp:ListItem>Own Funding</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label81" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPBudget1819" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label82" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPStartDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label83" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPEndDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label84" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPP1stTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label85" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPP2ndTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label86" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPP3rdTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label87" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPP4thTargets" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label90" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtAGGAPPPortfolioOfEvidence" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label91" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlAGGAPPDept" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>OM</asp:ListItem><asp:ListItem>CORPS</asp:ListItem><asp:ListItem>B and T</asp:ListItem><asp:ListItem>TECH</asp:ListItem><asp:ListItem>COMM</asp:ListItem><asp:ListItem>P and D</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td><td class="Topcolumn1"> &nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnAddAGGAPP" runat="server" Text="ADD" Visible="False" OnClick="btnAddAGGAPP_Click" />
&nbsp;<asp:Button ID="btnCancelAGGAPP" runat="server" Text="Cancel" OnClick="btnCancelAGGAPP_Click" Visible="False" />
&nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                            </table>
                                        
                                    <table runat="server" id="tblUpdate" visible="false"><tr>
                                                <td class="auto-style1"></td><td class="auto-style1">
                                                    <asp:Label ID="Label107" runat="server" Text="Update Form" CssClass="headings"></asp:Label></td><td class="auto-style1"></td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label108" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtUpdateProjectName" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label109" runat="server" Text="Funding Source" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtUpdateFundingSource" runat="server"  CssClass="textboxstyle" EnableTheming="True" Enabled="False"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label110" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtUpdateStartDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label111" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:TextBox ID="txtUpdateEndDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label92" runat="server" Text="Development Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlUpdateDevelopmentObjective" runat="server" CssClass="dropdownstyle" AutoPostBack="True"><asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>Promote Community well-being and Environmental  welfare</asp:ListItem><asp:ListItem>Sound Financial Management</asp:ListItem><asp:ListItem>Improve access to sustainable basis services</asp:ListItem><asp:ListItem Value="Improve governance and administration">Improve governance and services</asp:ListItem><asp:ListItem>Integrated local economy</asp:ListItem><asp:ListItem>Integrated spartial and human settlement</asp:ListItem><asp:ListItem>Effective community participation</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label93" runat="server" Text="Key Performance Indicators/Measurable Objective" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdateKPI" runat="server"  CssClass="textboxstyle" TextMode="MultiLine"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label94" runat="server" Text="Baseline" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdateBaseline" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label95" runat="server" Text="Annual Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdateAnualTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label98" runat="server" Text="Budget 18/19 R'000" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdateBudget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label101" runat="server" Text="1st Q Target" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdatefirsttarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label102" runat="server" Text="2nd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdateSecondTarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label103" runat="server" Text="3rd Q Targets" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdatethirdtarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label104" runat="server" Text="4th Q Targets " CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdatefourthtarget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label105" runat="server" Text="Portfolio Of Evidence" CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1"><asp:TextBox ID="txtUpdatePortfolio" runat="server"  CssClass="textboxstyle"></asp:TextBox></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label106" runat="server" Text="Dept." CssClass="labelstyle"></asp:Label></td><td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlUpdateDepartment" runat="server" CssClass="dropdownstyle" AutoPostBack="True"><asp:ListItem>Please Select...</asp:ListItem><asp:ListItem>OM</asp:ListItem><asp:ListItem>CORPS</asp:ListItem><asp:ListItem>B and T</asp:ListItem><asp:ListItem>TECH</asp:ListItem><asp:ListItem>COMM</asp:ListItem><asp:ListItem>P and D</asp:ListItem></asp:DropDownList></td><td class="Topcolumn1">&nbsp;</td></tr><tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td><td class="Topcolumn1"> &nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" /><asp:Button ID="btnCancelUpdate" runat="server" Text="Cancel" OnClick="btnCancelUpdate_Click" /></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                            <br />
                            
                            <table runat="server" id="tlbUpdate1" visible ="false" >
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    &nbsp;&nbsp;</td><td class="Topcolumn1"></td>
                                            </tr>
                            </table>
                                        
                                    </form>
                               
                 
</body>
</html>
