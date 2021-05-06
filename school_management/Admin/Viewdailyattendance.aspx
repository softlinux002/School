<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Viewdailyattendance.aspx.cs" Inherits="Admin_Viewdailyattendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
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
                                           <asp:DropDownList ID="stream_ddl" runat="server" class="form-control" AutoPostBack="true">
                                         </asp:DropDownList>
                                        </div>
                                    </div>


                                        


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:DropDownList ID="class_ddl" runat="server" class="form-control" OnSelectedIndexChanged="class_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:DropDownList ID="section_ddl" runat="server" class="form-control" OnSelectedIndexChanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                         </asp:DropDownList>                                           
                                        </div>
                                    </div>
                                    

                                   

                                     
         <asp:Label ID="Lbl_id" runat="server" Text="" Visible="false"></asp:Label>
                                    </div>
                               
         <asp:Panel ID="Panel1" runat="server" Visible="false">
                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" 
                                onpageindexchanging="GridView1_PageIndexChanging">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_rollno"  runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_stream"  runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_section"  runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_roll_no"  runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status"  runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                 <%--    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Text="Present" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Absent" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Leave" Value="2"></asp:ListItem>
                                            </asp:RadioButtonList>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                       </asp:Panel>
                        <%--<div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary pull-right " runat="server" Text="Submit" OnClick="submit_btn_Click"/>
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false" OnClick="upd_btn_Click" />
                                    
                                </div>--%>
                            </div>
                            </div>
    
</asp:Content>


