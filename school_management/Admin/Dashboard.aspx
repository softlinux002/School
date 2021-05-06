<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>                    
                    <li class="active">Dashboard</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    
                    <!-- START WIDGETS -->                    
                    <div class="row">
                         <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">

                             <a href="addclass.aspx"> <img src="../dash/qq.jpg" height="90px" width="70%"/></a>
                               
                                <div style="margin-top: -5px;"><a href="addclass.aspx" style="color:White;  margin-top:10px; font-size:30px; font-weight:bold;
                                                                   text-decoration:none;color:white; ">Class</a></div>                            
                            </div>  
                            <!-- END WIDGET CLOCK -->
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">

                                                            <a href="student_info.aspx">  <img src="../dash/stu.jpg" height="90px" width="70%" /></a>
                                <div style="margin-top: -5px;"><a href="student_info.aspx" style="color:White;  font-size:30px; font-weight:bold; 
                                                                   text-decoration:none; ">Student</a>
                                </div>
                               
                                    
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                            <a href="addcomplaint.aspx"><img src="../dash/com.jpg" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="addcomplaint.aspx" style="color:White;  font-size:30px; font-weight:bold;
                                          text-decoration:none; ">Complaints</a></div>                            
                                             
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                        <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm">
                                <div class="widget-big-int plugin-clock">00:00</div>                            
                                <div class="widget-subtitle plugin-date">Loading...</div>
                                <div class="widget-controls">                                
                                  
                                </div>                            
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-clock-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>                            
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                      

                    </div>
                    <!-- END WIDGETS -->                    
                    
                    <div class="row">
                       <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                           <a href="teacher_info.aspx"> <img src="../dash/tea.jpg" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="teacher_info.aspx" style="color:White;  font-size:30px; font-weight:bold;text-decoration:none;
                                          color:white; ">Teacher</a>
                                </div>                            
                               
                                   
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                              <a href="parent_info.aspx"><img src="../dash/parents.png" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="parent_info.aspx" style="color:White;  font-size:30px; font-weight:bold; text-decoration:none; ">Parent
                                </a>
                                </div>                            
                               
                                                         
                                <%--<div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>   --%>                       
                                  
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->

                            
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                             <a href="add_subject.aspx"> <img src="../dash/book.jpg" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="add_subject.aspx" style="color:White;  font-size:30px; font-weight:bold;text-decoration:none; ">Subject
                                </a>
                                </div>                            
                               
                               <%--                          
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>     --%>    
                                                   
                            </div>  

                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                        <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                              <a href="timetable.aspx"><img src="../dash/cal.jpg"  height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="timetable.aspx" style="color:White; font-size:30px; font-weight:bold;text-decoration:none; ">Time Table
                                </a>
                                </div>                            
                               
                                <%--                         
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>        --%>                    
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                    </div>
                     <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                             <a href="add_fee.aspx"> <img src="../dash/fee.png" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="add_fee.aspx" style="color:White;  font-size:30px; font-weight:bold;text-decoration:none; ">Fees
                                </a>
                                </div>                            
                               
                               <%--                          
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>     --%>    
                                                   
                            </div>  

                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                    <div class="row">
                          <div class="col-md-3">
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                           <a href="add_quizquestion.aspx"><img src="../dash/qui.jpg" height="90px" width="70%" /></a> 
                                <div style="margin-top: -5px;"><a href="add_quizquestion.aspx" style="color:White;  font-size:30px; text-align:centr; font-weight:bold;
                                                                   text-decoration:none;color:white; ">Quiz</a>
                                </div>                            
                               
                                                
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                              <a href="noticeboard.aspx"><img src="../dash/notice.jpg" height="90px" width="70%" /></a>
                                <div style="margin-top: -5px;"><a href="noticeboard.aspx" style="color:White; font-size:30px; font-weight:bold; 
                                                                   text-decoration:none;">NoticeBoard</a>
                                </div>                            
                               
                                                         
                                <%--<div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>   --%>                         
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                          <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                              <a href="addevent.aspx"><img src="../dash/even.jpg" height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="addevent.aspx" style="color:White;  font-size:30px; font-weight:bold;text-decoration:none; ">Events</a>
                                </div>                            
                               
                               <%--                          
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>     --%>                       
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                        <div class="col-md-3">
                            
                            <!-- START WIDGET CLOCK -->
                            <div class="widget widget-danger widget-padding-sm" style="text-align:center;">
                              <a href="changepass.aspx"><img src="../dash/pass.jpg"  height="90px" width="70%"/></a>
                                <div style="margin-top: -5px;"><a href="changepass.aspx" style="color:white;  font-size:30px; font-weight:bold;text-decoration:none; ">Password
                                </a>
                                </div>                            
                               
                                <%--                         
                                <div class="widget-buttons widget-c3">
                                    <div class="col">
                                        <a href="#"><span class="fa fa-files-o"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-bell"></span></a>
                                    </div>
                                    <div class="col">
                                        <a href="#"><span class="fa fa-calendar"></span></a>
                                    </div>
                                </div>        --%>                    
                            </div>  
                            
                                                  
                            <!-- END WIDGET CLOCK -->
                            
                        </div>
                    </div>
                    
                    <!-- START DASHBOARD CHART -->
                                     
                    <!-- END DASHBOARD CHART -->
                    
                </div>
                <!-- END PAGE CONTENT WRAPPER -->  
</asp:Content>

