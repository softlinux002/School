<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="pay_salary.aspx.cs" Inherits="Admin_pay_salary" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
   <ContentTemplate>
<div class="form-horizontal">

   
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_tid" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_count" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Teacher Salary</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Teacher Name</label>
                                                <div class="col-md-9">                                            
                                                   <asp:DropDownList ID="name_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="name_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList> 
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" 
                                             ForeColor="Red" ControlToValidate="name_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Teacher ID</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:DropDownList ID="tid_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="tid_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList> 
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                           ForeColor="Red" ControlToValidate="tid_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                              
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
                                                  <asp:ListItem Text="--Select Month--" Value="0"></asp:ListItem>
                                                   <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                                   <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                                   <asp:ListItem Text="March" Value="3"></asp:ListItem>
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
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="month_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                    </div>            
                                                    
                                                </div>
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
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
                                   <%-- <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Teacher Name</label>
                                        <div class="col-md-2 col-xs-2">                
                                                <asp:DropDownList ID="name_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="name_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList> 
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" 
                                             ForeColor="Red" ControlToValidate="name_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>                                                                            </div>
                                         <label class="col-md-2 col-xs-4 control-label">Teacher ID</label>
                                        <div class="col-md-2 col-xs-3">
                                                <asp:DropDownList ID="tid_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="tid_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                </asp:DropDownList> 
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                           ForeColor="Red" ControlToValidate="tid_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Year</label>
                                        <div class="col-md-2 col-xs-3">                  
                                                        <asp:TextBox ID="year_txt" runat="server" class="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                               ForeColor="Red" ControlToValidate="year_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                                                          </div>
                                    </div>

                                   

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Month</label>
                                        <div class="col-md-2 col-xs-2">              
                                                <asp:DropDownList ID="month_ddl" class="form-control" runat="server" 
                                                    onselectedindexchanged="month_ddl_SelectedIndexChanged" AutoPostBack="true">
                                                  <asp:ListItem Text="1"></asp:ListItem> 
                                                  <asp:ListItem Text="2"></asp:ListItem> 
                                                  <asp:ListItem Text="3"></asp:ListItem> 
                                                  <asp:ListItem Text="4"></asp:ListItem> 
                                                  <asp:ListItem Text="5"></asp:ListItem> 
                                                  <asp:ListItem Text="6"></asp:ListItem> 
                                                  <asp:ListItem Text="7"></asp:ListItem> 
                                                  <asp:ListItem Text="8"></asp:ListItem> 
                                                  <asp:ListItem Text="9"></asp:ListItem> 
                                                 <asp:ListItem Text="10"></asp:ListItem>
                                                 <asp:ListItem Text="11"></asp:ListItem>
                                                 <asp:ListItem Text="12"></asp:ListItem>
                                                </asp:DropDownList> 
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="month_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                           
                                        </div>
                                          <label class="col-md-2 col-xs-4 control-label">Total Salary</label>
                                        <div class="col-md-2 col-xs-3">
                                                <asp:TextBox ID="salary_txt" runat="server" class="form-control"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" 
                                                 ForeColor="Red" ControlToValidate="salary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Holidays(count)</label>
                                        <div class="col-md-2 col-xs-3">                            
                                                <asp:TextBox ID="holiday_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="holiday_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                 
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Paid Salary</label>
                                        <div class="col-md-2 col-xs-2">           
                                                <asp:TextBox ID="paidsalary_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="paidsalary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                                                   </div>
                                    </div>--%>

                                </div>
                                <div class="panel-footer">
                                                <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" />
                                                <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" OnClick="submit_btn_Click" 
                                                Text="Submit" ValidationGroup="ans" />
                                                
                                   
                                </div>

                        
                    </div>

                       
                       </div> 
  </ContentTemplate>                         
 </asp:UpdatePanel>
</asp:Content>

