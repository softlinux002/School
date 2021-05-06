﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="hostelincharge.aspx.cs" Inherits="Admin_hostelincharge" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="popup.css" rel="stylesheet" type="text/css" />
      <script>
          $(document).ready(function () {
              $('.datepicker').datepicker({
                  autoclose: true
              });

          });  
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<div class="form-horizontal">
<asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_tid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Incharge Information</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                   <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Hostel Incharge</label>
                                                <div class="col-md-9">                                            
                                                     <asp:TextBox ID="inchargeno_txt" runat="server" class="form-control" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox>
                                                </div>
                                            </div><br />
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Joining Date</label>
                                                <div class="col-md-9 col-xs-12">
                                              <asp:TextBox ID="joindate_txt" runat="server" class="form-control datepicker" data-provide="datepicker"></asp:TextBox>
                                                  <%--  <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="joindate_txt">
                                                    </asp:CalendarExtender>--%>

                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ErrorMessage="*" ForeColor="Red" ControlToValidate="joindate_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>    
                                                    </div>            
                                                    
                                                </div><br />
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:TextBox ID="father_txt" runat="server" class="form-control"></asp:TextBox>
                                                    </div>            
                                                    
                                                </div><br />
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Gender</label>
                                                <div class="col-md-9 col-xs-12">
                                                       <asp:DropDownList ID="gender_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                        </asp:DropDownList>     
                                                    </div>            
                                                    
                                                </div><br />
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Birth</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="dob_txt" runat="server" class="form-control"></asp:TextBox>
                                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="dob_txt">
                                            </asp:CalendarExtender>   
                                                    </div>            
                                                    
                                                </div><br />
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address1</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="addres1_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>    
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address2</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:TextBox ID="addres2_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                    </div>            
                                                    
                                                </div>
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9">
                                                    <asp:TextBox ID="mob_txt" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email</label>
                                                <div class="col-md-9">
                                                    <asp:TextBox ID="email_txt" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div><br />
                                            
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
                                                </div>
                                            </div><br />

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
                                            </div><br />
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Experience Details</label>
                                                <div class="col-md-9">
                                                         <asp:TextBox ID="exdetail_txt" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div><br />

                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Image</label>
                                                <div class="col-md-9">
                                            
                                                           <asp:FileUpload ID="incharge_img" class="fileinput btn-primary" runat="server" />    
                                                </div>
                                            </div>

                                        </div>
                                        
                                    </div>


                                </div>
                                <div class="panel-footer">
                                 <asp:Button ID="Export_excel" runat="server" class="btn btn-primary " 
                                        Text="Export to excel" onclick="Export_excel_Click"  />
                                                <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />
                                                <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" OnClick="submit_btn_Click" Text="Submit" />
                                                <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" Visible="false" OnClick="upd_btn_Click" />
                                   
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Incharge No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tno" runat="server" Text='<%#Eval("incharge_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Joining Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_jdate" runat="server" Text='<%#Eval("joining_date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
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

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Address1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_address1" runat="server" Text='<%#Eval("address1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Address2">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_address2" runat="server" Text='<%#Eval("address2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mob" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="View Detail">
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Detail" ID = "lnkFake" runat="server" class="btn btn-danger btn-rounded btn-sm" />

                                          
                     
                                            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server"  PopupControlID="pnlPopup" TargetControlID="lnkFake" 
                                            CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
                                            </asp:ModalPopupExtender>
                                             <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                                              <div class="header">
   
    <div style="margin-top:-13px"> View Detail</div>
       
    </div>
    <div class="body">
       
        <table border="1" cellpadding="1" cellspacing="2" width="100%" style="margin-left:0px">
         <tr>
        <td>
        <b>Maritial Status</b>
        </td>
        <td>
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("maritial_status") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         <tr>
        <td>
        <b>Blood Group</b>
        </td>
        <td>
         <asp:Label ID="Label3" runat="server" Text='<%#Eval("blood_group") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
            <tr>
        <td>
        <b>Exprience(year)</b>
        </td>
        <td>
         <asp:Label ID="Label1" runat="server" Text='<%#Eval("total_exp_year") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         
          <tr>
        <td>
        <b>Expirence (Month)</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_monthl" runat="server" Text='<%#Eval("total_exp_month") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Expirence Detail </b>
        </td>
        <td>
         <asp:Label ID="Label4" runat="server" Text='<%#Eval("experience_detail") %>' style="white-space: normal;"></asp:Label>
            
        </td>
        </tr>

         <tr>
        <td>
        <b>Password</b>
        </td>
        <td>
        
        
        <asp:Label ID="Label_document" runat="server" Text='<%#Eval("password") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Incharge Id</b>
        </td>
        <td>
           
              <asp:Label ID="Label5" runat="server" Text='<%#Eval("incharge_hid") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Image</b>
        </td>
        <td>
           
              <asp:Image ID="Image1" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("image") %>' />
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
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>

