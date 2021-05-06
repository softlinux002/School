<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="search_book.aspx.cs" Inherits="Admin_search_book" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
<div class="form-horizontal">

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>

     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Search Book</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                    <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">ISBN No.</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="Text_isbn" runat="server" class="form-control"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>   --%> 
                                      
         <asp:Panel ID="Panel3" runat="server" Visible="true">


                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                <asp:TextBox ID="Text_bname" runat="server" class="form-control" AutoPostBack="true"
                                                    ForeColor="Black" ontextchanged="Text_bname_TextChanged"></asp:TextBox>
                                               
                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="Text_bname" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCountries">

                                                </asp:AutoCompleteExtender>
                                                                              
                                          
                                        </div>
                                    </div>
    
                                  <%--  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">ISBN No.</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                              <asp:TextBox ID="Text_isbn" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>

                                            </div>                                            
                                          
                                        </div>
                                    </div>                                                          
                                    --%>

                             


                                   


                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Category</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                
                                              <asp:TextBox ID="Text_bookcategory" runat="server" class="form-control"></asp:TextBox>

                                                                                     
                                          
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Sub Title</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                 <asp:TextBox ID="Text_subtitle" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                     
                                          
                                        </div>
                                    </div>


                                        


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Author</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                        
                                                
                                                 <asp:TextBox ID="Text_author" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                      
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                 <asp:TextBox ID="Text_cupboard" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                    
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard Self</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                 <asp:TextBox ID="Text_cupboard_self" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>             
                                        </div>
                                    </div>


                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Edition</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                  <asp:TextBox ID="Text_edition" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>


                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Publisher</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                  <asp:TextBox ID="Text_publisher" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                      
                                          
                                        </div>
                                    </div>


                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Cost</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                  <asp:TextBox ID="Text_bookcost" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                 
                                          
                                        </div>
                                    </div>


                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Vendor</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         
                                                      <asp:TextBox ID="Text_vendor" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                          
                                        </div>
                                    </div>

                                  
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Copy</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                                 <asp:TextBox ID="Text_copy" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                     </asp:Panel> 

                                     <br />
                                    <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Type</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                
                                                <asp:DropDownList ID="holder_ddl" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="holder_ddl_SelectedIndexChanged">
                                            <asp:ListItem Text="----Select Holder Type---" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Employee" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>

                                     
         <asp:Label ID="Lbl_id" runat="server" Text="" Visible="false"></asp:Label>
                                 <asp:Panel ID="Panel1" runat="server" Visible="false">


                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                
                                                <asp:DropDownList ID="Batch_ddl" runat="server" class="form-control">
                                            
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:DropDownList ID="class_dll" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="class_dll_SelectedIndexChanged">
                                            
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                               <asp:DropDownList ID="section_ddl" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="section_ddl_SelectedIndexChanged">
                                            
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                               <asp:DropDownList ID="stream_dll" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="stream_dll_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Rollno</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:DropDownList ID="roll_ddl" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="roll_ddl_SelectedIndexChanged">
                                                </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_holdername" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                 </asp:Panel>


                                       
         <asp:Panel ID="Panel2" runat="server" Visible="false">
      
                                      <div class="form-group" >
                                        <label class="col-md-3 col-xs-12 control-label" >Holder Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_hname" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                       </asp:Panel> <br />

                                  <%--    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Issue Date</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_issuedate" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_issuedate">
                                                    </asp:CalendarExtender>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>


<%--
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Remarks</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_remarks" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>

                                </div>
                                <div class="panel-footer">
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form"  Visible="false" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary " runat="server" Text="Book issue" Visible="false"/>
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false"  />
                                    
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
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
                            </asp:GridView>--%>
                        </div>
                    </div>
                            </div>
                            </div>
                            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>



