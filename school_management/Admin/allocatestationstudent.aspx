<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="allocatestationstudent.aspx.cs" Inherits="Admin_allocatestationstudent" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
  
<div class="form-horizontal">

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Station Allocate To Student</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                                           <div class="row">
                                        
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Select Batch</label>
                                                <div class="col-md-9">                                            
                                                     <asp:DropDownList ID="ddl_selectbatch" runat="server" class="form-control select" AutoPostBack="true"

                                                onselectedindexchanged="ddl_selectbatch_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" 
                                     ForeColor="Red" ControlToValidate="ddl_selectbatch" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                               <asp:DropDownList ID="ddl_class" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_class_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                     ForeColor="Red" ControlToValidate="ddl_class" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_section" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_section_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_section" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:DropDownList ID="ddl_stream" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_stream_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_stream" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll No.</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="ddl_roll" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_roll_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_roll" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="Text_name" runat="server"  class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_name" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select Route</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="ddl_route" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_route_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_route" 
                                     ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Available Seat</label>
                                                <div class="col-md-9">
                                                       <asp:TextBox ID="Text_availableseat" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black">
                                                       </asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                          ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_availableseat" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                   
                                                </div>
                                            </div>
                                            </asp:Panel>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select Station</label>
                                                <div class="col-md-9">
                                                       <asp:DropDownList ID="ddl_station" runat="server" class="form-control select">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_station" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select Bus No.</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="ddl_busno" runat="server" class="form-control select">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_busno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select Both Side/One Side</label>
                                                <div class="col-md-9">
                                                        <asp:DropDownList ID="ddl_side" runat="server" 
                                        class="form-control select" AutoPostBack="true" onselectedindexchanged="ddl_side_SelectedIndexChanged">
                                        <asp:ListItem Text="Select Side" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="One Way Fare" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Two Way Fare" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_side" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Amount Payable</label>
                                                <div class="col-md-9">
                                                       <asp:TextBox ID="amount_txt" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                                            runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="amount_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                </div>
                                            </div><br /><br />

                                        </div>
                                        
                                    </div>                                           
                                  <%--   <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Select Batch</label>
                                        <div class="col-md-2 col-xs-2"> 
                                     <asp:DropDownList ID="ddl_selectbatch" runat="server" class="form-control select" AutoPostBack="true"

                                                onselectedindexchanged="ddl_selectbatch_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" 
                                     ForeColor="Red" ControlToValidate="ddl_selectbatch" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                     </div>

                                      <label class="col-md-2 col-xs-4 control-label"> Class</label>
                                        <div class="col-md-2 col-xs-3"> 
                                   <asp:DropDownList ID="ddl_class" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_class_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                     ForeColor="Red" ControlToValidate="ddl_class" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label"> Section</label>
                                        <div class="col-md-2 col-xs-3"> 
                                   <asp:DropDownList ID="ddl_section" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_section_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_section" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label"> Stream</label>
                                        <div class="col-md-2 col-xs-2"> 
                                   <asp:DropDownList ID="ddl_stream" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_stream_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_stream" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                          <label class="col-md-2 col-xs-4 control-label"> Roll No.</label>
                                        <div class="col-md-2 col-xs-3"> 
                                      <asp:DropDownList ID="ddl_roll" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_roll_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_roll" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label"> Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                    <asp:TextBox ID="Text_name" runat="server"  class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_name" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label"> Select Route</label>
                                        <div class="col-md-2 col-xs-2"> 
                                    <asp:DropDownList ID="ddl_route" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_route_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_route" 
                                     ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                                       <label class="col-md-2 col-xs-4 control-label"> Available Seat</label>
                                        <div class="col-md-2 col-xs-3"> 
                                          <asp:TextBox ID="Text_availableseat" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                          ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_availableseat" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                        </asp:Panel>
                                          <label class="col-md-2 col-xs-4 control-label"> Select Station</label>
                                        <div class="col-md-2 col-xs-3"> 
                                   <asp:DropDownList ID="ddl_station" runat="server" class="form-control select">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_station" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>
                                        
 <br />
 



                                    <%--<div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label"> Select Bus No.</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:DropDownList ID="ddl_busno" runat="server" class="form-control select">
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                     ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_busno" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Select Both Side/One Side</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="ddl_side" runat="server" 
                                        class="form-control select" AutoPostBack="true" onselectedindexchanged="ddl_side_SelectedIndexChanged">
                                        <asp:ListItem Text="Select Side" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="One Way Fare" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Two Way Fare" Value="2"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_side" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Amount Payable</label>
                                        <div class="col-md-2 col-xs-3"> 
                                            <asp:TextBox ID="amount_txt" runat="server" class="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                                            runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="amount_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>--%>

                                </div>
                                <div class="panel-footer">
                                          <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click"  />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans"/>
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

                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_drivername" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_drivercontactno" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll_no" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Route">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_route" runat="server" Text='<%#Eval("route") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Station">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_station" runat="server" Text='<%#Eval("station") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Bus no.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_bus_no" runat="server" Text='<%#Eval("bus_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Side">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_way_side" runat="server" Text='<%#Eval("way_side") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
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



