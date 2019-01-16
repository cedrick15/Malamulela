<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterProcessPlan.aspx.cs" Inherits="BSP.RegisterProcessPlan" %>

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
                            <a href="SearchIDP.aspx"> IDP</a>
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
                            Process Plan
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
                                            <tr >
                                                <td class="Topcolumn1">
                                                    <asp:LinkButton ID="lnkbtnActions" runat="server" OnClick="lnkbtnActions_Click">Add Actions</asp:LinkButton>
                                                </td >
                                                <td class="Topcolumn1">

                                                </td>
                                                <td class="Topcolumn1">

                                                </td>
                                            </tr>
                                            
    
                                            <tr runat="server" id="RowActionText" visible ="false">
                                                <td class="Topcolumn1"><asp:Label ID="lblAction" runat="server" Text="Action" CssClass="labelstyle"></asp:Label></td>
                                                
                                                <td class="Topcolumn1">
                                                    
                                                    
                                                    <asp:TextBox ID="txtIDPAction" runat="server"  CssClass="textboxstyle" Height="80px" TextMode="MultiLine"></asp:TextBox>
                                                    <br /> <asp:Button ID="btnAddAction" runat="server" Text="Add" Width="20%" OnClick="btnAddAction_Click" />
                                                </td>
                                                
                                                <td class="Topcolumn1"> <span runat="server" id="spanIDPAction" class="spanstyle">*</span>
                                                    <asp:RequiredFieldValidator ID="RVAction" runat="server" ControlToValidate="txtIDPAction" ErrorMessage="Action Cannot be Blank" InitialValue="" Font-Bold="True" Font-Names="Arial" ForeColor="Red"></asp:RequiredFieldValidator>
                                                     
                                                </td>
                                            </tr>
                                            <tr>
                                                
                                                    <asp:GridView ID="gvActions" runat="server" AutoGenerateColumns="False" Width="680px" CssClass="gridviewSize" AllowPaging="True" ShowFooter="True" OnRowDeleting="gvActions_RowDeleting">
                                                   <Columns>
                                                       <asp:BoundField DataField="Actions" HeaderText="Actions">
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
                                                
                                                
                                            </tr>
                                            
                                           
                                        </table>
                                        <div class="row">
                                        <table>
                                                 <tr runat="server" id="RowButtons" visible="false">
                                                <td class="Topcolumn1"> </td>
                                                <td class="Topcolumn1"><asp:Button ID="btnSubmit" runat="server" Width="20%" Text="Submit" OnClick="btnSubmit_Click" />&nbsp&nbsp
                                                    <asp:Button ID="btnReset" runat="server" Text="Clear" Width="20%" OnClick="btnReset_Click" />&nbsp&nbsp
                                                    <asp:Button ID="btnPrint" runat="server" Text="Print" Width="20%" OnClick="btnPrint_Click" /></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            <tr>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                                <td class="Topcolumn1"></td>
                                            </tr>
                                            </table>
                                        </div>
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

