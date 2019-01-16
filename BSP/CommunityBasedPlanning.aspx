<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommunityBasedPlanning.aspx.cs" Inherits="BSP.CommunityBasedPlanning" %>

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
                                    <a href="">Register Process Plan</a>
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
                            Community Based Planning
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                    <form role="form">
                                        <table>
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblIDPDate" runat="server" Text="Date" CssClass="labelstyle"></asp:Label></td>
                                                
                                               
                                               <td class="Topcolumn1"><asp:TextBox ID="txtIDPDate" runat="server"  CssClass="textboxstyle" TextMode="Date"></asp:TextBox></td>
                                            <td class="Topcolumn1"><span runat="server" id="spanIDPDate" class="spanstyle">*</span>
                                                <asp:RequiredFieldValidator ID="RVDate" runat="server" ControlToValidate="txtIDPDate" ErrorMessage="Date Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>

                                                 </td>
                                            </tr>
                                            
    
                                            <tr>
                                                <td class="Topcolumn1"><asp:Label ID="lblAction" runat="server" Text="Action" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1"><asp:TextBox ID="txtIDPAction" runat="server"  CssClass="textboxstyle"></asp:TextBox></td>
                                                <td class="Topcolumn1"> <span runat="server" id="spanIDPAction" class="spanstyle">*</span>
                                                    <asp:RequiredFieldValidator ID="RVAction" runat="server" ControlToValidate="txtIDPAction" ErrorMessage="Action Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>


                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"><span >&nbsp </span></td>
                                                <td class="Topcolumn1"> <asp:BulletedList runat="server" ID="tst"></asp:BulletedList></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"> </td>
                                                <td class="Topcolumn1"><asp:Button ID="btnSubmit" runat="server" Width="20%" Text="Submit"/>&nbsp&nbsp
                                                    <asp:Button ID="btnReset" runat="server" Text="Clear" Width="20%" />&nbsp&nbsp
                                                    <asp:Button ID="btnPrint" runat="server" Text="Print" Width="20%"/></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                        </table>
                                        
                                        
                                        
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

