<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="add_busdetail.aspx.cs" Inherits="Admin_add_busdetail" EnableEventValidation="false" %>

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
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
    
<div class="form-horizontal">

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Bus Detail</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">School Bus No.</label>
                                                <div class="col-md-9">                                            
                                                     <asp:TextBox ID="Text_school_busno" runat="server"  class="form-control select"></asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Bus Regn. No.</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <asp:TextBox ID="Text_busregnno" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_busregnno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select Route</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_route" runat="server" class="form-control select" >
                                                
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_route" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Driver Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="ddl_drivername" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_drivername_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_drivername" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Driver Contact No.</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_drivercontactno" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_seat" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Seat Capcity</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_seat" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_seat" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Model</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_model" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_model" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Refrence Contact No</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_refrence_contact" runat="server" class="form-control select" ></asp:TextBox> 
                                                </div>
                                            </div>
                                            

                                        </div>
                                     <%--<div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">School Bus No.</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:TextBox ID="Text_school_busno" runat="server"  class="form-control select"></asp:TextBox>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Bus Regn. No.</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:TextBox ID="Text_busregnno" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_busregnno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Select Route</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:DropDownList ID="ddl_route" runat="server" class="form-control select" >
                                                
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_route" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>


                                     <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Driver Name</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:DropDownList ID="ddl_drivername" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_drivername_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_drivername" ValidationGroup="ans"></asp:RequiredFieldValidator>

                                        </div>

                                          <label class="col-md-2 col-xs-4 control-label"> Driver Contact No.</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:TextBox ID="Text_drivercontactno" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_drivercontactno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Seat Capcity</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:TextBox ID="Text_seat" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_seat" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>


                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Model</label>
                                        <div class="col-md-6 col-xs-12"> 
                                    <asp:TextBox ID="Text_model" runat="server"  class="form-control select"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_model" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>

                                  

                                    

                                </div>
                                <div class="panel-footer">
                                          <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans"/>
                                   
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

                                    <asp:TemplateField HeaderText="Bus no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_busno" runat="server" Text='<%#Eval("school_bus_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Bus Regd.no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_busregdno" runat="server" Text='<%#Eval("bus_regd_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Driver Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_drivername" runat="server" Text='<%#Eval("driver_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Driver Contactno.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_drivercontactno" runat="server" Text='<%#Eval("driver_contact_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Seat Capacity">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_saetcapacity" runat="server" Text='<%#Eval("seat_capacity") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Model">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_model" runat="server" Text='<%#Eval("model") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Select Route">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_select_route" runat="server" Text='<%#Eval("select_route") %>'></asp:Label>
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
<asp:PostBackTrigger ControlID="Export_excel"/>
</Triggers>
    </asp:UpdatePanel>
</asp:Content>


