<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProcessPlan.aspx.cs" Inherits="BSP.SearchProcessPlan" %>

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
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
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
													   <asp:TemplateField HeaderText="SDBIP" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkInvoiceView3" runat="server" CommandName="SDBIP"
                                                    ForeColor="#339933">SDBIP</asp:LinkButton>
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
                            <br />
                            
                            
                                        
                                    </form>
                                </div>
                                
                            </div>
                            
                        </div>
                       
        </div>                
    </form>
                        
</body>
</html>
