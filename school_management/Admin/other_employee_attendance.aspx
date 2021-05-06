<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="other_employee_attendance.aspx.cs" Inherits="Admin_other_employee_attendance" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
.GridPager a
    {
        background-color: #e34724;
        color: white;
        border: 1px solid #33414e;
    }
    .GridPager a, .GridPager span
    {
        display: block;
        height: 29px;
        width: 31px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
   .GridPager span
    {
        background-color: #e34724;
        color: #000;
        border: 1px solid #33414e;
    }
</style>

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
                                    <h3 class="panel-title"><strong>Employee Daily Attendance</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                  
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Employee Type</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:DropDownList ID="emptype_ddl" runat="server" class="form-control">
                                         
                                         </asp:DropDownList>
                                        </div>
                                    </div>
                                  
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Day</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:TextBox ID="Text_day" runat="server" class="form-control"></asp:TextBox>
                                        
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Month</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                                         <asp:ListItem Text="Select Month" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                         <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                         <asp:ListItem Text="March"   Value="3"></asp:ListItem>
                                         <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                         <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                         <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                         <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                         <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                         <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                         <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                         <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                         <asp:ListItem Text="December" Value="12"></asp:ListItem>
                                         </asp:DropDownList>
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Year</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <asp:TextBox ID="Text_year" runat="server" class="form-control" AutoPostBack="true"
                                                ontextchanged="Text_year_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>


         <asp:Label ID="Lbl_mother" runat="server" Text="" Visible="false"></asp:Label>
         <asp:Label ID="Lbl_father" runat="server" Text="" Visible="false"></asp:Label>

      <asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
      <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
      <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
                                    
                                
<asp:Label ID="Lbl_phone" runat="server" Text="" Visible="false"></asp:Label>
                                     
         <asp:Label ID="Lbl_id" runat="server" Text="" Visible="false"></asp:Label>
                               
                                </div>
                               
         <asp:Panel ID="Panel1" runat="server" Visible="false">
      
                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" >
                          
                              
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


                                    <asp:TemplateField HeaderText="Employee Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_tid"  runat="server" Text='<%#Eval("emp_id") %>'></asp:Label>
                                        
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Employee Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("emp_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                         
                                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Present" GroupName="a"/>
                                             <asp:RadioButton ID="RadioButton2" runat="server" Text="Absent" GroupName="a"/>
                                               <asp:RadioButton ID="RadioButton3" runat="server" Text="Leave" GroupName="a"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                       </asp:Panel>
                       <asp:Panel ID="Panel2" runat="server" Visible="false" >
      
                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" >
                          
                              
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


                                    <asp:TemplateField HeaderText="Teacher Id">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_tid"  runat="server" Text='<%#Eval("teacher_id") %>'></asp:Label>
                                        
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Teacher Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                               <asp:Label ID="Lbl_date"  runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Month">
                                        <ItemTemplate>
                                               <asp:Label ID="Lbl_Month"  runat="server" Text='<%#Eval("month") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                               <asp:Label ID="Lbl_Year"  runat="server" Text='<%#Eval("year") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                               <asp:Label ID="Lbl_status"  runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                       </asp:Panel>
                        <div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form"  />
                                        <asp:Button ID="submit_btn" class="btn btn-primary pull-right " runat="server" Text="Submit" OnClick="submit_btn_Click"/>
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false"  />
                                    
                                </div>
                            </div>
                            </div>

</asp:Content>

