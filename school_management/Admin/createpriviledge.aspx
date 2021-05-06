<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="createpriviledge.aspx.cs" Inherits="Admin_createpriviledge" %>

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
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Allow Priviledges</strong></h3>
                                    <ul class="panel-controls">
                                
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">User Email</label>
                                        <div class="col-md-6 col-xs-12"> 
                                      
                                         <asp:DropDownList ID="ddl_useremail" runat="server" class="form-control">
                
                                         </asp:DropDownList>
                                        </div>
                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Role Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                      
                                         <asp:DropDownList ID="ddl_Rolename" runat="server" class="form-control">
                
                                 </asp:DropDownList>
                                        </div>
                                    </div>

                                    
                                </div>
                                <div class="panel-footer">
                                        <asp:Button ID="btn_cancel" runat="server" class="btn btn-default" Text="Clear Form" OnClick="btn_Cancel_Click" />
                                        <asp:Button ID="btn_submit" runat="server" class="btn btn-primary pull-right" Text="Submit" 
                                        OnClick="btn_submit_click" ValidationGroup="ans" />
                                        <asp:Button ID="btn_update" runat="server" class="btn btn-primary pull-right" Text="Update" 
                                        OnClick="btn_update_click" Visible="false" ValidationGroup="ans" />
                                         <asp:Label ID="Lbl_Idd" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="lbluserid" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:Label ID="lbl_updateid" runat="server" Text="" Visible="false"></asp:Label>
                                   
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

                                    <asp:TemplateField HeaderText="Role Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_role" runat="server" Text='<%#Eval("role_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="User Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="EditLinkButton" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="DeleteLinkButton" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_click"><span class="fa fa-times"></span></asp:LinkButton>
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



