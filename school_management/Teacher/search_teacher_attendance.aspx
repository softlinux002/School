﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="search_teacher_attendance.aspx.cs" Inherits="Teacher_search_teacher_attendance" %>

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

    <script type="text/javascript" src="Scripts/jquery.js"></script>
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

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Search Teacher Attendance</strong></h3>
                                    <ul class="panel-controls">
                                      <%--  <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("teacher_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Teacher No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tno" runat="server" Text='<%#Eval("teacher_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Joining Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_jdate" runat="server" Text='<%#Eval("joining_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Teacher name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tname" runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Address1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_address1" runat="server" Text='<%#Eval("address1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <%--<asp:TemplateField HeaderText="Address2">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_address2" runat="server" Text='<%#Eval("address2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                     <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mob" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Maritial Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mstatus" runat="server" Text='<%#Eval("maritial_status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Blood Group">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_bgroup" runat="server" Text='<%#Eval("blood_group") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Experience(Year)">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_texpyear" runat="server" Text='<%#Eval("total_exp_year") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Experience(Month)">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tepmonth" runat="server" Text='<%#Eval("total_exp_month") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Exp Detail">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_expdetail" runat="server" Text='<%#Eval("experience_detail") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Password">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_pass" runat="server" Text='<%#Eval("password") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Teacher ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tid" runat="server" Text='<%#Eval("teacher_tid") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Teacher Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("image") %>' />
                                            <%--<asp:Label ID="lbl_pcode" runat="server" Text='<%#Eval("image") %>'></asp:Label>--%>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>

                                    <br /><br /><br /><br /><br />
                                    <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Attendance</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>--%>
                                                
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div style="position:relative; text-align:center;">
                            <asp:LinkButton ID="prev_linkbutton" runat="server" OnClick="prev_linkbutton_click" ><img src="Images/atnd_arrow-l.png" width="7" border="0"  height="13" /></asp:LinkButton>
                            <asp:Label ID="MonthLabel" runat="server" /><asp:Label ID="Label1" runat="server"
                                Text="/"></asp:Label>
                            <asp:Label ID="YearLabel" runat="server" />
                            <asp:LinkButton ID="next_linkbutton" runat="server" OnClick="next_linkbutton_click" ><img src="Images/atnd_arrow.png" border="0" width="7"  height="13" /></asp:LinkButton>
                                
                                
                                <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                
                                </asp:Repeater>
                                <asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="Repeater2_ItemDataBound">
                                <ItemTemplate>
                                
                                            <asp:Label ID="lbl_tname" runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label> 
                                            <br />Teacher ID:<asp:Label ID="lbl_tid" runat="server" Text='<%#Eval("teacher_tid") %>'></asp:Label></td>
                                            <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
                                           
                                            </asp:Repeater>
                                </asp:Repeater>
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
                                            <asp:Button ID="submint_btn" class="btn btn-primary pull-right" runat="server" Text="Search" OnClick="search_btn_click" Visible="false" />
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
