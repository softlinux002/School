<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Demodash.aspx.cs" Inherits="Admin_Demodash" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
    //Function to disable Cntrl key/right click
    function DisableControlKey(e) {
        // Message to display
        var message = "Cntrl key/ Right Click Option disabled";
        // Condition to check mouse right click / Ctrl key press
        if (e.which == 17 || e.button == 2) {
            alert(message);
            return false;
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:Panel ID="Pnl_admin" runat="server">
    <!-- PAGE TITLE -->
    <div class="page-title">
        <h2 style="font-family:Cursive;">
            <span class="fa fa-arrow-circle-o-left"></span>Dashboard</h2>
    </div>
    <!-- END PAGE TITLE -->
    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <!-- TILES -->
        <asp:Panel ID="Panel1" runat="server">
           <div class="row">
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-graduation-cap"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Student</div>
                                    <div class="widget-subtitle">Total student in school</div>
                                </div>      
                                <div class="widget-controls">                                
                                    
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count">
               <asp:Label ID="Lbl_teacher" runat="server" Text="" ></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Teacher</div>
                                    <div class="widget-subtitle">Total Teacher In School</div>
                                </div>      
                                <div class="widget-controls">                                
                                   
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-2">
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_Parent" runat="server" Text=""></asp:Label>
                   </div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Total Parents</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>
                          <div class="col-md-2">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon">
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="lbl_present" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Total Student Present</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>
                        <div class="col-md-2">
                            
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
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/qq.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Class</p>
                        <div class="informer informer-default dir-bl">
                         
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/stu.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Student</p>
                        <div class="informer informer-default dir-bl">
                
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/com.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Complaints</p>
                        <div class="informer informer-default dir-bl">
                        
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/tea.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Teacher</p>
                        <div class="informer informer-default dir-bl">
                           
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/parents.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Parent</p>
                        <div class="informer informer-default dir-bl">
                           
                        </div>
                    </a>
                </div>

            </div>
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/cal.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Time Table</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                     <img src="../dash/fee.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Fees</p>
                        <div class="informer informer-danger dir-bl">
                            <%--<span class="fa fa-caret-down"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/qui.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Quiz</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/notice.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            NoticeBoard</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/even.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Events</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/bus.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Transport</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                     <img src="../dash/library.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Library</p>
                        <div class="informer informer-danger dir-bl">
                            <%--<span class="fa fa-caret-down"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/sub.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Subject</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="#" class="tile tile-primary  tile-valign">
                        <img src="../dash/marks.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Marks</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/leave.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Leave</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>
            </div>
            <asp:Panel ID="Pnl_adminpass" runat="server">
         
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/pass.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Password</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
               
            </div>
               </asp:Panel>
                <asp:Panel ID="Pnl_clerkpass" runat="server">
         
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/pass.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Password</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
               
            </div>
               </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-2">
                            <a href='<%#Eval("page_url")%>' class="tile tile-warning tile-valign">
                                <p style="font-size: 19px;">
                                    <%#Eval("page_name")%></p>
                                <div class="informer informer-default dir-bl">
                                    <span class="fa fa-globe"></span>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>
        <!-- END WIDGETS -->
    </div>
    <!-- END PAGE CONTENT WRAPPER -->
        </asp:Panel>

        <asp:Panel ID="Pnl_library" runat="server">
        <!-- PAGE TITLE -->
    <div class="page-title">
        <h2 style="font-family:Cursive;">
            <span class="fa fa-arrow-circle-o-left"></span>Dashboard</h2>
    </div>
    <!-- END PAGE TITLE -->
    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <!-- TILES -->
        <asp:Panel ID="Panel4" runat="server">
        <div class="row">
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_totalbooks" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Books</div>
                                    <div class="widget-subtitle">Total Books</div>
                                </div>      
                                <div class="widget-controls">                                
                                    
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count">
               <asp:Label ID="Lbl_issuebook" runat="server" Text="" ></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Issue Books</div>
                                    <div class="widget-subtitle">No Of Books are Issue</div>
                                </div>      
                                <div class="widget-controls">                                
                                   
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <%--<div class="col-md-2">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon">
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_returnbook" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Return Books</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>--%>
                        <div class="col-md-2">
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_vendor" runat="server" Text=""></asp:Label>
                   </div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Toatal Vendors</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>
                          
                        <div class="col-md-2">
                            
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
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/Library card.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Generate Card</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-globe"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/cupboard.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Cupboard</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#"" class="tile tile-primary tile-valign">
                      <img src="../dash/man icon.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Vendor</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/book.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/Issue Book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Issue Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

               

            </div>
            <div class="row">
              <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/cupboard shelf.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Cupboard-Self</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/Return Book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Return Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                     <img src="../dash/search book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Search Book</p>
                        <div class="informer informer-danger dir-bl">
                            <%--<span class="fa fa-caret-down"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                        <img src="../dash/pass.jpg" height="80px" width="90px"onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Password</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

               

            </div>
           
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <div class="row">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <div class="col-md-2">
                            <a href='<%#Eval("page_url")%>' class="tile tile-warning tile-valign">
                                <p style="font-size: 19px;">
                                    <%#Eval("page_name")%></p>
                                <div class="informer informer-default dir-bl">
                                    <span class="fa fa-globe"></span>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>
       
        <!-- END WIDGETS -->
    </div>
    <!-- END PAGE CONTENT WRAPPER -->
    </asp:Panel>
    <asp:Panel ID="Pnl_hostel" runat="server">
      <div class="page-title">
        <h2>
            <span class="fa fa-arrow-circle-o-left"></span>Dashboard</h2>
    </div>
    <!-- END PAGE TITLE -->
    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <!-- TILES -->
        <asp:Panel ID="Panel3" runat="server">
        <div class="row">
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_hosteltotal" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Hostel</div>
                                    <div class="widget-subtitle">No Of Hostel in School</div>
                                </div>      
                                <div class="widget-controls">                                
                                    
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-2">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count">
               <asp:Label ID="Lbl_hostelroom" runat="server" Text="" ></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Rooms</div>
                                    <div class="widget-subtitle">No of Rooms in Hostel</div>
                                </div>      
                                <div class="widget-controls">                                
                                   
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <%--<div class="col-md-2">
                            
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon">
                                <div class="widget-item-left">
                                    <span class="fa fa-book"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_returnbook" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Return Books</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>--%>
                        <div class="col-md-2">
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-default widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_totalstd" runat="server" Text=""></asp:Label>
                   </div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Student</div>
                                      <div class="widget-subtitle">Total No of Student in Hostel</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                            
                        </div>
                          
                        <div class="col-md-2">
                            
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
            <div class="row">
               
                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/Hostel Room.png" height="80px" width="90px"/>
                    <p style="font-size: 20px;font-family:Cursive;">Add Hostel</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/Hostel Room.png" height="80px" width="90px"/>
                    <p style="font-size: 20px;font-family:Cursive;">Hostel Rooms</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/stu.jpg" height="55px" width="84px"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Student Registration</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="payhostelfee.aspx" class="tile tile-primary tile-valign">
                      <img src="../dash/fee.png" height="80px" width="90px"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Hostel fee</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                      <img src="../dash/fee.png" height="80px" width="90px"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Refund Fee</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

            </div>
            <div class="row">
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/fee pending.png" height="80px" width="90px"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Pending Fee</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                     <img src="../dash/Student Record.png" height="80px" width="90px"/>
                    <p style="font-size: 20px;font-family:Cursive;">Student Record</p>
                        <div class="informer informer-danger dir-bl">
                            <%--<span class="fa fa-caret-down"></span>--%>
                        </div>
                    </a>
                </div>
               
                <div class="col-md-2">
                    <a href="#" class="tile tile-primary tile-valign">
                    <img src="../dash/pass.jpg" height="80px" width="90px"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Password</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
               

            </div>
           
           
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
            <div class="row">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <div class="col-md-2">
                            <a href='<%#Eval("page_url")%>' class="tile tile-warning tile-valign">
                                <p style="font-size: 19px;">
                                    <%#Eval("page_name")%></p>
                                <div class="informer informer-default dir-bl">
                                    <span class="fa fa-globe"></span>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>
        <%--<div class="row">
                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-default">
                                254
                                <p>Sales today</p>
                                <div class="informer informer-primary">08.09.14</div>
                                <div class="informer informer-success dir-tr"><span class="fa fa-caret-up"></span></div>
                            </a>                        
                        </div>
                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-primary">
                                6,432
                                <p>Visitors Today</p>
                                <div class="informer informer-warning"><span class="fa fa-caret-down"></span></div>
                                <div class="informer informer-default dir-tr">10.09.14</div>
                            </a>
                        </div>
                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-success tile-valign">9.5gb
                                <div class="informer informer-default dir-tr"><span class="fa fa-cloud"></span></div>
                                <div class="informer informer-default dir-bl">Free Disk Space</div>
                            </a>                                                    
                        </div>
                        <div class="col-md-3">                        
                            <a href="#" class="tile tile-info tile-valign">
                                1,153
                                <div class="informer informer-default">Registred Users</div>
                                <div class="informer informer-default dir-br"><span class="fa fa-users"></span></div>
                            </a>                            
                        </div>
                    </div>--%>
        <!-- END TILES -->
        <!-- WIDGETS -->
        <%--   <div class="row">
                        <div class="col-md-3">

                            <div class="widget widget-primary">
                                <div class="widget-title">TOTAL</div>
                                <div class="widget-subtitle">26/08/2014</div>
                                <div class="widget-int">$ <span data-toggle="counter" data-to="1564">1,564</span></div>
                                <div class="widget-controls">
                                    <a href="#" class="widget-control-left"><span class="fa fa-upload"></span></a>
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-3">

                            <div class="widget widget-success widget-no-subtitle">
                                <div class="widget-big-int">$ <span class="num-count">4,381</span></div>                            
                                <div class="widget-subtitle">Latest transaction</div>
                                <div class="widget-controls">
                                    <a href="#" class="widget-control-left"><span class="fa fa-cloud"></span></a>
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>                        

                        </div>
                        <div class="col-md-3">

                            <div class="widget widget-danger widget-padding-sm">
                                <div class="widget-big-int plugin-clock">00:00</div>                            
                                <div class="widget-subtitle plugin-date">Loading...</div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
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

                        </div>
                        <div class="col-md-3">

                            <div class="widget widget-info widget-padding-sm">                            
                                <div class="widget-item-left">
                                    <input class="knob" data-width="100" data-height="100" data-min="0" data-max="100" data-displayInput=false data-bgColor="#d6f4ff" data-fgColor="#FFF" value="80%" data-readOnly="true" data-thickness=".2"/>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-big-int"><span class="num-count">80</span>%</div>
                                    <div class="widget-title">Disk Space</div>
                                    <div class="widget-subtitle">Total free space</div>                                
                                </div>                            
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>                        

                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-3">

                            <div class="widget widget-warning widget-carousel">
                                <div class="owl-carousel" id="owl-example">
                                    <div>                                    
                                        <div class="widget-title">Total Visitors</div>                                                                        
                                        <div class="widget-subtitle">27/08/2014 15:23</div>
                                        <div class="widget-int">3,548</div>
                                    </div>
                                    <div>                                    
                                        <div class="widget-title">Returned</div>
                                        <div class="widget-subtitle">Visitors</div>
                                        <div class="widget-int">1,695</div>
                                    </div>
                                    <div>                                    
                                        <div class="widget-title">New</div>
                                        <div class="widget-subtitle">Visitors</div>
                                        <div class="widget-int">1,977</div>
                                    </div>
                                </div>                            
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>                             
                            </div>

                        </div>

                        <div class="col-md-3">

                            <div class="widget widget-primary widget-item-icon">
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count">599</div>
                                    <div class="widget-title">Registred users</div>
                                    <div class="widget-subtitle">On our website and app</div>
                                </div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>

                        </div>

                        <div class="col-md-3">

                            <div class="widget widget-success widget-item-icon">
                                <div class="widget-item-left">
                                    <span class="fa fa-globe"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count">6,953</div>
                                    <div class="widget-title">Total visitors</div>
                                    <div class="widget-subtitle">That visited our site today</div>
                                </div>
                                <div class="widget-controls">                                
                                    <a href="#" class="widget-control-right"><span class="fa fa-times"></span></a>
                                </div>                            
                            </div>

                        </div>

                        <div class="col-md-3">

                            <div class="widget widget-warning widget-item-icon">
                                <div class="widget-item-right">
                                    <span class="fa fa-envelope"></span>
                                </div>                             
                                <div class="widget-data-left">
                                    <div class="widget-int num-count">48</div>
                                    <div class="widget-title">New messages</div>
                                    <div class="widget-subtitle">In your mailbox</div>
                                </div>                                     
                            </div>

                        </div>

                    </div>--%>
        <!-- END WIDGETS -->
    </div>
    </asp:Panel>

</asp:Content>

