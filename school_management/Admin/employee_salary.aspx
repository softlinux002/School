<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="employee_salary.aspx.cs" Inherits="Admin_employee_salary" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    

<div class="form-horizontal">

   
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_tid" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_count" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_leave" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_absent" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_dateeee" runat="server" Text="" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Employee Salary</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
                                <div class="panel-body">                                                                        
                                    <div class="row">
                                        
                                        <div class="col-md-9">

                                          <div class="form-group">
                                           <label class="col-md-3 col-xs-12 control-label">Employee Type</label>
                                           <div class="col-md-9 col-xs-12"> 
                                           <asp:DropDownList ID="emptype_ddl" runat="server" class="form-control" AutoPostBack="true" onselectedindexchanged="emptype_ddl_SelectedIndexChanged" >
                                           </asp:DropDownList>
                                               </div>
                                          </div>

                                           <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Employee ID</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:DropDownList ID="empid_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList> 
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                           ForeColor="Red" ControlToValidate="empid_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                 </div>   
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Employee Name</label>
                                                <div class="col-md-9">  
                                               <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" 
                                             ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>
                                            
                                            
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Year</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="year_txt" runat="server" class="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                               ForeColor="Red" ControlToValidate="year_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Month</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="month_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="month_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                     <asp:ListItem Text="--Select Month--"></asp:ListItem> 
                                                  <asp:ListItem Text="January"></asp:ListItem> 
                                                  <asp:ListItem Text="February"></asp:ListItem> 
                                                  <asp:ListItem Text="March"></asp:ListItem> 
                                                  <asp:ListItem Text="April"></asp:ListItem> 
                                                  <asp:ListItem Text="May"></asp:ListItem> 
                                                  <asp:ListItem Text="June"></asp:ListItem> 
                                                  <asp:ListItem Text="July"></asp:ListItem> 
                                                  <asp:ListItem Text="August"></asp:ListItem> 
                                                  <asp:ListItem Text="September"></asp:ListItem> 
                                                 <asp:ListItem Text="October"></asp:ListItem>
                                                 <asp:ListItem Text="November"></asp:ListItem>
                                                 <asp:ListItem Text="December"></asp:ListItem>
                                                </asp:DropDownList> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="month_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                    </div>            
                                                    
                                                </div>
                                             
                                        </div>
                                        <div class="col-md-9">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Total Salary</label>
                                                <div class="col-md-9">  
                                               <asp:TextBox ID="salary_txt" runat="server" class="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" 
                                                 ForeColor="Red" ControlToValidate="salary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                  
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Holidays(count)</label>
                                                <div class="col-md-9">  
                                               <asp:TextBox ID="holiday_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="holiday_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Paid Salary</label>
                                                <div class="col-md-9">  
                                               <asp:TextBox ID="paidsalary_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="paidsalary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                </div>
                                            </div>

                                        </div>
                                        
                                    </div>
                                   

                                </div>
                                  </ContentTemplate>
    </asp:UpdatePanel>
                                <div class="panel-footer">
                                                <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" Visible="false"  />
                                                <asp:Button ID="submit_btn" runat="server" OnClick="submit_btn_Click" class="btn btn-primary pull-right"  
                                                Text="Submit" ValidationGroup="ans" />
                                                
                                   
                                </div>
                    </div>
       </div>
         
</asp:Content>

