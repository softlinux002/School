﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="student_complaint.aspx.cs" Inherits="Student_student_complaint" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    <link href="Stylesheets/dashboard.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/explorertab.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/flaticon.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/formelements.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/formstyle.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/style.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/custom-form-elements.js" type="text/javascript"></script>
    <script src="Scripts/highcharts.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>
         $("#lodrop").click(function () {
             if ($("#account_drop").is(':hidden')) {
                 $("#account_drop").show();
             }
             else {
                 $("#account_drop").hide();
             }
             return false;
         });
         $('#account_drop').click(function (e) {
             e.stopPropagation();
         });
         $(document).click(function () {
             if (!$("#account_drop").is(':hidden')) {
                 $('#account_drop').hide();
             }
         });
     });
         $("#book_drop").click(function () {
             if ($("#bookmark").is(':hidden')) {
                 $("#bookmark").show();
             }
             else {
                 $("#bookmark").hide();
             }
             return false;
         });
         $('#bookmark').click(function (e) {
             e.stopPropagation();
         });
         $(document).click(function () {
             if (!$("#bookmark").is(':hidden')) {
                 $('#bookmark').hide();
             }
         });
     });
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Complaint</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
     
                                <div class="panel-body">
                                
                                   

                                    <br /><br /><br /><br /><br />
                                   
        <asp:Label ID="Lbl_subid" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_classnmae" runat="server" Text="" Visible="false"></asp:Label>
           <asp:Label ID="lbl_section" runat="server" Text="" Visible="false"></asp:Label>
                                                
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div style="position:relative; text-align:center;">
                                   
                                       
                                   
                           
                                <div class="panel-footer">
                                    <button class="btn btn-default"></button>                                    
                                    <button class="btn btn-primary pull-right"></button>
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" onpageindexchanging="GridView1_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            S.No.</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                  


                                     <asp:TemplateField HeaderText="class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Roll_no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Complaint">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_commplaint" runat="server" Text='<%#Eval("complaint") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                 
                                    
                           </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                    </div>
                    <script>
                        $('.at_abs').click(function (e) {
                            $(".ui-dialog.ui-widget-content").remove();
                            $("#employee-attendances-form").remove();
                        });
                        $('.abs').click(function (e) {
                            $(".ui-dialog.ui-widget-content").remove();
                            $("#employee-attendances-form").remove();
                        });
                    <script type="text/javascript">

</asp:Content>
