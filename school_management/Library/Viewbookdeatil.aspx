<%@ Page Title="" Language="C#" MasterPageFile="~/Library/MasterPage.master" AutoEventWireup="true" CodeFile="Viewbookdeatil.aspx.cs" Inherits="Library_Viewbookdeatil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Create Book Category</strong></h3>
                                    <ul class="panel-controls">
                                           <asp:Label ID="Label_pkid" runat="server" Text="" Visible="false"></asp:Label>
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                               
                                                <asp:Label ID="Labl_name" runat="server" Text="" ></asp:Label>
                                               
                                           
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                              <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Category</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                              
                                                
                                            <asp:Label ID="Lbl_bookcategory" runat="server" Text=""></asp:Label>
                                            </div>                                            
                                          
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Sub Title</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                  <asp:Label ID="Lbl_stitle" runat="server" Text=""></asp:Label>
                                            </div>                                            
                                          
                                        </div>
                                    </div>


                                        <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">ISBN No.</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_isbnno" runat="server" Text=""></asp:Label>
                                            </div>                                             
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Author</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="lbl_author" runat="server" Text=""></asp:Label>
                                            </div>                                         
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_cupboard" runat="server" Text=""></asp:Label>
                                            </div>                                          
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard Self</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                  <asp:Label ID="Lbl_cupboardself" runat="server" Text=""></asp:Label>
                                            </div>                                             
                                          
                                        </div>
                                    </div>


                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Edition</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_edition" runat="server" Text=""></asp:Label>
                                            </div>                                           
                                          
                                        </div>
                                    </div>


                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Publisher</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                  <asp:Label ID="Lbl_publisher" runat="server" Text="" ></asp:Label>
                                            </div>                                             
                                          
                                        </div>
                                    </div>


                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Cost</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_bookcost" runat="server" Text=""></asp:Label>
                                            </div>                                             
                                          
                                        </div>
                                    </div>


                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Vendor</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_vendor" runat="server" Text=""></asp:Label>
                                            </div>                                            
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Copy</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_copy" runat="server" Text=""></asp:Label>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Remarks</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                             <div class="input-group">
                                                  <asp:Label ID="Lbl_remark" runat="server" Text=""></asp:Label>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">
                               <%-- <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />--%>
                                        <asp:Button ID="submit_btn" class="btn btn-primary " runat="server" Text="Back" onclick="submit_btn_Click" />
                                       <%-- <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false" OnClick="upd_btn_Click" />
                                    --%>
                                </div>

                                <%--<div class="panel-body panel-body-table">
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

                                    
                            <asp:TemplateField HeaderText="Subtitle">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_subtitle"  runat="server" Text='<%#Eval("subtitle") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                            <asp:TemplateField HeaderText="ISBN No">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_isbnno"  runat="server" Text='<%#Eval("isbn_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    
                            <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_author"  runat="server" Text='<%#Eval("author") %>'></asp:Label>
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


                                    
                            <asp:TemplateField HeaderText="Edition">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_edition"  runat="server" Text='<%#Eval("edition") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Publisher">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_publisher"  runat="server" Text='<%#Eval("publisher") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                       <asp:TemplateField HeaderText="Book Cost">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_bookcost"  runat="server" Text='<%#Eval("book_cost") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Book Vendor">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_vendor"  runat="server" Text='<%#Eval("book_vendor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Copy">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_copy"  runat="server" Text='<%#Eval("copy") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Remark">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_remark"  runat="server" Text='<%#Eval("Remarks") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="View">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Library/Eye-icon.png" Height="50px" Width="50px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                   

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click"><span class="fa fa-times"></span>
                                                </asp:LinkButton>
                                           
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>--%>
                            </div>
                            </div>

</asp:Content>


