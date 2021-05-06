<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="dailyattendance.aspx.cs" Inherits="Teacher_dailyattendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
<div class="form-horizontal">

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>
    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                   <asp:Panel ID="Panel2" runat="server" Visible="true">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>
                                    Daily Attendance</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">
                          
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Date</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:TextBox ID="Text_date" runat="server" class="form-control"></asp:TextBox>
                                         <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                         </asp:CalendarExtender>
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:DropDownList ID="batch_ddl" runat="server" class="form-control" OnSelectedIndexChanged="batch_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList>
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           <asp:DropDownList ID="stream_ddl" runat="server" class="form-control" OnSelectedIndexChanged="stream_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:DropDownList ID="class_ddl" runat="server" class="form-control"
                                             OnSelectedIndexChanged="class_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:DropDownList ID="section_ddl" runat="server" class="form-control" 
                                            OnSelectedIndexChanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList>                                           
                                        </div>
                                    </div>
                               
                                    
         <asp:Label ID="Lbl_mother" runat="server" Text="" Visible="false"></asp:Label>
         <asp:Label ID="Lbl_father" runat="server" Text="" Visible="false"></asp:Label>

                                     <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                             <asp:TextBox ID="Text_name" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>                                         
                                        </div>
                                    </div>--%>

<%--
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Subject</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:DropDownList ID="subject_ddl" runat="server" class="form-control">
                                         </asp:DropDownList>   
                                        </div>
                                    </div>--%>

                                    <asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
                                    
                                 <%--    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Lecture Plan</label>
                                        <div class="col-md-6 col-xs-12">  
                                             <asp:FileUpload ID="lect_plan" class="fileinput btn-primary" runat="server" />
                                             <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" Visible="false" />
                                        </div>
                                    </div>--%>
<asp:Label ID="Lbl_phone" runat="server" Text="" Visible="false"></asp:Label>
                                     
         <asp:Label ID="Lbl_id" runat="server" Text="" Visible="false"></asp:Label>
                               
                                </div>
                               </asp:Panel>
         <asp:Panel ID="Panel1" runat="server" Visible="false">
      
                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" >
                          
                              
                                <Columns>

                                 <%--   <asp:TemplateField>
                                        <HeaderTemplate>
                                            S.No.</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_rollno"  runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Text="Present" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Absent" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Leave" Value="2"></asp:ListItem>
                                            </asp:RadioButtonList>--%>
                                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Present" GroupName="a"  OnCheckedChanged="RadioButton4_CheckedChanged" AutoPostBack="true"/>
                                           
                                              <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" GroupName="a" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="true" />
                                          
                                            <asp:TextBox ID="TextBox1" runat="server" Visible="false" Height="50px" Width="250px"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                       </asp:Panel>
                                 <asp:Panel ID="Panel3" runat="server" Visible="true">
                        <div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary pull-right " runat="server" Text="Submit" OnClick="submit_btn_Click"/>
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false" OnClick="upd_btn_Click" />
                                    
                                </div>
                                      </asp:Panel>
                                <asp:Panel ID="Panel4" runat="server" Visible="false">
                                    <div class="row">
                        <div class="col-md-4">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-info widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-graduation-cap"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_totalstd" runat="server" Text=""></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Student</div>
                                    <div class="widget-subtitle">Total student in Class</div>
                                </div>      
                                <div class="widget-controls">                                
                                    
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-4">
                            
                            <!-- START WIDGET MESSAGES -->
                            <div class="widget widget-info widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>                             
                                <div class="widget-data">
                                    <div class="widget-int num-count">
               <asp:Label ID="Lbl_Present" runat="server" Text="" ></asp:Label></div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Present</div>
                                    <div class="widget-subtitle">Present Student In Class</div>
                                </div>      
                                <div class="widget-controls">                                
                                   
                                </div>
                            </div>                            
                            <!-- END WIDGET MESSAGES -->
                            
                        </div>
                        <div class="col-md-4">
                            <!-- START WIDGET REGISTRED -->
                            <div class="widget widget-info widget-item-icon" >
                                <div class="widget-item-left">
                                    <span class="fa fa-user"></span>
                                </div>
                                <div class="widget-data">
                                    <div class="widget-int num-count"><asp:Label ID="Lbl_absnt" runat="server" Text=""></asp:Label>
                   </div>
                                    <div class="widget-title" style="font-family:Cursive;font-size:14px;">Absent</div>
                                       <div class="widget-subtitle">Absent Student In Class</div>
                                    <div class="widget-subtitle"></div>
                                </div>
                                <div class="widget-controls">                                
                                   </div>                            
                            </div>                            
                            <!-- END WIDGET REGISTRED -->
                        </div>
                    </div>
                                    </asp:Panel>
                            
                            </div>
                            </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

