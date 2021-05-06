<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="return_book.aspx.cs" Inherits="Admin_return_book" %>

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

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>
    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Return Book</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">ISBN No.</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                                <asp:TextBox ID="Text_isbn" runat="server" class="form-control" AutoPostBack="true"
                                                    ontextchanged="Text_isbn_TextChanged"></asp:TextBox>

                                                                                     
                                          
                                        </div>
                                    </div>    
                                      
         <asp:Panel ID="Panel3" runat="server" Visible="false">
    
                                                                                            
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                <asp:TextBox ID="Text_bname" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                
                                                                                     
                                          
                                        </div>
                                    </div>

                              <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Category</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         
                                                <asp:TextBox ID="Text_bookcategory" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
         
                                                                                  
                                          
                                        </div>
                                    </div>

<%--
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Sub Title</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_subtitle" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>


                                        


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Author</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                 <asp:TextBox ID="Text_author" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                            
                                          
                                        </div>
                                    </div>

<%--
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_cupboard" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>--%>

                                    <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Cupboard Self</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_cupboard_self" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>             
                                            </div>                              
                                          
                                        </div>
                                    </div>
--%>

                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Edition</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                  <asp:TextBox ID="Text_edition" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            
                                                                      
                                          
                                        </div>
                                    </div>


                                      <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Publisher</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                  <asp:TextBox ID="Text_publisher" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>


                                    
                                      <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Cost</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                  <asp:TextBox ID="Text_bookcost" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>


                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Book Vendor</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                      <asp:TextBox ID="Text_vendor" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                                    
                                          
                                        </div>
                                    </div>

                                  
                                  <%--  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Copy</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                 <asp:TextBox ID="Text_copy" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>
                                     </asp:Panel> 

                                     <br />
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Type</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                
                                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"  AutoPostBack="true"
                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                                <asp:ListItem Text="--Select Holder Type--" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Employee" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                                                                                        
                                          
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Library card No.</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                
                                                <asp:TextBox ID="Text_cardno" runat="server" class="form-control" AutoPostBack="true"
                                                    ontextchanged="Text_cardno_TextChanged"></asp:TextBox>
                                                                                
                                          
                                        </div>
                                    </div>


         <asp:Panel ID="Panel1" runat="server" Visible="false">
        

                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                
                                                <asp:TextBox ID="Text_batch" runat="server" class="form-control"></asp:TextBox>
                                                                                   
                                          
                                        </div>
                                    </div>


                                  <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                
                                      <asp:TextBox ID="Text_batch" runat="server" class="form-control-select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                            </div>                                            
                                          
                                        </div>
                                    </div>--%>

                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                                 <asp:TextBox ID="Text_class" runat="server" class="form-control"></asp:TextBox>
                                     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                <asp:TextBox ID="Text_section" runat="server" class="form-control"></asp:TextBox>
                                        
                                        </div>
                                    </div>


                                   


                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                                 <asp:TextBox ID="Text_stream" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                                                             
                                          
                                        </div>
                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll No</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                <asp:TextBox ID="Text_roll" runat="server" class="form-control"></asp:TextBox>
                               
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         
                                                 <asp:TextBox ID="Text_holdername" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                               
                                        </div>
                                    </div>
                                     </asp:Panel>

                                     <asp:Panel ID="Panel4" runat="server" Visible="false"> 
                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">copy</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                 <asp:TextBox ID="Text_copy" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                            
                                        </div>
                                    </div>
                                     </asp:Panel>
                              


                                       
         <asp:Panel ID="Panel2" runat="server" Visible="false">
      
                                      <div class="form-group" >
                                        <label class="col-md-3 col-xs-12 control-label" >Teacher Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                          
                                                 <asp:TextBox ID="Text_hname" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                  
                                        </div>
                                    </div>

                                       </asp:Panel> <br />

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Issue Date</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                 <asp:TextBox ID="Text_issuedate" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_issuedate" Format="MM/dd/yyyy">
                                                    </asp:CalendarExtender>
                                     
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Return Date</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                 <asp:TextBox ID="Text_return" runat="server" class="form-control" 
                                                    ForeColor="Black" ontextchanged="Text_return_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="Text_return" Format="MM/dd/yyyy">
                                                    </asp:CalendarExtender>
                                                                                    
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">No. of Days(for fine)</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            
                                                 <asp:TextBox ID="noofday_txt" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Fine(in Rs.)</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                 <asp:TextBox ID="fine_txt" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                           
                                        </div>
                                    </div>


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
                                        <asp:Button ID="return_btn" class="btn btn-primary " runat="server" 
                                        Text="Return" onclick="return_btn_Click"   />
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

