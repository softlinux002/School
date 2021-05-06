<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="issue_item.aspx.cs" Inherits="Admin_issue_item" %>

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

   
    <asp:Label ID="Label_id" runat="server" Text="Label" Visible="false"></asp:Label>
    <asp:Label ID="lbl_stock" runat="server" Text="Label" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Issue Items</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
         
                                <div class="panel-body">

                                
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="batch_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="batch_ddl_SelectedIndexChanged">
                                       
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="batch_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                       
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="class_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label" >Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:DropDownList ID="section_dll" runat="server" class="form-control select" OnSelectedIndexChanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_dll" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label" >Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:DropDownList ID="stream_ddl" runat="server" class="form-control select">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll Number</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="roll_txt" runat="server" class="form-control" 
                                                    ontextchanged="roll_txt_TextChanged" AutoPostBack="true"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="roll_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                      
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="sname_txt" runat="server" class="form-control" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="sname_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                      
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Item Code</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="code_txt" runat="server" class="form-control" 
                                                    ontextchanged="code_txt_TextChanged" AutoPostBack="true"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="code_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                   <asp:Panel ID="Panel1" runat="server" Visible="false">

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Item Names</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="itmname_txt" runat="server" class="form-control"></asp:TextBox>
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Item Location</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="ilocation_txt" runat="server" class="form-control"></asp:TextBox>
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Item Worth</label>
                                        <div class="col-md-6 col-xs-12">    
                                                <asp:TextBox ID="worth_txt" runat="server" class="form-control"></asp:TextBox>
                                          
                                        </div>
                                    </div>

                                   </asp:Panel>
                                    </div>
                                   

                                <div class="panel-footer">
                                              <%--<asp:Button ID="export_excel" runat="server" class="btn btn-primary" 
                                                  Text="Export to Excel" onclick="export_excel_Click" />--%>
                                            <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                            <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Issue"
                                             OnClick="submit_btn_Click" ValidationGroup="ans" />
                                            <%--<asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" Visible="false" 
                                            OnClick="upd_btn_Click" ValidationGroup="ans" />--%>
                                 
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            
                        </div>
                    </div>

                            </div>
                    </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

