<%@ Page Title="" Language="C#" MasterPageFile="~/Library/MasterPage.master" AutoEventWireup="true" CodeFile="issuebook.aspx.cs" Inherits="Library_issuebook" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Admin/popup.css" rel="stylesheet" type="text/css" />
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

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Book Issue</strong></h3>
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

                                  
             <asp:Panel ID="Panel4" runat="server" Visible="false">
            
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Copy</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         
                                                 <asp:TextBox ID="Text_copy" runat="server" class="form-control" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                                                               
                                          
                                        </div>
                                    </div>
                                     </asp:Panel>
                                     </asp:Panel> 

                                     <br />
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Type</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                                
                                                <asp:DropDownList ID="holder_ddl" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="holder_ddl_SelectedIndexChanged">
                                            <asp:ListItem Text="----Select Holder Type---" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Employee" Value="2"></asp:ListItem>
                                                </asp:DropDownList>
                                                                                      
                                          
                                        </div>
                                    </div>


                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Library Card No </label>
                                        <div class="col-md-6 col-xs-12">                                            
                                        
                                               
                                                 <asp:TextBox ID="Text_cardno" runat="server" class="form-control" AutoPostBack="true"
                                                    ForeColor="Black" ontextchanged="Text_cardno_TextChanged"></asp:TextBox>
                                                                                  
                                          
                                        </div>
                                    </div>

                                     
                                 <asp:Panel ID="Panel1" runat="server" Visible="false">


                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                               
                                                
                                                <asp:DropDownList ID="Batch_ddl" runat="server" class="form-control">
                                            
                                                </asp:DropDownList>
                                                                                     
                                          
                                        </div>
                                    </div>

                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                           
                                               
                                                <asp:DropDownList ID="class_dll" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="class_dll_SelectedIndexChanged">
                                            
                                                </asp:DropDownList>
                                                                               
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                       
                                               
                                               <asp:DropDownList ID="section_ddl" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="section_ddl_SelectedIndexChanged">
                                            
                                                </asp:DropDownList>
                                            
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                               <asp:DropDownList ID="stream_dll" runat="server" class="form-control" AutoPostBack="true"
                                                    onselectedindexchanged="stream_dll_SelectedIndexChanged">
                                                </asp:DropDownList>
                                       
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Rollno</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                        
                                                <asp:DropDownList ID="roll_ddl" runat="server" class="form-control" >
                                                   
                                                </asp:DropDownList>
                                                                                   
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Holder Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                        
                                                 <asp:TextBox ID="Text_holdername" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                      
                                        </div>
                                    </div>

                                 </asp:Panel>


                                       
         <asp:Panel ID="Panel2" runat="server" Visible="false">
      
                                      <div class="form-group" >
                                        <label class="col-md-3 col-xs-12 control-label" >Holder Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         
                                                 <asp:TextBox ID="Text_hname" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                                                              
                                          
                                        </div>
                                    </div>

                                       </asp:Panel> <br />

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Issue Date</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                         

                                                 <asp:TextBox ID="Text_issuedate" runat="server" class="form-control" ForeColor="Black" ></asp:TextBox>
                                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_issuedate">
                                                    </asp:CalendarExtender>
                                                                            
                                          
                                        </div>
                                    </div>




                                </div>
                                <div class="panel-footer">
                                <asp:Button ID="export_excel" class="btn btn-primary " runat="server" 
                                        Text="Export to Excel" onclick="export_excel_Click"  />
                                <asp:Button ID="clear_btn" class="btn btn-default" runat="server" Text="Clear Form"  Visible="false" />
                                        <asp:Button ID="submit_btn" class="btn btn-primary " runat="server" Text="Book issue" OnClick="bookissue_click"  />
                                        <asp:Button ID="upd_btn" class="btn btn-primary pull-right" 
                                        runat="server" Text="Update" Visible="false"  />
                                    
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" >
                                
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
                                            <asp:Label ID="Lbl_book_category"  runat="server" Text='<%#Eval("category") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_book_title"  runat="server" Text='<%#Eval("title") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_book_author"  runat="server" Text='<%#Eval("author") %>'></asp:Label>
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

                                      <asp:TemplateField HeaderText="Book_cost">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_book_cost"  runat="server" Text='<%#Eval("book_cost") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                <asp:TemplateField HeaderText="Book Vendor">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_book_vendor"  runat="server" Text='<%#Eval("book_vendor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>




                                <asp:TemplateField HeaderText="Copy">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_copy"  runat="server" Text='<%#Eval("copy") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>




                                <asp:TemplateField HeaderText="Holder_type">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_holder_type"  runat="server" Text='<%#Eval("holder_type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


    
                                <asp:TemplateField HeaderText="Card_no">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_card_no"  runat="server" Text='<%#Eval("card_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="View Detail">
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Detail" ID = "lnkFake" runat="server" class="btn btn-danger btn-rounded btn-sm" />

                                           <%-- <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" CancelControlID="btnClose" BackgroundCssClass="modalBackground">--%>
                                            <%--</asp:ModalPopupExtender>--%>
                                       <%--     <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" 
                                            CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
                                            </ajaxToolkit:ModalPopupExtender>--%>
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
        <b>Batch</b>
        </td>
        <td>
         <asp:Label ID="Label2" runat="server" Text='<%#Eval("batch") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         <tr>
        <td>
        <b>Class</b>
        </td>
        <td>
         <asp:Label ID="Label3" runat="server" Text='<%#Eval("class") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
            <tr>
        <td>
        <b>Section</b>
        </td>
        <td>
         <asp:Label ID="Label1" runat="server" Text='<%#Eval("section") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
         
          <tr>
        <td>
        <b>Stream</b>
        </td>
        <td>
         
         <asp:Label ID="Lbl_email" runat="server" Text='<%#Eval("stream") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Roll No</b>
        </td>
        <td>
       
          <asp:Label ID="Label4" runat="server" Text='<%#Eval("roll_no") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Student Name</b>
        </td>
        <td>
        
        
        <asp:Label ID="Label_document" runat="server" Text='<%#Eval("student_name") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Teacher Name</b>
        </td>
        <td>
         <asp:Label ID="Label5" runat="server" Text='<%#Eval("holder_name") %>' style="white-space: normal;"></asp:Label>
        
             
        </td>
        </tr>

         <tr>
        <td>
        <b>Issue Date</b>
        </td>
        <td>
          <asp:Label ID="Label6" runat="server" Text='<%#Eval("issue_date") %>' style="white-space: normal;"></asp:Label>
             
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

                                    
                                </Columns>
                                   <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                            </asp:GridView>
                        </div>
                    </div>
                            </div>
                            </div>

</asp:Content>


