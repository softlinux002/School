<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="add_fee.aspx.cs" Inherits="Admin_add_fee" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

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
<ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
   
<div class="form-horizontal">

    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Fees</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control " 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" 
                                                onselectedindexchanged="Batch_dll_SelectedIndexChanged"  >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Batch_dll" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>     
                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="streamddl" class="form-control " runat="server" >                                                                                                    
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="streamddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control " runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="class_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control " runat="server" AutoPostBack="true">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Fee Type</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="ddl_type" class="form-control " runat="server" AutoPostBack="true">
                                        <asp:ListItem Text="Registration Fee"></asp:ListItem>
                                        <asp:ListItem Text="Examination Fee"></asp:ListItem>
                                        <asp:ListItem Text="Class Fee"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_type" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    

                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Date</label>
                                        <div class="col-md-6 col-xs-12">
                                                <asp:TextBox ID="deposit_txt" runat="server" class="form-control"></asp:TextBox>
                                                <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="deposit_txt" Format="dd/MM/yyyy"/>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="deposit_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">fees(in Rs.)</label>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:TextBox ID="fee_txt" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="fee_txt" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">
                                 <asp:Button ID="export_excel" runat="server" class="btn btn-primary " 
                                        Text="Export to Excel" onclick="export_excel_Click"/>
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click"  Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
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

                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Feetype">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Action">
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
  <asp:PostBackTrigger ControlID="export_excel"/>
  </Triggers>
    </asp:UpdatePanel>
</asp:Content>

