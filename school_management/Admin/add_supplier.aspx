<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="add_supplier.aspx.cs" Inherits="Admin_add_supplier" %>

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
        color:white;
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
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Supplier Detail</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                                                                      
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Vendor Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="Text_vendor_name" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_vendor_name" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Contact Person</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:TextBox ID="Text_cperson" runat="server"  class="form-control select"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_cperson" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9 col-xs-12">
                                               <asp:TextBox ID="Text_Mobile" runat="server"  class="form-control select"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_Mobile" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email.</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_email" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_email" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>
                                                
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
                                            

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Tin No</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_tinno" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_tinno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_address" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_address" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Description</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_description" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>
                                            

                                        </div>
                      
                                </div>
                                <div class="panel-footer">
                                          <%--<asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />--%>
                                        <asp:Button ID="clear_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans"/>
                                   
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
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Contact Person">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_contact" runat="server" Text='<%#Eval("contact_person") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Tin NO">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tinno" runat="server" Text='<%#Eval("tin_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Address">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_addres" runat="server" Text='<%#Eval("adress") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_desc" runat="server" Text='<%#Eval("description") %>'></asp:Label>
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
</div>
 </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

