<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="teacher_info.aspx.cs" Inherits="Admin_teacher_info" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="popup.css" rel="stylesheet" type="text/css" />
    <style>
.GridPager a, .GridPager span
    {
        display: block;
        height: 29px;
        width: 31px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #e34724;
        color: white;
        border: 1px solid #33414e;
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

<div class="form-horizontal">
<asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
   
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_tid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Teacher Information</strong></h3>
                                    <ul class="panel-controls">
                                       
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Teacher Number</label>
                                                <div class="col-md-9">                                            
                                                     <asp:TextBox ID="teacherno_txt" runat="server" class="form-control" ForeColor="Black" ReadOnly="true" ></asp:TextBox>
                                                </div>
                                            </div><br />

                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Joining Date</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="joindate_txt" runat="server" class="form-control"></asp:TextBox>
                                           <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="joindate_txt" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="joindate_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Teacher Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="name_txt" runat="server" class="form-control" Placeholder="Enter Full Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Designation</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="Text_designation" runat="server" class="form-control" ></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                                    </div>            
                                                    
                                                </div><br />

                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="father_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="father_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                    </div>            
                                                    
                                                </div>
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Gender</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:DropDownList ID="gender_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="gender_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                    </div>            
                                                </div>
                                        <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Birth</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="dob_txt" runat="server" class="form-control"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob_txt" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="dob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                    </div>            
                                                    
                                                </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
      <ContentTemplate>
                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Country</label>
                                                <div class="col-md-9 col-xs-12">
                                                  
                                            <asp:DropDownList ID="ddl_country" runat="server" class="form-control select" AutoPostBack="true"
                                                        onselectedindexchanged="ddl_country_SelectedIndexChanged">
                                            </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_country" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>

                                                
                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">State</label>
                                                <div class="col-md-9 col-xs-12">
                                                  
                                            <asp:DropDownList ID="ddl_state" runat="server" class="form-control select" AutoPostBack="true"
                                                        onselectedindexchanged="ddl_state_SelectedIndexChanged">
                                            </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_state" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">City</label>
                                                <div class="col-md-9 col-xs-12">
                                                  
                                            <asp:DropDownList ID="ddl_city" runat="server" class="form-control select">
                                            </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_city" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                </div>
                                                </ContentTemplate>
                                                  </asp:UpdatePanel>
                                              <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="addres1_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="addres1_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                               
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="mob_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="mob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email</label>
                                                <div class="col-md-9">
                                                          <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                 ErrorMessage="*"  ForeColor="Red" ControlToValidate="email_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                   
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Martial Status</label>
                                                <div class="col-md-9">
                                                       <asp:DropDownList ID="martial_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Married" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Unmarried" Value="2"></asp:ListItem>
                                        </asp:DropDownList> 
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Blood Group</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="blood_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="blood_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>

                                           <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Total Experience(Years)</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="exyear_txt" runat="server" class="form-control"></asp:TextBox>
                                       
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Total Experience(Months)</label>
                                                <div class="col-md-9">
                                                 <asp:TextBox ID="exmonth_txt" runat="server" class="form-control"></asp:TextBox>
                                       
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Experience Details</label>
                                                <div class="col-md-9">
                                                 <asp:TextBox ID="exdetail_txt" runat="server" class="form-control"></asp:TextBox><br />
                                       
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Salary</label>
                                                <div class="col-md-9">
                                                <asp:TextBox ID="salary_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="salary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                       
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Teacher Image</label>
                                                <div class="col-md-9">
                                                <asp:FileUpload ID="teacher_img" class="fileinput btn-primary" runat="server" /> 
                                                            <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" Visible="false" />                                                                              <span class="help-block"></span>
                                       
                                                </div>
                                            </div>

                                        </div>
                                        
                                    </div>
                                   <%-- <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Teacher Number</label>
                                        <div class="col-md-2 col-xs-2">                                   
                                                <asp:TextBox ID="teacherno_txt" runat="server" class="form-control" ForeColor="Black" ReadOnly="true" ></asp:TextBox>
                                        
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Joining Date</label>
                                        <div class="col-md-2 col-xs-3">
                                                <asp:TextBox ID="joindate_txt" runat="server" class="form-control"></asp:TextBox>
                                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="joindate_txt" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="joindate_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                              
                                      
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Teacher Name</label>
                                        <div class="col-md-2 col-xs-3">                                            
                                            
                                                        <asp:TextBox ID="name_txt" runat="server" class="form-control" Placeholder="Enter Full Name"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                                                                       
                                           
                                        </div>


                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Father Name</label>
                                        <div class="col-md-2 col-xs-2">  
                                                <asp:TextBox ID="father_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="father_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Gender</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="gender_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="gender_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>          
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Date of Birth</label>
                                        <div class="col-md-2 col-xs-3">
                                                <asp:TextBox ID="dob_txt" runat="server" class="form-control"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob_txt" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="dob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                              
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Address1</label>
                                        <div class="col-md-2 col-xs-2">                                      
                                                <asp:TextBox ID="addres1_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="addres1_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Address2</label>
                                        <div class="col-md-2 col-xs-3">                                       
                                                <asp:TextBox ID="addres2_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                               
                                        </div>
                                           <label class="col-md-2 col-xs-4 control-label">Mobile</label>
                                        <div class="col-md-2 col-xs-3">
                                                <asp:TextBox ID="mob_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="mob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                                 
                                    </div>

                                    </div>

                                    

                                    <div class="form-group">                                        
                                        <label class="col-md-2 col-xs-4 control-label">Email</label>
                                        <div class="col-md-2 col-xs-2">
                                                
                                                
                                                <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                 ErrorMessage="*"  ForeColor="Red" ControlToValidate="email_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                                
                                            </div>
                                            <label class="col-md-2 col-xs-4 control-label">Martial Status</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="martial_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Married" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Unmarried" Value="2"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Blood Group</label>
                                        <div class="col-md-2 col-xs-3">               
                                                        <asp:TextBox ID="blood_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="blood_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        
                                        </div>

                                    </div>
                                

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Total Experience(Years)</label>
                                        <div class="col-md-2 col-xs-2">                                     
                                                        <asp:TextBox ID="exyear_txt" runat="server" class="form-control"></asp:TextBox>
                                       
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Total Experience(Months)</label>
                                        <div class="col-md-2 col-xs-3">                                  
                                                        <asp:TextBox ID="exmonth_txt" runat="server" class="form-control"></asp:TextBox>
                                              
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Experience Details</label>
                                        <div class="col-md-2 col-xs-3">                                            
                                                        <asp:TextBox ID="exdetail_txt" runat="server" class="form-control"></asp:TextBox>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Salary</label>
                                        <div class="col-md-2 col-xs-2">        
                                                        <asp:TextBox ID="salary_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="salary_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        
                                        </div>
                                        <label class="col-md-2 col-xs-4 control-label">Teacher Image</label>
                                        <div class="col-md-2 col-xs-3">
                                           
                                            <asp:FileUpload ID="teacher_img" class="fileinput btn-primary" runat="server" /> 
                                                            <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" Visible="false" />                                                                              <span class="help-block"></span>
                                        </div>

                                    </div>--%>
                           
                                </div>
                                <div class="panel-footer">
                                 <asp:Button ID="Export_excel" runat="server" class="btn btn-primary " 
                                        Text="Export to excel" onclick="Export_excel_Click"  />
                                                <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />
                                                <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" OnClick="submit_btn_Click" Text="Submit" ValidationGroup="ans"/>
                                                <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" Visible="false" OnClick="upd_btn_Click" ValidationGroup="ans" />
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("teacher_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Teacher No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tno" runat="server" Text='<%#Eval("teacher_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Teacher Image">
                                        <ItemTemplate>
                                           <asp:Image ID="Image3" runat="server" ImageUrl='<%#Eval("image") %>' Height="50px" Width="50px"/>  
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

                                       <asp:TemplateField HeaderText="Designation">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_designation" runat="server" Text='<%#Eval("designation") %>'></asp:Label>
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

                                     

                                     

                                    <asp:TemplateField HeaderText="View Detail">
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Detail" ID = "lnkFake" runat="server" class="btn btn-danger btn-rounded btn-sm" />

                                         
                                            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" 
                                            CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
                                            </ajaxToolkit:ModalPopupExtender>
                                             <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                                              <div class="header">
   
    <div style="margin-top:-13px"> View Detail</div>
       
    </div>
    <div class="body">
       
        <table border="1" cellpadding="1" cellspacing="2" width="100%" style="margin-left:0px">
         <tr>
        <td>
        <b>Address1</b>
        </td>
        <td>
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("address1") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
       
            <tr>
        <td>
        <b>Phone</b>
        </td>
        <td>
         <asp:Label ID="Lbl_phone" runat="server" Text='<%#Eval("mobile") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

        <tr>
        <td>
        <b>DOB</b>
        </td>
        <td>
         <asp:Label ID="Label8" runat="server" Text='<%#Eval("dob") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
            <tr>
        <td>
        <b>Email</b>
        </td>
        <td>
         <asp:Label ID="Label_email" runat="server" Text='<%#Eval("email") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
          <tr>
        <td>
        <b>Maritial Status</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_mstatus" runat="server" Text='<%#Eval("maritial_status") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Blood Group</b>
        </td>
        <td>
         <asp:Label ID="Lbl_bgroup" runat="server" Text='<%#Eval("blood_group") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>


          <tr>
        <td>
        <b>City</b>
        </td>
        <td>
         <asp:Label ID="Label12" runat="server" Text='<%#Eval("city") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

        
          <tr>
        <td>
        <b>State</b>
        </td>
        <td>
         <asp:Label ID="Label13" runat="server" Text='<%#Eval("state") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Experience Year</b>
        </td>
        <td>

        <asp:Label ID="Label_exper" runat="server" Text='<%#Eval("total_exp_year") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Experience Month</b>
        </td>
        <td>
          <asp:Label ID="Label1" runat="server" Text='<%#Eval("total_exp_month") %>' style="white-space: normal;"></asp:Label>
             
        </td>
        </tr>


        
         <tr>
        <td>
        <b>Experience Detail</b>
        </td>
        <td>
          <asp:Label ID="Label4" runat="server" Text='<%#Eval("experience_detail") %>' style="white-space: normal;"></asp:Label>
             
        </td>
        </tr>

         <tr>
        <td>
        <b>Salary</b>
        </td>
        <td>
          <asp:Label ID="Label5" runat="server" Text='<%#Eval("salary") %>' style="white-space: normal;"></asp:Label>
             
        </td>
        </tr>


         <tr>
        <td>
        <b>Password</b>
        </td>
        <td>
          <asp:Label ID="Label6" runat="server" Text='<%#Eval("password") %>' style="white-space: normal;"></asp:Label>
             
        </td>
        </tr>

           <tr>
        <td>
        <b>Teacher ID</b>
        </td>
        <td>
          <asp:Label ID="Label7" runat="server" Text='<%#Eval("teacher_tid") %>' style="white-space: normal;"></asp:Label>
             
        </td>
        </tr>

        </table>
        </div>
                     <div class="footer" align="right">
        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn btn-danger" style="visibility:visible;" ValidationGroup="as"/>
      
    </div>
       </asp:Panel>
    </ItemTemplate>
   </asp:TemplateField>
   <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click"><span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                  <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>

