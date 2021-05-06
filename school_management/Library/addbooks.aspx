<%@ Page Title="" Language="C#" MasterPageFile="~/Library/MasterPage.master" AutoEventWireup="true" CodeFile="addbooks.aspx.cs" Inherits="Library_addbooks" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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

<div class="form-horizontal">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Books </strong></h3>
                                    <ul class="panel-controls">
                                </ul>
                                </div>
                                <div class="panel-body">  
                                <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">ASN No.</label>
                                                <div class="col-md-9">                                            
                                                  <asp:TextBox ID="Text_asnno" ForeColor="black" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Book Name</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:TextBox ID="Text_bname" runat="server" class="form-control"></asp:TextBox>
                                         
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
         ControlToValidate="Text_bname" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Book Category</label>
                                                <div class="col-md-9 col-xs-12">
                                              <asp:DropDownList ID="Bookcategory_ddl" runat="server" class="form-control">
                                                 </asp:DropDownList>
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Sub Title</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="Text_subtitle" runat="server" class="form-control"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                               ForeColor="Red" ControlToValidate="Text_subtitle" ValidationGroup="ans" >
                                              </asp:RequiredFieldValidator>
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                  <div class="form-group">                                        
                                                <label class="col-md-3 control-label">ISBN No.</label>
                                                <div class="col-md-9 col-xs-12">
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Author</label>
                                                <div class="col-md-9 col-xs-12">
                                 <asp:TextBox ID="Text_author" runat="server" class="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                     ForeColor="Red" ControlToValidate="Text_author" ValidationGroup="ans">
                                     </asp:RequiredFieldValidator> 
                                                    </div>            
                                                    
                                                </div>
                                                   <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Cupboard</label>
                                                <div class="col-md-9 col-xs-12">
                                  <asp:DropDownList ID="Cupboard_ddl" runat="server" class="form-control" AutoPostBack="true" 
                                                    onselectedindexchanged="Cupboard_ddl_SelectedIndexChanged">
                                                 </asp:DropDownList>
                                                    </div>            
                                                    
                                                </div>

                                            
                                           
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Cupboard Self</label>
                                                <div class="col-md-9">
                                                   <asp:DropDownList ID="Cupboard_self" runat="server" class="form-control">
                                                 </asp:DropDownList>
                                              
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Edition</label>
                                                <div class="col-md-9">
                                                  <asp:TextBox ID="Text_edition" runat="server" class="form-control"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                      ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_edition" ValidationGroup="ans">
                                            </asp:RequiredFieldValidator> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Publisher</label>
                                                <div class="col-md-9">
                                                    <asp:TextBox ID="Text_publisher" runat="server" class="form-control"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                                       runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_publisher" ValidationGroup="ans">
                                         </asp:RequiredFieldValidator> 
                                                   
                                                </div>
                                            </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Book Cost</label>
                                                <div class="col-md-9">
                                                 <asp:TextBox ID="Text_bookcost" runat="server" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
                                             runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_bookcost" 
                                             ValidationGroup="ans">
                                             </asp:RequiredFieldValidator>  
                                                   
                                                </div>
                                            </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Book Vendor</label>
                                                <div class="col-md-9">
                                                   <asp:DropDownList ID="Bookvendor_ddl" runat="server" class="form-control">
                                                     </asp:DropDownList>
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Copy</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="Text_copy" runat="server" class="form-control"></asp:TextBox>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                                           ControlToValidate="Text_copy" ValidationGroup="ans">
                                         </asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            ' <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Remarks</label>
                                                <div class="col-md-9">
                                                    <asp:TextBox ID="Text_remarks" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                        

                                        </div>
                                        
                                    </div>
                               

                                </div>
                                <div class="panel-footer">
                                 <asp:Button ID="export_excel" class="btn btn-primary " runat="server" 
                                        Text="Export to Excel" onclick="export_excel_Click"  />
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary " runat="server" Text="Submit" onclick="submit_btn_Click" ValidationGroup="ans"/>
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("book_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="ISBN No">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_isbnno"  runat="server" Text='<%#Eval("isbn_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Book Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("book_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                            <asp:TemplateField HeaderText="Book Category">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_book_category"  runat="server" Text='<%#Eval("book_category") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                              <asp:TemplateField HeaderText="Cupboard">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_cupboard"  runat="server" Text='<%#Eval("cupboard") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                   
                            <asp:TemplateField HeaderText="Cupboard Self">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_cupboardself"  runat="server" Text='<%#Eval("cupboard_self") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    
                            <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_author"  runat="server" Text='<%#Eval("author") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    
                          
                            <asp:TemplateField HeaderText="Copy">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_copy"  runat="server" Text='<%#Eval("copy") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

            
                          
                                      <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" title="View Detail" runat="server"  ImageUrl="~/Library/Eye-icon.png" OnClick="image_click" Height="50px" Width="50px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                   

                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" title="Edit" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm" title="Delete"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click"><span class="fa fa-times"></span>
                                                </asp:LinkButton>
                                           
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



