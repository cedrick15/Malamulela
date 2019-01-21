<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="ProcessPlan.aspx.cs" Inherits="BSP.ProcessPlan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.css" rel="stylesheet" />
    <link href="sb-admin-2.css" rel="stylesheet" />
  <link href="style.css" rel="stylesheet" />
	
	

	</script>
	
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
                            Process Plan
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    </div>
                                        <table>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate" runat="server" Text="Start Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtStartDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                            <td class="Topcolumn1"><span runat="server" id="spanIDPDate" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RVDate" runat="server" ControlToValidate="txtStartDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>

                                                 </td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate0" runat="server" Text="End Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtEndDate" runat="server"  CssClass="textboxstyle" Enabled="False"></asp:TextBox></td>
                                            <td class="Topcolumn1"><span runat="server" id="span1" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEndDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>

                                            </td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblAction" runat="server" Text="Action" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drPhase" runat="server" CssClass="dropdownstyle" AutoPostBack="True" OnSelectedIndexChanged="drPhase_SelectedIndexChanged">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>ANALYSIS PHASE</asp:ListItem>
                                                        <asp:ListItem>STRATEGIES PHASE</asp:ListItem>
                                                        <asp:ListItem>PROJECT PHASE</asp:ListItem>
                                                        <asp:ListItem>INTEGRATION PHASE</asp:ListItem>
                                                        <asp:ListItem>APPROVAL PHASE</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> <span runat="server" id="spanIDPAction" class="spanstyle">*</span>
                                                    <asp:RequiredFieldValidator ID="RVAction" runat="server" ControlToValidate="drPhase" ErrorMessage="Action Cannot be Blank" InitialValue="Please Select..." Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>


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
                            <asp:Label ID="lblANALYSISPHASE" runat="server" Text="ANALYSIS PHASE" Visible="false"></asp:Label>
                            <br />
                            
                                        <asp:GridView ID="gvAnalysis" runat="server" AutoGenerateColumns="False" Width="990px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvAnalysis_RowDeleting" >
                                                   <Columns>
                                                       <asp:BoundField DataField="PLANNING ACTIVITY" HeaderText="PLANNING ACTIVITY">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TASK" HeaderText="TASK">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="RESPONSIBLE PERSON" HeaderText="RESPONSIBLE PERSON">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PARTICIPANTS" HeaderText="PARTICIPANTS">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TIME SCHEDULE" HeaderText="TIME SCHEDULE">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView" runat="server" CommandName="delete"
                                                    ForeColor="#339933">Delete</asp:LinkButton>
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
                            
                                        <table runat ="server" id ="AnalysisPhase" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label11" runat="server" Text="ANALYSIS PHASE" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">&nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label1" runat="server" Text="Planning Activities" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drAnalysisPlanning" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>COMPILATION OF IDP PROCESS PLAN AND BUDGET TIME SCHEDULE </asp:ListItem>
                                                        <asp:ListItem>Consideration Process Plan by Portfolio committee</asp:ListItem>
                                                        <asp:ListItem>Consideration Process Plan to Executive committee</asp:ListItem>
                                                        <asp:ListItem>Submit Process Plan to Rep Forum</asp:ListItem>
                                                        <asp:ListItem>Submit Process Plan to Council</asp:ListItem>
                                                        <asp:ListItem>Compilation of existing information</asp:ListItem>
                                                        <asp:ListItem>Wards and stakeholder level analysis</asp:ListItem>
                                                        <asp:ListItem>Reconciling existing information</asp:ListItem>
                                                        <asp:ListItem>Municipal wide analysis</asp:ListItem>
                                                        <asp:ListItem>Spatial analysis</asp:ListItem>
                                                        <asp:ListItem>Socio-economic. analysis</asp:ListItem>
                                                        <asp:ListItem>Formulation of Municipal priority issues </asp:ListItem>
                                                        <asp:ListItem>Issuing of detailed Financial planning and IDP review guidelines</asp:ListItem>
                                                        <asp:ListItem>In-depth analysis of priority issues</asp:ListItem>
                                                        <asp:ListItem>In-depth analysis of priority issues sector specific guidelines and programmes</asp:ListItem>
                                                        <asp:ListItem>Finalisation of analysis phase in terms of IDP Process Plan</asp:ListItem>
                                                        <asp:ListItem>Consolidation of analysis results</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label2" runat="server" Text="Task" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drAnalysisTask" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Compile and finalise time schedule</asp:ListItem>
                                                        <asp:ListItem>Submit Draft Process Plan</asp:ListItem>
                                                        <asp:ListItem>Consultation of Community stakeholders</asp:ListItem>
                                                        <asp:ListItem>COUNCIL Approval of the process plan</asp:ListItem>
                                                        <asp:ListItem>Identification of gaps & collection of information and SDBIP report</asp:ListItem>
                                                        <asp:ListItem>Solicitation of inputs from all wards</asp:ListItem>
                                                        <asp:ListItem>Reconciling activities 1. & 2.</asp:ListItem>
                                                        <asp:ListItem>Identification & analysis of gaps within municipal wide issues.</asp:ListItem>
                                                        <asp:ListItem>Identification and analysis</asp:ListItem>
                                                        <asp:ListItem>Identification & analysis of socio-economic issues</asp:ListItem>
                                                        <asp:ListItem>Review the municipal priority issues</asp:ListItem>
                                                        <asp:ListItem>Budget meeting</asp:ListItem>
                                                        <asp:ListItem>In-depth analysis of reviewed priority issues</asp:ListItem>
                                                        <asp:ListItem>In-depth analysis of reviewed sector specific issues</asp:ListItem>
                                                        <asp:ListItem>Compiling summary reports for each priority issues</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                             <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label16" runat="server" Text="Responsible Person" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drAnalysisResponsiblePerson" SelectionMode="Multiple" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>MANAGER IDP</asp:ListItem>
                                                        <asp:ListItem>Mayor supported by MM and  All Senior Managers</asp:ListItem>
                                                        <asp:ListItem>MAYOR</asp:ListItem>
                                                        <asp:ListItem>Ward councillors and Ward committee members</asp:ListItem>
                                                        <asp:ListItem>Mayor supported by all managers of departments</asp:ListItem>
                                                        <asp:ListItem>CFO</asp:ListItem>
                                                        <asp:ListItem>Mayor supported by all Senior managers of departments</asp:ListItem>
                                                        
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label17" runat="server" Text="Participants" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drAnalysisParticipants" runat="server" CssClass="dropdownstyle" >
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Steering committee</asp:ListItem>
                                                        <asp:ListItem>Municipal Manager</asp:ListItem>
                                                        <asp:ListItem>Directors</asp:ListItem>
                                                        <asp:ListItem>Assistant Directors</asp:ListItem>
                                                        <asp:ListItem>Manager</asp:ListItem>
                                                        <asp:ListItem>District Rep</asp:ListItem>
                                                        <asp:ListItem>CDW’S </asp:ListItem>
                                                        <asp:ListItem>EDP&Technical Portfolio committee</asp:ListItem>
                                                        <asp:ListItem>Executive Committee Exco Members</asp:ListItem>
                                                        <asp:ListItem>REP. FORUM Mayor</asp:ListItem>
                                                        <asp:ListItem>COUNCIL</asp:ListItem>
                                                        <asp:ListItem>Community members</asp:ListItem>
                                                        <asp:ListItem>All senior managers</asp:ListItem>
                                                        <asp:ListItem>Senior manager: Planning & Development</asp:ListItem>
                                                        <asp:ListItem>Representative forum</asp:ListItem>
                                                        <asp:ListItem>All HOD’s</asp:ListItem>
                                                        <asp:ListItem>Exco</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label26" runat="server" Text="Time Scheduled" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtAnalysisDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                                <td class="Topcolumn1"><span runat="server" id="span2" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnalysisDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:Button ID="btnAddAnalysis" runat="server" Text="Add" Width="20%" OnClick="btnAddAnalysis_Click"  />
                                                &nbsp;<asp:Button ID="btnCancelAnalysis" runat="server" Text="Cancel" Width="20%" OnClick="btnCancelAnalysis_Click"  />
                                                </td>
                                                <td class="Topcolumn1">

                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="lblSTRATEGIESPHASE" runat="server" Text="STRATEGIES PHASE" Visible="false"></asp:Label>
                                        <asp:GridView ID="gvStrategies" runat="server" AutoGenerateColumns="False" Width="990px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvStrategies_RowDeleting" OnSelectedIndexChanged="gvStrategies_SelectedIndexChanged" >
                                                   <Columns>
                                                       <asp:BoundField DataField="PLANNING ACTIVITY" HeaderText="PLANNING ACTIVITY">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TASK" HeaderText="TASK">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="RESPONSIBLE PERSON" HeaderText="RESPONSIBLE PERSON">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PARTICIPANTS" HeaderText="PARTICIPANTS">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TIME SCHEDULE" HeaderText="TIME SCHEDULE">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView0" runat="server" CommandName="delete"
                                                    ForeColor="#339933">Delete</asp:LinkButton>
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
                            
                                        <table runat ="server" id ="StrategiesPhase" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label12" runat="server" Text="STRATEGIES PHASE" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">&nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label31" runat="server" Text="Planning Activities" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drStrategiesPlanning" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Vision </asp:ListItem>
                                                        <asp:ListItem>Working objectives</asp:ListItem>
                                                        <asp:ListItem>Develop Vision Mission and Working Objectives at the Strategic Planning Session</asp:ListItem>
                                                        <asp:ListItem>Departmental Budget submissions (Budget and Business Plans) and Budget meeting</asp:ListItem>
                                                        <asp:ListItem>Localised strategic guidelines</asp:ListItem>
                                                        <asp:ListItem>Financial strategy</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label32" runat="server" Text="Task" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drStrategiesTask" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Reviewing the vision</asp:ListItem>
                                                        <asp:ListItem>Reviewing the objectives</asp:ListItem>
                                                        <asp:ListItem>Developing Vision ,Mission and Working objectives</asp:ListItem>
                                                        <asp:ListItem>Budget Presentation</asp:ListItem>
                                                        <asp:ListItem>Reviewing localised strategic objectives</asp:ListItem>
                                                        <asp:ListItem>Refine resource frames &amp; redesigning financial strategies</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                             <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label33" runat="server" Text="Responsible Person" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:ListBox ID="drStrategiesResponsiblePerson" runat="server" CssClass="dropdownstyle" SelectionMode="Multiple">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Municipal Manager</asp:ListItem>
                                                        <asp:ListItem>Mayor</asp:ListItem>
                                                        <asp:ListItem>CFO</asp:ListItem>
                                                        <asp:ListItem>Manager IDP</asp:ListItem>
                                                        <asp:ListItem>Chief Financial Officer</asp:ListItem>
                                                    </asp:ListBox>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label34" runat="server" Text="Participants" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drStrategiesParticipants" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Municipal Manager</asp:ListItem>
                                                        <asp:ListItem>All HOD</asp:ListItem>
                                                        <asp:ListItem>EXCO members</asp:ListItem>
                                                        <asp:ListItem>Chief whip &amp; Speaker</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label27" runat="server" Text="Time Scheduled" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtStrategiesDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                                <td class="Topcolumn1"><span runat="server" id="span3" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStrategiesDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:Button ID="btnAddStrategies" runat="server" Text="Add" Width="20%" OnClick="btnAddStrategies_Click"  />
                                                &nbsp;<asp:Button ID="btnCancelStrategies" runat="server" Text="Cancel" Width="20%" OnClick="btnCancelStrategies_Click" />
                                                </td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="lblPROJECTPHASE" runat="server" Text="PROJECT PHASE" Visible="false"></asp:Label>
                                        <asp:GridView ID="gvProject" runat="server" AutoGenerateColumns="False" Width="990px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvProject_RowDeleting" >
                                                   <Columns>
                                                       <asp:BoundField DataField="PLANNING ACTIVITY" HeaderText="PLANNING ACTIVITY">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TASK" HeaderText="TASK">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="RESPONSIBLE PERSON" HeaderText="RESPONSIBLE PERSON">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PARTICIPANTS" HeaderText="PARTICIPANTS">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TIME SCHEDULE" HeaderText="TIME SCHEDULE">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView1" runat="server" CommandName="delete"
                                                    ForeColor="#339933">Delete</asp:LinkButton>
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
                            
                                        <table runat ="server" id ="ProjectPhase" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label13" runat="server" Text="PROJECT PHASE" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">&nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label35" runat="server" Text="Planning Activities" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drProjectPlanning" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Setting indicators for objectivesEstablishing preliminary Budget allocations and Budget meeting</asp:ListItem>
                                                        <asp:ListItem>Establishing preliminary Budget allocations and Budget meetingReviewing project proposals</asp:ListItem>
                                                        <asp:ListItem>Reviewing project proposalsTarget group participation in project planning</asp:ListItem>
                                                        <asp:ListItem>Target group participation in project planningInvolvement of project partners</asp:ListItem>
                                                        <asp:ListItem>Involvement of project partnersSetting indicators for objectives</asp:ListItem>
                                                        <asp:ListItem>Project output/target/locations</asp:ListItem>
                                                        <asp:ListItem>Major activities/timing/responsible agencies</asp:ListItem>
                                                        <asp:ListItem>Cost/Budget estimates/Source of finance</asp:ListItem>
                                                        <asp:ListItem>Draft Project Phase</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label38" runat="server" Text="Task" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drProjectTask" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>To ensure a link between proposed projects and available resources</asp:ListItem>
                                                        <asp:ListItem>Reviewing project proposals</asp:ListItem>
                                                        <asp:ListItem>Ensuring that the proposed projects meet the expectations of the targeted groups</asp:ListItem>
                                                        <asp:ListItem>To ensure that the project proposals are linked to specific sector guidelines</asp:ListItem>
                                                        <asp:ListItem>To illustrate the impact of the project on the targeted groups</asp:ListItem>
                                                        <asp:ListItem>To provide a basis for a viable management tool</asp:ListItem>
                                                        <asp:ListItem>Presentation of draft Project Phase</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                             <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label41" runat="server" Text="Responsible Person" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drProjectResponsiblePerson" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>C.F.O</asp:ListItem>
                                                        <asp:ListItem>All HODs</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label44" runat="server" Text="Participants" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drProjectParticipants" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Steering committee</asp:ListItem>
                                                        <asp:ListItem>Task teams(clusters)</asp:ListItem>
                                                        <asp:ListItem>Targeted groups</asp:ListItem>
                                                        <asp:ListItem>Sector departments</asp:ListItem>
                                                        <asp:ListItem>Project Task Teams</asp:ListItem>
                                                        <asp:ListItem>All portfolio committees </asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label28" runat="server" Text="Time Scheduled" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtProjectDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                                <td class="Topcolumn1"><span runat="server" id="span4" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtProjectDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:Button ID="btnAddProject" runat="server" Text="Add" Width="20%" OnClick="btnAddProject_Click"  />
                                                &nbsp;<asp:Button ID="btnCancelProject" runat="server" Text="Cancel" Width="20%" OnClick="btnCancelProject_Click"  />
                                                </td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="lblINTEGRATIONPHASE" runat="server" Text="INTEGRATION PHASE" Visible="false"></asp:Label>
                                        <asp:GridView ID="gvIntegration" runat="server" AutoGenerateColumns="False" Width="990px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvIntegration_RowDeleting" >
                                                   <Columns>
                                                       <asp:BoundField DataField="PLANNING ACTIVITY" HeaderText="PLANNING ACTIVITY">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TASK" HeaderText="TASK">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="RESPONSIBLE PERSON" HeaderText="RESPONSIBLE PERSON">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PARTICIPANTS" HeaderText="PARTICIPANTS">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TIME SCHEDULE" HeaderText="TIME SCHEDULE">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView2" runat="server" CommandName="delete"
                                                    ForeColor="#339933">Delete</asp:LinkButton>
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
                            
                                        <table runat ="server" id ="IntegrationPhase" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label14" runat="server" Text="INTEGRATION PHASE" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">&nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label36" runat="server" Text="Planning Activities" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drIntegrationPlanning" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Screening of draft project proposals</asp:ListItem>
                                                        <asp:ListItem>Integrating projects and programmes</asp:ListItem>
                                                        <asp:ListItem>Five Year Financial Plan</asp:ListItem>
                                                        <asp:ListItem>Five Year Capital Investment Plan</asp:ListItem>
                                                        <asp:ListItem>Integrated Spatial development Framework</asp:ListItem>
                                                        <asp:ListItem>Integrated LED Programme</asp:ListItem>
                                                        <asp:ListItem>Integrated Environmental Programme</asp:ListItem>
                                                        <asp:ListItem>Integrated Institutional Programme</asp:ListItem>
                                                        <asp:ListItem>Workplace Skills Plan</asp:ListItem>
                                                        <asp:ListItem>Performance Management Indicators</asp:ListItem>
                                                        <asp:ListItem>Approval Phase of Budgetary / Affordability (Strategic Phase, Project Phase, Integration Phase)</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label39" runat="server" Text="Task" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drIntegrationTask" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Checking project compliance with priority issues &amp; strategies</asp:ListItem>
                                                        <asp:ListItem>To ensure a holistic approach to develop projects</asp:ListItem>
                                                        <asp:ListItem>To create MTEF for planning budget link</asp:ListItem>
                                                        <asp:ListItem>To inform the municipal Budget</asp:ListItem>
                                                        <asp:ListItem>To create a framework for integrated land-use management</asp:ListItem>
                                                        <asp:ListItem>To ensure that the IDP is focused on poverty reduction and gender equity</asp:ListItem>
                                                        <asp:ListItem>To ensure that proposed projects do not impact negatively on environment</asp:ListItem>
                                                        <asp:ListItem>To ensure institutional transformation &amp; integrated management systems</asp:ListItem>
                                                        <asp:ListItem>To ensure a holistic approach to skills Development and Training</asp:ListItem>
                                                        <asp:ListItem>Setting KPI’s</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                             <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label42" runat="server" Text="Responsible Person" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drIntegrationResponsiblePerson" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Mayor supported by all senior manager of departments</asp:ListItem>
                                                        <asp:ListItem>Manager IDP</asp:ListItem>
                                                        <asp:ListItem>Chief Financial Officer</asp:ListItem>
                                                        <asp:ListItem>Senior Manager: Technical Services</asp:ListItem>
                                                        <asp:ListItem>Senior Manager: Community Services </asp:ListItem>
                                                        <asp:ListItem>Senior Manager: Corporate services</asp:ListItem>
                                                        <asp:ListItem>Municipal Manager</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label45" runat="server" Text="Participants" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drIntegrationParticipants" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Representative Forum</asp:ListItem>
                                                        <asp:ListItem>Steering committee</asp:ListItem>
                                                        <asp:ListItem>Sector departments</asp:ListItem>
                                                        <asp:ListItem>EXCO members</asp:ListItem>
                                                        <asp:ListItem>Department of land affairs</asp:ListItem>
                                                        <asp:ListItem>Service Provider</asp:ListItem>
                                                        <asp:ListItem>Environmental specialist</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label29" runat="server" Text="Time Scheduled" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtIntegrationDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                                <td class="Topcolumn1"><span runat="server" id="span5" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIntegrationDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:Button ID="btnAddIntegration" runat="server" Text="Add" Width="20%" OnClick="btnAddIntegration_Click"  />
                                                &nbsp;<asp:Button ID="btnCancelIntegration" runat="server" Text="Cancel" Width="20%" OnClick="btnCancelIntegration_Click"  />
                                                </td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                                        <asp:Label ID="lblAPPROVALPHASE" runat="server" Text="APPROVAL PHASE" Visible="False"></asp:Label>
                                        <asp:GridView ID="gvApproval" runat="server" AutoGenerateColumns="False" Width="990px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvApproval_RowDeleting">
                                                   <Columns>
                                                       <asp:BoundField DataField="PLANNING ACTIVITY" HeaderText="PLANNING ACTIVITY">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TASK" HeaderText="TASK">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="RESPONSIBLE PERSON" HeaderText="RESPONSIBLE PERSON">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="PARTICIPANTS" HeaderText="PARTICIPANTS">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                                       <asp:BoundField DataField="TIME SCHEDULE" HeaderText="TIME SCHEDULE">

                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Delete" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView3" runat="server" CommandName="delete"
                                                    ForeColor="#339933">Delete</asp:LinkButton>
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
                            
                                        <table runat ="server" id ="ApprovalPhase" visible="false">
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label15" runat="server" Text="APPROVAL PHASE" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">&nbsp;</td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label37" runat="server" Text="Planning Activities" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drApprovalPlanning" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Providing opportunity for comments from Sector Departments</asp:ListItem>
                                                        <asp:ListItem>Draft adoption of Tabled Budget, SDBIP and revised IDP by Portfolio Committee</asp:ListItem>
                                                        <asp:ListItem>Draft adoption of Tabled Budget, SDBIP and revised IDP by Executive Committee</asp:ListItem>
                                                        <asp:ListItem>Draft adoption of Tabled Budget, SDBIP and revised IDP by council</asp:ListItem>
                                                        <asp:ListItem>Providing opportunity for comments from the public</asp:ListItem>
                                                        <asp:ListItem>Incorporating comments</asp:ListItem>
                                                        <asp:ListItem>Final Draft adoption of Tabled Budget, SDBIP and revised IDP by Portfolio committee</asp:ListItem>
                                                        <asp:ListItem>Final Draft adoption of Tabled Budget, SDBIP and revised IDP by Executive Committee</asp:ListItem>
                                                        <asp:ListItem>Final Draft adoption of Tabled Budget, SDBIP and revised IDP by council</asp:ListItem>
                                                        <asp:ListItem>Submission to MEC local government and Housing</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label40" runat="server" Text="Task" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drApprovalTask" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Integrating plans and programmes in compliance with sector guidelines</asp:ListItem>
                                                        <asp:ListItem>To adopt the IDP, Budget and SDBIP as a legal binding document</asp:ListItem>
                                                        <asp:ListItem>Publishing of a notice for public comments and Wards General meetings</asp:ListItem>
                                                        <asp:ListItem>To incorporate identified gaps into the IDP</asp:ListItem>
                                                        <asp:ListItem>To comply with legislation.</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                             <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label43" runat="server" Text="Responsible Person" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drApprovalResponsiblePerson" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Manager IDP</asp:ListItem>
                                                        <asp:ListItem>All HODs</asp:ListItem>
                                                        <asp:ListItem>Municipal Manager</asp:ListItem>
                                                        <asp:ListItem>Mayor</asp:ListItem>
                                                        <asp:ListItem>HODs</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                            <td class="Topcolumn1">&nbsp;</td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label46" runat="server" Text="Participants" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    <asp:DropDownList ID="drApprovalParticipants" runat="server" CssClass="dropdownstyle">
                                                        <asp:ListItem>Please Select...</asp:ListItem>
                                                        <asp:ListItem>Sector departments</asp:ListItem>
                                                        <asp:ListItem>Portfolio committees </asp:ListItem>
                                                        <asp:ListItem>EXCO Members </asp:ListItem>
                                                        <asp:ListItem>Council</asp:ListItem>
                                                        <asp:ListItem>Communities and other stakeholders</asp:ListItem>
                                                        <asp:ListItem>Steering committee</asp:ListItem>
                                                        <asp:ListItem>MEC: CoGHSTA</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td class="Topcolumn1"> &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="Label30" runat="server" Text="Time Scheduled" CssClass="labelstyle"></asp:Label></td>
                                                <td class="Topcolumn1"> <asp:TextBox ID="txtApprovalDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                                <td class="Topcolumn1"><span runat="server" id="span6" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtApprovalDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
                                            </tr>
                                            
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:Button ID="btnAddApproval" runat="server" Text="Add" Width="20%" OnClick="btnAddApproval_Click" />
                                                &nbsp;<asp:Button ID="btnCancelApproval" runat="server" Text="Cancel" Width="20%" OnClick="btnCancelApproval_Click" />
                                                </td>
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
&nbsp;<asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
&nbsp;<asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" />
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
