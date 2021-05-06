﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="View_timetable.aspx.cs" Inherits="Teacher_View_timetable" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
    <div class="form-horizontal">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Attendance</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
     
                                <div class="panel-body">
                                   

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Visible="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            S.No.</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ano" runat="server" Text='<%#Eval("admission_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adate" runat="server" Text='<%#Eval("admissiondate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Bloodgroup">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_bgroup" runat="server" Text='<%#Eval("bloodgroup") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Address1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adrs1" runat="server" Text='<%#Eval("address1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Phone">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_phone" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("image") %>' />
                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Doc Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_docname" runat="server" Text='<%#Eval("document_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Doc Image">
                                        <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("doc_image") %>' />
                                         
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                                    <br /><br /><br /><br /><br />
                                  
                                                
                           <asp:Panel ID="Panel1" runat="server">
                             <!-- END div class="ea_pdf" -->
                                
                                
                                <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                
                                </asp:Repeater>
                                <asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="Repeater2_ItemDataBound">
                                <ItemTemplate>
                                
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("day") %>'></asp:Label> 
                                            </td>
                                            <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
										<td style="text-align:center;"><asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("a") %>'></asp:Label></td>
                                      
                                            </asp:Repeater>
                                </asp:Repeater>
                               
                                        <asp:Button ID="submint_btn" class="btn btn-primary pull-right " runat="server" Text="Submit"/>
                                      
                                    
                                </div>

                                
                            </div>
                            </div>
                    </div>
                    <script>                        $('.at_abs').click(function (e) {
                            $(".ui-dialog.ui-widget-content").remove();
                            $("#employee-attendances-form").remove();
                        });
                        $('.abs').click(function (e) {
                            $(".ui-dialog.ui-widget-content").remove();
                            $("#employee-attendances-form").remove();
                        });

                    <script type="text/javascript">
                            jQuery('body').undelegate('#explorer_change', 'click').delegate('#explorer_change', 'click', function () { jQuery.ajax({ 'url': '/index.php?r=site/explorer&widget=s_a&rurl=attendance%2FstudentAttentance', 'cache': false, 'success': function (html) { jQuery("#explorer_handler").html(html) } }); return false; });
                        });
</ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
