<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectPhase.aspx.cs" Inherits="BSP.ProjectPhase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="sb-admin-2.css" rel="stylesheet" />
  <link href="style.css" rel="stylesheet" />
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
                            Project Phase
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    </div>

                             <asp:Label ID="lblMUNICIPALINSTITUTION" runat="server" Text="MUNICIPAL INSTITUTION" Visible="False"></asp:Label>
                                        <asp:GridView ID="gvProjectPhase" runat="server" AutoGenerateColumns="False" Width="1030px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvProjectPhase_RowDeleting">
                                                   <Columns>
                                                       <asp:BoundField DataField="PROJECT ID" HeaderText="PROJECT ID">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="WARD NUMBER" HeaderText="WARD NUMBER">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PROJECT NAME" HeaderText="PROJECT NAME">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PROJECT LOCATION (VILLAGE)" HeaderText="PROJECT LOCATION (VILLAGE)">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="KEY PERFORMANCE AREA" HeaderText="KEY PERFORMANCE AREA">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="SOURCE OF FUND" HeaderText="SOURCE OF FUND" />
                                                       <asp:BoundField DataField="YEAR 1" HeaderText="YEAR 1">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="YEAR 2" HeaderText="YEAR 2">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="YEAR 3" HeaderText="YEAR 3">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="YEAR 4" HeaderText="YEAR 4">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="YEAR 5" HeaderText="YEAR 5">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label>
                                            </EmptyDataTemplate>
                                                       
                                                    </asp:GridView>
                                        <table runat="server" id="tblProjectPhase">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate" runat="server" Text="Project ID" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtProjectID" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate1" runat="server" Text="Ward Number" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlWardNumber" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="ddlWardNumber_SelectedIndexChanged">
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
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate2" runat="server" Text="Project Name" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtProjectName" runat="server"  CssClass="textboxstyle" TextMode="MultiLine" AutoPostBack="True" OnTextChanged="txtProjectName_TextChanged"></asp:TextBox></td>
                                            <td class="Topcolumn1">
												<asp:Label ID="lblProjectName" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="#CC0000"></asp:Label>
												</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate3" runat="server" Text="Project Location (Village)" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlProjectLocation" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate10" runat="server" Text="Key Performance Area" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlKPA" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
														 <asp:ListItem>Municipal Transformation and Organisational Development</asp:ListItem>
														<asp:ListItem>Spatial Rationale</asp:ListItem>
														<asp:ListItem>Basic Service Delivery and Infrastructure Development</asp:ListItem>
														<asp:ListItem>Local Economic Development</asp:ListItem>
														<asp:ListItem>Municipal Finance Management and Viability</asp:ListItem>
														<asp:ListItem>Good Governance and Public Participation</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate4" runat="server" Text="Budget" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtBudget" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate5" runat="server" Text="Source of Funds" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="ddlFundingSource" runat="server" CssClass="dropdownstyle" AutoPostBack="True">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    	<asp:ListItem>MIG</asp:ListItem>
														<asp:ListItem>Own Funding</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate7" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtStartDate" runat="server"  CssClass="textboxstyle" Enabled="False" Width="180px"></asp:TextBox>
                                                    <asp:DropDownList ID="ddlStartDate" runat="server" CssClass="dropdownstyle" AutoPostBack="True" Height="25px" Width="140px">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">
												<span runat="server" id="spanIDPDate" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RVDate" runat="server" ControlToValidate="txtStartDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate8" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtEndDate" runat="server"  CssClass="textboxstyle" Enabled="False" Width="180px"></asp:TextBox>
                                                    <asp:DropDownList ID="ddlEndDate" runat="server" CssClass="dropdownstyle" AutoPostBack="True" Height="25px" Width="140px">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1"><span runat="server" id="span1" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEndDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
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
                            <asp:LinkButton ID="lnkAddProject" runat="server" OnClick="lnkAddProject_Click" Visible="false">Add Project</asp:LinkButton>
                            <br />
                            
                            <table>
                                <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1">
                                                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
&nbsp;<asp:Button ID="btnadd" runat="server" Text="ADD" OnClick="btnadd_Click" />
&nbsp;</td>
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


