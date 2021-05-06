<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="parent_info.aspx.cs" Inherits="Admin_parent_info"  EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
 <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
    
<div class="form-horizontal">
    <asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
   
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Parent Information</strong></h3>
                                    <ul class="panel-controls">
                                        
                                    </ul>
                                </div>
                                <div class="panel-body"> 
                                
                                
                                  <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9">                                            
                                                    
                                                     <asp:DropDownList ID="sname_ddl" class="form-control" runat="server" AutoPostBack="true"
                                                    onselectedindexchanged="sname_ddl_SelectedIndexChanged">
                                                </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red"
                                         ControlToValidate="sname_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                                                          
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:DropDownList ID="Parent_ddl" class="form-control" runat="server" ></asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" 
                                            ForeColor="Red" ControlToValidate="Parent_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Relation</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:DropDownList ID="relation_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Father" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Mother" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                                       
                                        </asp:DropDownList>  
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="relation_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date Of Birth</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="dob_txt" runat="server" class="form-control"></asp:TextBox>
                                        
                                       <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="dob_txt">
                                            </ajaxToolkit:CalendarExtender>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                                            ControlToValidate="dob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                                    </div>            
                                                    
                                                </div>
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Qualification</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:DropDownList ID="quali_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="PG" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="UG" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="+2" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="10th" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="N/A" Value="5"></asp:ListItem>
                                        </asp:DropDownList> 
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red"
                                         ControlToValidate="quali_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                    </div>            
                                                </div>

                                              
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Occupation</label>
                                                <div class="col-md-9">
                                                          <asp:TextBox ID="occupation_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="occupation_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                  
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Income</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="income_txt" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                                          ControlToValidate="income_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                                         ControlToValidate="email_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="email_txt" ErrorMessage="Please enter Proper email" 
                                                    ForeColor="Red" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                    ValidationGroup="ans"></asp:RegularExpressionValidator>  
                                                </div>
                                            </div>

                                           <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="mob_txt" runat="server" class="form-control"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" 
                                         ControlToValidate="mob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            
                                           
                                            
                                        </div>
                                        
                                    </div>

                                </div>
                                <div class="panel-footer">
                                 <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                        Text="Export to Excel" onclick="Export_excel_Click"  />
                                                            <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" 
                                                            OnClick="clr_btn_Click" Visible="false" />
                                                            <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" 
                                                            Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                                            <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" 
                                                            Text="Update" Visible="false" OnClick="upd_btn_Click" ValidationGroup="ans" />
                                  
                                </div>

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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("parent_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="First Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("firstname") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    

                                     <asp:TemplateField HeaderText="Student name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Relation">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_relation" runat="server" Text='<%#Eval("relation") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Qualification">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_quali" runat="server" Text='<%#Eval("qualification") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Occupation">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_occupation" runat="server" Text='<%#Eval("occupation") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Income">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_income" runat="server" Text='<%#Eval("income") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mobile" runat="server" Text='<%#Eval("mobilephone") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" 
                                                OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click">
                                                <span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                   <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>
    </ContentTemplate>
    <Triggers>
    <asp:PostBackTrigger ControlID="Export_excel"/>
    </Triggers>
    </asp:UpdatePanel>
</asp:Content>

