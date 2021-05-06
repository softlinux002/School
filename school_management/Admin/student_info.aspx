<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="student_info.aspx.cs" Debug="true" 
Inherits="Admin_student_info" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="popup.css" rel="stylesheet" type="text/css" />
    <link href="modalpop.css" rel="stylesheet" type="text/css" />
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

<div class="form-horizontal">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Information</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                    
                                  
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Admission Number</label>
                                                <div class="col-md-9">                                            
                                                    
                                                       <asp:TextBox ID="admisn_no_txt" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                                                                                          
                                                </div>
                                            </div><br />
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Admission Date</label>
                                                <div class="col-md-9 col-xs-12">
                                                       <asp:TextBox ID="admismdate_txt" runat="server" class="form-control"></asp:TextBox>
                                                       
                                        <ajaxToolkit:CalendarExtender ID="Admisndate_cal" runat="server" TargetControlID="admismdate_txt">
                                        </ajaxToolkit:CalendarExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="admismdate_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                    </div>            
                                                    
                                                </div>
                                        
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                       <ContentTemplate>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label" >Blood Group</label>
                                                <div class="col-md-9 col-xs-12">
                                                     
                                                    <asp:DropDownList ID="blood_ddl" runat="server" class="form-control select">
                                                    <asp:ListItem Text="--Select Blood Group--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="A+" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="O+" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="B+" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="AB+" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="A-" Value="5"></asp:ListItem>
                                                    <asp:ListItem Text="O-" Value="6"></asp:ListItem>
                                                    <asp:ListItem Text="B-" Value="7"></asp:ListItem>
                                                    <asp:ListItem Text="AB-" Value="8"></asp:ListItem>
                                                    </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                                ForeColor="Red" ControlToValidate="blood_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="name_txt" runat="server" class="form-control" placeholder="Please Enter Full Name"></asp:TextBox>
                                                     
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:TextBox ID="father_txt" runat="server" class="form-control" placeholder="Please Enter Full Name"></asp:TextBox>
                                                       
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="father_txt" ValidationGroup="ans">
                                                </asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mother Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:TextBox ID="mother_txt" runat="server" class="form-control"></asp:TextBox>
                                                       
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="mother_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="batch_ddl" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="batch_ddl_SelectedIndexChanged">
                                        
                                                        </asp:DropDownList>
                                                    </div>            
                                                    
                                                </div><br />
                                                
                
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" AutoPostBack="true" onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                         
                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                       
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                 
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="section_ddl" class="form-control select" runat="server">
                                         
                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                       
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="stream_ddl" class="form-control select" runat="server" AutoPostBack="true">
                                         <asp:ListItem Text="Select Stream"></asp:ListItem>
                                        <asp:ListItem Text="Art"></asp:ListItem>
                                        <asp:ListItem Text="Commerce"></asp:ListItem>
                                        <asp:ListItem Text="Medical"></asp:ListItem>
                                        <asp:ListItem Text="Non-Medical"></asp:ListItem>
                                         <asp:ListItem Text="N/A"></asp:ListItem>
                                        </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                    </div>            
                                                </div>
                                                </ContentTemplate>
                                             </asp:UpdatePanel>
                                        </div>
                                        <div class="col-md-6">
                                             
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                       <ContentTemplate>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll Number</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="rollno_txt" runat="server" class="form-control" AutoPostBack="true"
                                                          ontextchanged="rollno_txt_TextChanged"></asp:TextBox>                                          
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="rollno_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Birth</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="dob_txt" runat="server" class="form-control"></asp:TextBox>  
                                                    
                                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="dob_txt" >
                                                        </ajaxToolkit:CalendarExtender>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="dob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Gender</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="gender_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                                     
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="gender_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>

                                              <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Country</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="ddl_country" class="form-control select" runat="server" AutoPostBack="true"
                                                         onselectedindexchanged="ddl_country_SelectedIndexChanged">
                                       
                                        </asp:DropDownList>
                                                     
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_country" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">State</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="ddl_state" class="form-control select" runat="server" AutoPostBack="true"
                                                         onselectedindexchanged="ddl_state_SelectedIndexChanged">
                                       
                                        </asp:DropDownList>
                                                     
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_state" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>


                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">City</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="ddl_city" class="form-control select" runat="server">
                                       
                                        </asp:DropDownList>
                                                     
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_city" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>
                                            </ContentTemplate>
                                             </asp:UpdatePanel>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="addres1_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                     
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="addres1_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                          
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="mob_txt" runat="server" class="form-control" ></asp:TextBox>
                                                     
                                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="mob_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                                                     
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*"
                                                 ForeColor="Red" ControlToValidate="email_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ControlToValidate="email_txt" ErrorMessage="Please enter Proper email" 
                                                    ForeColor="Red" 
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                                    ValidationGroup="ans"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Image</label>
                                                <div class="col-md-9">
                                                  <asp:FileUpload ID="student_image" class="fileinput btn-primary" runat="server" />
                                            
                                            <asp:Image ID="Image2" runat="server" Visible="false" Width="50px" Height="50px" />  
                                                     
                                                    
                                                </div>
                                            </div><br />
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Document Name</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="docname_txt" runat="server" class="form-control"></asp:TextBox>
                                                     
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="docname_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Document</label>
                                                <div class="col-md-9">
                                                 <asp:FileUpload ID="doc_image" class="fileinput btn-primary" runat="server" />  
                                                </div>
                                            </div>
                                           
                                            
                                        </div>
                                        
                                    </div>

                                </div>
                                <div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                <asp:Button ID="export_excel" class="btn btn-primary " runat="server" 
                                        Text="Export to Excel" onclick="export_excel_Click"  />
                                        <asp:Button ID="submit_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Submit" onclick="submit_btn_Click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false" OnClick="upd_btn_Click" ValidationGroup="ans" />
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ano" runat="server" Text='<%#Eval("admission_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adate" runat="server" Text='<%#Eval("admissiondate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Image">
                                        <ItemTemplate>
                                              <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image") %>' style="white-space: normal;" height="50px" Width="50px"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%-- <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

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
        <b>Country</b>
        </td>
        <td>
        <asp:Label ID="Lbl_country" runat="server" Text='<%#Eval("country") %>'></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>State</b>
        </td>
        <td>
        <asp:Label ID="Lbl_state" runat="server" Text='<%#Eval("state") %>'></asp:Label>
        </td>
        </tr>

        
         <tr>
        <td>
        <b>City</b>
        </td>
        <td>
        <asp:Label ID="Lbl_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
        </td>
        </tr>
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
         <asp:Label ID="Label1" runat="server" Text='<%#Eval("phone") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         
              <tr>
        <td>
        <b>DOB</b>
        </td>
        <td>
        <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
        </td>
        </tr>

           

          <tr>
        <td>
        <b>Email</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_email" runat="server" Text='<%#Eval("email") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Blood Group</b>
        </td>
        <td>
          
        <asp:Label ID="lbl_bgroup" runat="server" Text='<%#Eval("bloodgroup") %>'></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Document Name</b>
        </td>
        <td>
        
        
        <asp:Label ID="Label_document" runat="server" Text='<%#Eval("document_name") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Document</b>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("doc_image") %>'>Download</asp:HyperLink>
             
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
                                                Style="visibility: visible;" 
                                                OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click"><span class="fa fa-times"></span></asp:LinkButton>
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

