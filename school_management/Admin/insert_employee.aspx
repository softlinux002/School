<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="insert_employee.aspx.cs" Inherits="Admin_insert_employee" %>

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
                                    <h3 class="panel-title"><strong>Add Employee</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label"> First Name</label>
                                                <div class="col-md-9">                                            
                                                     <asp:TextBox ID="Tb_fname" runat="server"  class="form-control select"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Last Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="tb_lname" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="tb_lname" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Email Id</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="tb_email" runat="server" class="form-control select" >
                                                
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="tb_email" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">User Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                      <asp:TextBox ID="Uname_txt" runat="server"  class="form-control select"></asp:TextBox>
                                        
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Uname_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                   <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Type</label>
                                                <div class="col-md-9">
                                                       <asp:DropDownList ID="ddl_type" runat="server" class="form-control select">
                                    <asp:ListItem Text="-- Select --" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="Admin" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Student" Value="2"></asp:ListItem>
                                     <asp:ListItem Text="Hostel" Value="3"></asp:ListItem>
                                      <asp:ListItem Text="Library" Value="4"></asp:ListItem>
                                       <asp:ListItem Text="Teacher" Value="5"></asp:ListItem>
                                       <asp:ListItem Text="Parent" Value="6"></asp:ListItem>
                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Password</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="password_txt" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="password_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>
                                                
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
                                         
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Role Name</label>
                                                <div class="col-md-9">
                                                       <asp:DropDownList ID="ddlrname" runat="server"  class="form-control select">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                                        ControlToValidate="ddlrname" ForeColor="Red" ValidationGroup="a"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label"> Address 1</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_address1" runat="server" class="form-control select" TextMode="MultiLine"></asp:TextBox> 
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label"> Mobile No.</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_no" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Country</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_country" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>

                                              <div class="form-group">                                        
                                                <label class="col-md-3 control-label">State</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_state" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">City</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_city" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>

                                            
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Postal Code</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="tb_postal" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>
                                        </div>
                                     

                                </div>
                                <div class="panel-footer">
                                         <%-- <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />--%>
                                        <asp:Button ID="btn_cancel" runat="server" class="btn btn-default" Text="Clear Form" OnClick="btn_cancel_Click" Visible="false"/>
                                        <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary pull-right" Text="Submit" 
                                        OnClick="btnSubmit_click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_click" 
                                        Visible="false" ValidationGroup="ans"/>
                                        <asp:Label ID="Lbl_Idd" runat="server" Text="Label" Visible="false"></asp:Label>
                                   
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

                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="FName" runat="server" Text='<%#Eval("FName") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="Email" runat="server" Text='<%#Eval("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Role">
                                        <ItemTemplate>
                                            <asp:Label ID="RoleName" runat="server" Text='<%#Eval("RoleName") %>'></asp:Label>
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



