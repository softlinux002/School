<%@ Page Title="" Language="C#" MasterPageFile="~/Hostel/hostelMasterPage.master" AutoEventWireup="true" CodeFile="hosteltype.aspx.cs" Inherits="Hostel_hosteltype" %>

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
<div class="form-horizontal">

    <asp:Label ID="Lbl_stdid" runat="server" Text="" Visible="false"></asp:Label>
    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Hostel Room Type</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                
                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Hostel Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="ddl_hostelname" runat="server" class="form-control select">
                                        </asp:DropDownList>
                                        </div>
                                    </div>     
                                    
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">No Of Rooms</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:TextBox ID="Text_roomsno" runat="server" class="form-control select"></asp:TextBox>  
                                       
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_roomsno" ValidationGroup="ans">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div> 
                                    
                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Room Type</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control select">
                                            <asp:ListItem Text="--Select Type--" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="Double" Value="2"></asp:ListItem>
                                            </asp:DropDownList>
                                              
                                        </div>
                                    </div>   
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Seat</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         <asp:TextBox ID="Text_seat" runat="server" class="form-control select"></asp:TextBox>  
                                       
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="Text_seat" ForeColor="Red" ValidationGroup="ans">
                                            </asp:RequiredFieldValidator>
                                        </div>
                                    </div> 

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Available Room</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         <asp:TextBox ID="Text_available" runat="server" class="form-control select"></asp:TextBox>  
                                        
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Text_available" ForeColor="Red" ValidationGroup="ans">
                                                </asp:RequiredFieldValidator>
                                        </div>
                                    </div>                                                             
                       
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Room Charges</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         <asp:TextBox ID="Text_charge" runat="server" class="form-control select"></asp:TextBox>  
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="Text_charge" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <%--div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>

                                  <%--  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Roll No.</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="roll_ddl" class="form-control select" runat="server">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>
                                      <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Complaint</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_complaint" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>    
                                        </div>
                                    </div>
--%>
                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                          Text="Export to excel" OnClick="Export_excel_Click"/>
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" OnClick="clr_btn_Click"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click"  ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update"  Visible="false"  OnClick="upd_btn_Click"/>
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" onpageindexchanging="GridView1_PageIndexChanging">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Hostel Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hostel_name" runat="server" Text='<%#Eval("hostel_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="No_Of_Rooms">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_No_Of_Rooms" runat="server" Text='<%#Eval("no_of_rooms") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_type" runat="server" Text='<%#Eval("room_type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Seat">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_seat" runat="server" Text='<%#Eval("seat") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Available">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_available" runat="server" Text='<%#Eval("available") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Room Charge">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_room_charge" runat="server" Text='<%#Eval("room_charge") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" 
                                            class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" 
                                            class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" 
                                                OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click">
                                                <span class="fa fa-times"></span></asp:LinkButton>
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

