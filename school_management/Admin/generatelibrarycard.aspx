<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="generatelibrarycard.aspx.cs" Inherits="Admin_generatelibrarycard" EnableEventValidation="false"%>

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
                                    <h3 class="panel-title"><strong>Generate Library Card</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                 <div class="panel-body"> 
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Library Card No</label>
                                                <div class="col-md-9">                                            
                                                  <asp:TextBox ID="Text_cardno" runat="server" class="form-control"></asp:TextBox>
                                                </div>
                                            </div>
                                            </asp:Panel>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Holder Type</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:DropDownList ID="DropDown_holder" runat="server" class="form-control"> 
                                                  <asp:ListItem Text="--Select Holder--" Value="0"></asp:ListItem>
                                                   <asp:ListItem Text="Student" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="Employee" Value="2"></asp:ListItem>
                                                   </asp:DropDownList>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">id</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="Text_id" runat="server" class="form-control" AutoPostBack="true"
                                                    ontextchanged="Text_id_TextChanged" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                                    ControlToValidate="Text_id" ValidationGroup="ans">
                                    
                                    </asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_name" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div>
                                     <asp:Panel ID="Panel2" runat="server">
                          
                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_batch" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_class" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_section" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div>
                                            
                                             </asp:Panel>
                                        </div>
                                        <div class="col-md-6">

                                        <asp:Panel ID="Panel3" runat="server">


                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_stream" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll No</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_roll" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                    
                                
                                                    </div>            
                                                    
                                                </div><br />

                                                </asp:Panel>
                                                
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9">
                                                  <asp:TextBox ID="Text_father" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                              
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile No</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_mobile" runat="server" ForeColor="Black" class="form-control" ReadOnly="true"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Address1</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_address" runat="server" ForeColor="Black" class="form-control" ReadOnly="true" ></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                             
                                        

                                        </div>
                                        
                                    </div>
                         
                               </div>
    
                                <div class="panel-footer">
                                  <asp:Button ID="Export_excel" class="btn btn-primary pull-right" runat="server" 
                                        Text="Export to Excel" onclick="Export_excel_Click"  />
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Card No">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_cardno"  runat="server" Text='<%#Eval("card_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_type"  runat="server" Text='<%#Eval("type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_pid"  runat="server" Text='<%#Eval("id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_batch"  runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_section"  runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_stream"  runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_roll"  runat="server" Text='<%#Eval("roll") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                       <asp:TemplateField HeaderText="Father_name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_fname"  runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_mobile"  runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Address1">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_add1"  runat="server" Text='<%#Eval("address1") %>'></asp:Label>
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
   <Triggers>
   <asp:PostBackTrigger ControlID="Export_excel" />
   </Triggers>
   </asp:UpdatePanel>
</asp:Content>

