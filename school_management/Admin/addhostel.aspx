<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="addhostel.aspx.cs" Inherits="Admin_addhostel" %>

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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
   
<div class="form-horizontal">
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Hostel</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                
                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Hostel No</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         <asp:TextBox ID="Text_hostelno" runat="server" class="form-control select"></asp:TextBox>
                                       
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                        ControlToValidate="Text_hostelno" ValidationGroup="ans">
                        </asp:RequiredFieldValidator>
                                        </div>
                                    </div>     
                                    
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Hostel Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_hostelname" runat="server" class="form-control select"></asp:TextBox>
                                       
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_hostelname" ValidationGroup="ans">
                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div>       
                                </div>
                                <div class="panel-footer">
                                      
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" OnClick="clr_btn_Click"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" ValidationGroup="ans"
                                            Text="Submit" onclick="submit_btn_Click"  />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update"  Visible="false" OnClick="upd_btn_Click" />
                                   
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("hostel_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Hostel No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hno" runat="server" Text='<%#Eval("hostel_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                        <asp:TemplateField HeaderText="Hostel Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hname" runat="server" Text='<%#Eval("hostel_name") %>'></asp:Label>
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
    </asp:UpdatePanel>
</asp:Content>





