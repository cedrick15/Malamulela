<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchIDP.aspx.cs" Inherits="BSP.SearchIDP" %>

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
                                    <a href="RegisterProcessPlan.aspx">Register Process Plan</a>
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
                            Dashboard
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    <form role="form">
                                        <asp:GridView ID="gvActions" runat="server" AutoGenerateColumns="False" Width="1020px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvActions_RowDeleting" OnPageIndexChanging="OnPaging" OnRowCommand="gvActions_RowCommand">
                                                   <Columns>
                                                       <asp:BoundField DataField="Date" HeaderText="Date" >
                                                       <ItemStyle Width="80px" />
                                                       </asp:BoundField>
                                                       <asp:BoundField DataField="Actions" HeaderText="Actions">
                                                    <ItemStyle CssClass="gridItemStyle" />
                                                </asp:BoundField>
                                       
                                        <asp:TemplateField HeaderText="Community Based" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkCommunity" runat="server" CommandName="Community"
                                                    ForeColor="#339933">Community Based</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="120px"></ItemStyle>
                                        </asp:TemplateField>
                                                       <asp:TemplateField HeaderText="Analysis" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkAnalysis" runat="server" CommandName="Analysis"
                                                    ForeColor="#339933">Analysis</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="55px"></ItemStyle>
                                        </asp:TemplateField>
                                                       <asp:TemplateField HeaderText="Project Phase" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkProjectPhase" runat="server" CommandName="ProjectPhase"
                                                    ForeColor="#339933">Project Phase</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                        </asp:TemplateField>
                                                       <asp:TemplateField HeaderText="View" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView" runat="server" CommandName="View"
                                                    ForeColor="#339933">View</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="60px"></ItemStyle>
                                        </asp:TemplateField>
                                                       <asp:TemplateField HeaderText="Update" ItemStyle-Width="80px" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update"
                                                    ForeColor="#339933">Update</asp:LinkButton>
                                            </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center" Width="60px"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>
                                                        <HeaderStyle CssClass="gridHeaderStyle"/>
                                            <FooterStyle CssClass="gridFooterStyle" />
                                            <AlternatingRowStyle CssClass="gridAlternativeRowStyle" />
                                            <EmptyDataTemplate>
                                                <asp:Label ID="lblOrderItems" runat="server" Text="No Actions for this IDB." CssClass="requiredValidators"></asp:Label>
                                            </EmptyDataTemplate>
                                                       
                                                    </asp:GridView> 
                                        
                                        
                                        
                                    </form>
                                </div>
                                
                            </div>
                            
                        </div>
                       
            
               
                        <div class="panel-footer">
                            
                        </div>
        </div>                
    </form>
                        
</body>
</html>


