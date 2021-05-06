﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="add_dash_image.aspx.cs" Inherits="Admin_add_dash_image" %>

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

    <asp:Label ID="Label_id" runat="server" Text="Label" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add School</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Syllabus</label>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:FileUpload ID="school_img" class="fileinput btn-primary" runat="server" />
                                            <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" Visible="false" />
                                            <span class="help-block"></span>
                                        </div>
                                    </div>
                                    <asp:GridView ID="GridView2" runat="server">
                                    </asp:GridView>

                                    </div>
                                   </asp:Panel>

                                <div class="panel-footer">
                               
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                   
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


                                      <asp:TemplateField HeaderText="School Image">
                                        <ItemTemplate>
                                            <%--<asp:Label ID="lbl_image" runat="server" Text='<%#Eval("image") %>'></asp:Label>--%>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Width="50px" Height="50px" />
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

</asp:Content>



