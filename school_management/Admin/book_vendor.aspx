﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="book_vendor.aspx.cs" Inherits="Admin_book_vendor" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    table,tr,td,th
    {
    text-align:center;    
    }
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
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
<div class="form-horizontal">

    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Vendor</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                                <asp:TextBox ID="Text_name" runat="server" class="form-control"></asp:TextBox>
                                                
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_name" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                                                  
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Contact No</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                             <asp:TextBox ID="Text_contact" runat="server" class="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_contact" ValidationGroup="ans">
             </asp:RequiredFieldValidator>
                                                
                                                                                     
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Email</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                               
                                                <asp:TextBox ID="Text_email" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_email" ValidationGroup="ans">
             </asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="Please Enter valid email" ControlToValidate="Text_email" 
                                                    ForeColor="Red" ValidationGroup="ans"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                                     
                                          
                                        </div>
                                    </div>


                              <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Address</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                <asp:TextBox ID="Text_address" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                   
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_address" ValidationGroup="ans">
                                                        </asp:RequiredFieldValidator>                                  
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary " runat="server" Text="Submit" onclick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false" OnClick="upd_btn_Click" />
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
                                     <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                            <asp:TemplateField HeaderText="Contact Number">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_contact"  runat="server" Text='<%#Eval("contact_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_email"  runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_address"  runat="server" Text='<%#Eval("address") %>'></asp:Label>
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
  </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>


