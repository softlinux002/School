<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="createpage.aspx.cs" Inherits="Admin_createpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
}
.GridPager a
    {
        background-color: #e34724;
        color:white;
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

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Crate Page</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label"> Designation Name</label>
                                                <div class="col-md-9">                                            
                                                    <asp:DropDownList ID="ddl_rname" runat="server" class="form-control select">
                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label"> Page Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_menuname" runat="server" class="form-control select">
                                                       
                                                
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_pageurl" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label"> Page url</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_pageurl" runat="server" class="form-control select" >
                                                       
                                                
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_pageurl" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Page Discription</label>
                                                <div class="col-md-9 col-xs-12">
                                                      <asp:TextBox ID="txt_description" runat="server"  class="form-control select"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="txt_description" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                        
                                        </div>
                                        <div class="col-md-6">
                                    
                                        </div>
                                     

                                </div>
                                <div class="panel-footer">
                                         <%-- <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />--%>
                                        <asp:Button ID="btn_cancel" runat="server" class="btn btn-default" Text="Clear Form" OnClick="btn_cancel_click" Visible="false"/>
                                        <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary pull-right" Text="Submit" 
                                        OnClick="btnSubmit_click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_click" 
                                        Visible="false" ValidationGroup="ans"/>
                                        <asp:Label ID="Lbl_Idd" runat="server" Text="Label" Visible="false"></asp:Label>
                                        <asp:Label ID="lblroleid" runat="server" Text="Label" Visible="false"></asp:Label>
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("page_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Role id">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_rol" runat="server" Text='<%#Eval("role_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Role Name">
                                        <ItemTemplate>
                                            <asp:Label ID="role_name" runat="server" Text='<%#Eval("role_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Page Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Name" runat="server" Text='<%#Eval("page_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                       <asp:TemplateField HeaderText="Page Url">
                                        <ItemTemplate>
                                            <asp:Label ID="status" runat="server" Text='<%#Eval("page_url") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                       <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:Label ID="description" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="EditLinkButton" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="EditLinkButton_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="DeleteLinkButton" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="DeleteLinkButton_Click"><span class="fa fa-times"></span></asp:LinkButton>
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


