<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="student_attandence_search.aspx.cs" Inherits="Admin_student_attandence_search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Search Student Attandence</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
        <asp:Panel ID="Panel1" runat="server">
        
                                <div class="panel-body">
                                

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>
                                             
                                            </div>                                            
                                           
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Id</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="sid_txt" runat="server" class="form-control"></asp:TextBox>
                                              
                                            </div>                                            
                                    
                                        </div>
                                    </div>


                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">From Date</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                <asp:TextBox ID="from_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="from_txt" />
                                                                                      
                                            </div>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">To Date</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                <asp:TextBox ID="to_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="to_txt" />
                                                                                        
                                            </div>
                                           
                                        </div>
                                    </div>

                                   

                                   <asp:GridView ID="GridView2" runat="server">
                                    </asp:GridView>

                                </div>

                                </asp:Panel>
                                 
                                <div class="panel-footer">

                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" />
                                        <asp:Button ID="Search_btn" class="btn btn-primary pull-right" runat="server" Text="Search" />
                                  
                                </div>
                            </div>
                            </div>

</asp:Content>

