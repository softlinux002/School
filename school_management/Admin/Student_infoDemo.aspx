<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Student_infoDemo.aspx.cs" Inherits="Admin_Student_infoDemo" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
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
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                               
                                <div class="panel-body">                                                                        
                                    
                                    <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9">                                            
                                         <asp:DropDownList ID="Batch_dll" class="form-control " 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" 
                                                onselectedindexchanged="Batch_dll_SelectedIndexChanged"  >
                                        </asp:DropDownList>
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:DropDownList ID="streamddl" class="form-control " runat="server" >                                                                                                    
                                        </asp:DropDownList> 
                                                </asp:TextBox> 
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                        <asp:DropDownList ID="class_ddl" class="form-control" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                        </asp:DropDownList>
                            
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                <div class="col-md-9 col-xs-12">
                                             < <asp:DropDownList ID="section_ddl" class="form-control" runat="server" 
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                        </asp:DropDownList> 
                                                    </div>            
                                                    
                                                </div>

                                                  <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll No</label>
                                                <div class="col-md-9 col-xs-12">
                             <asp:DropDownList ID="roll_ddl" class="form-control" 
                                        runat="server" >                                       
                                        </asp:DropDownList>
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Exam Term</label>
                                                <div class="col-md-9 col-xs-12">
                                 <asp:DropDownList ID="examterm_ddl" class="form-control" runat="server" >
                                        </asp:DropDownList>
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">State</label>
                                                <div class="col-md-9 col-xs-12">
                              <asp:DropDownList ID="state_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="state_ddl_SelectedIndexChanged" >
                                        </asp:DropDownList>
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">City</label>
                                                <div class="col-md-9 col-xs-12">
                              <asp:DropDownList ID="city_ddl" class="form-control select" runat="server"> 
                                             
                                        </asp:DropDownList> 
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Pincode</label>
                                                <div class="col-md-9 col-xs-12">
                            <asp:TextBox ID="Text_pincode" runat="server" class="form-control select"></asp:TextBox>     
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_pincode" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                        </div>
                                        <div class="col-md-6">


                                          <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date</label>
                                                <div class="col-md-9">
                                                
                                              <asp:TextBox ID="Text_date" runat="server" class="form-control select"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                           </asp:CalendarExtender>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Name</label>
                                                <div class="col-md-9">
                                                
                                                   <asp:DropDownList ID="hostel_ddl" class="form-control select" runat="server" >
                                                
                                        </asp:DropDownList>  
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Room Type</label>
                                                <div class="col-md-9">
                                                  <asp:DropDownList ID="DropDownList2" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                                                <asp:ListItem Text="--Select Room--" Value="0"></asp:ListItem>
                                                       <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                                              <asp:ListItem Text="Double" Value="2"></asp:ListItem>
                                        </asp:DropDownList> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">No of Rooms</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_no_of_room" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black">
                                                      </asp:TextBox>  
                                                </div>
                                            </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Available Room</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="Text_available" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox> 
                                                   
                                                </div>
                                            </div>
                                        <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Room No</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_room_no" runat="server" class="form-control select" OnTextChanged="Text_room_no_TextChanged" AutoPostBack="true">
                                                </asp:TextBox>   
                                                   
                                                </div>
                                            </div>
                                               <asp:Panel ID="Panel1" runat="server" Visible="false">
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Seat No</label>
                                                <div class="col-md-9">
                                                 <asp:TextBox ID="Text_seatno" runat="server" class="form-control select" ></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                               </asp:Panel>
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Charge</label>
                                                <div class="col-md-9">
                                                <asp:TextBox ID="Text_charge" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox> 
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9">
                                               <asp:TextBox ID="Text_mobile" runat="server" class="form-control select" >
                                               </asp:TextBox>   
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ValidationGroup="ans"
                                               ForeColor="Red" ControlToValidate="Text_mobile">
                                            </asp:RequiredFieldValidator> 
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>

                                </div>
                                <div class="panel-footer">
                                    <button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>
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

                                     <asp:TemplateField HeaderText="Bloodgroup">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_bgroup" runat="server" Text='<%#Eval("bloodgroup") %>'></asp:Label>
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

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
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

                                            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" 
                                            CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                            </asp:ModalPopupExtender>
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
        <b>Adress2</b>
        </td>
        <td>
         <asp:Label ID="Label3" runat="server" Text='<%#Eval("address2") %>' style="white-space: normal;"></asp:Label>
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
        <b>Email</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_email" runat="server" Text='<%#Eval("email") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Student Image</b>
        </td>
        <td>
       
            <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("image") %>' style="white-space: normal;" height="50px" Width="50px"/>
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


