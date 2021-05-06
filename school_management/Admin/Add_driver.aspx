<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Add_driver.aspx.cs" Inherits="Admin_Add_driver" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
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
    <link href="popup.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Driver</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Driver Name</label>
                                                <div class="col-md-9">                                            
                                                    <asp:TextBox ID="Text_drivername" runat="server" class="form-control select" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_drivername" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">License No</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="Text_licenseno" runat="server" class="form-control select" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_licenseno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Birth</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:TextBox ID="Text_dob" runat="server" class="form-control select" ></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_dob">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                                         ControlToValidate="Text_dob" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">License Expiry Date</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:TextBox ID="Text_license_expiry" runat="server" class="form-control select" ></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="Text_license_expiry">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                        ForeColor="Red" ControlToValidate="Text_license_expiry" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Contact No</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:TextBox ID="Text_contactno" runat="server" class="form-control select" ></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_contactno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">No of Year Experience</label>
                                                <div class="col-md-9">
                                                         <asp:TextBox ID="Text_expireience" runat="server" class="form-control select" ></asp:TextBox>                                 
                                                   
                                                </div>
                                            </div><br />
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Refrence Name</label>
                                                <div class="col-md-9">
                                                       <asp:TextBox ID="Text_refrencename" runat="server" class="form-control select" ></asp:TextBox>  
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Refrence Contact No</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_refrence_contact" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div><br />
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address</label>
                                                <div class="col-md-9">
                                                    <asp:TextBox ID="Text_address" runat="server" class="form-control select" TextMode="MultiLine">
                                         </asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                         ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_address" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </div>
                                        
                                    </div>
                                    <%-- <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Driver Name</label>
                                        <div class="col-md-2 col-xs-2"> 
                                   <asp:TextBox ID="Text_drivername" runat="server" class="form-control select" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_drivername" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">License No</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:TextBox ID="Text_licenseno" runat="server" class="form-control select" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_licenseno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                        <label class="col-md-2 col-xs-4 control-label">Date of Birth</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:TextBox ID="Text_dob" runat="server" class="form-control select" ></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_dob">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                                         ControlToValidate="Text_dob" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">License Expiry Date</label>
                                        <div class="col-md-2 col-xs-2"> 
                                         <asp:TextBox ID="Text_license_expiry" runat="server" class="form-control select" ></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="Text_license_expiry">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                        ForeColor="Red" ControlToValidate="Text_license_expiry" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Contact No</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:TextBox ID="Text_contactno" runat="server" class="form-control select" ></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_contactno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">No of Year Experience</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:TextBox ID="Text_expireience" runat="server" class="form-control select" ></asp:TextBox>
                                        </div>

                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Refrence Name</label>
                                        <div class="col-md-2 col-xs-2"> 
                                         <asp:TextBox ID="Text_refrencename" runat="server" class="form-control select" ></asp:TextBox>

                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Refrence Contact No</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:TextBox ID="Text_refrence_contact" runat="server" class="form-control select" ></asp:TextBox>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Address</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:TextBox ID="Text_address" runat="server" class="form-control select" TextMode="MultiLine">
                                         </asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                         ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_address" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

--%>
                                </div>
                                <div class="panel-footer">
                                          <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                    
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("driver_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Driver Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("driver_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="License No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_licenseno" runat="server" Text='<%#Eval("License_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     
                                    <asp:TemplateField HeaderText="Date of Borth">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     
                                    <asp:TemplateField HeaderText="license Expiry Date ">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_licenseexpiry" runat="server" Text='<%#Eval("license_expiry_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="View Detail">
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Detail" ID = "lnkFake" runat="server" class="btn btn-danger btn-rounded btn-sm" />

                                           <%-- <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" CancelControlID="btnClose" BackgroundCssClass="modalBackground">--%>
                                            <%--</asp:ModalPopupExtender>--%>
                                          
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
        <b>Contact No</b>
        </td>
        <td>
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("contact_no") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         <tr>
        <td>
        <b>Experience(in Year)</b>
        </td>
        <td>
         <asp:Label ID="Label3" runat="server" Text='<%#Eval("experience") %>' style="white-space: normal;"></asp:Label>
         </td>
         </tr>
         <tr>
         <td>
        <b>Refrence Name</b>
        </td>
        <td>
         <asp:Label ID="Label1" runat="server" Text='<%#Eval("refrence_name") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         
          <tr>
        <td>
        <b>Refrence contact No</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_email" runat="server" Text='<%#Eval("refrence_contactno") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Address</b>
        </td>
        <td>
       <asp:Label ID="Label4" runat="server" Text='<%#Eval("address") %>' style="white-space: normal;"></asp:Label>
   
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



