<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="timetable.aspx.cs" Inherits="Admin_timetable" EnableEventValidation="false"%>

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

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Manage Time Table</strong></h3>
                                    <ul class="panel-controls">
                                    
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">
                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control select" 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" onselectedindexchanged="Batch_dll_SelectedIndexChanged" >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>     
                                    
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="streamddl" class="form-control select" runat="server" AutoPostBack="true" >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="streamddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
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
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged">
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Subject</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="DropDown_subject" class="form-control select" runat="server">
                                        <asp:ListItem Text="Select Subject" Value="0"></asp:ListItem>
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDown_subject" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher Name</label>
                                        <div class="col-md-6 col-xs-12">                
                                            <asp:DropDownList ID="teacher_ddl" runat="server" class="form-control select ">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="teacher_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>             
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Day</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="DropDownList2" class="form-control select" runat="server">
                                        <asp:ListItem Text="Select Day" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Sunday" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Monday" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Tuesday" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Wednesday" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Thrusday" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="Friday" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="Saturday" Value="7"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDownList2" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Starting Time</label>
                                        <div class="col-md-6 col-xs-12">       
                                                <asp:TextBox ID="stime_txt" runat="server" class="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stime_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                           
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Ending Time</label>
                                        <div class="col-md-6 col-xs-12">
                                                <asp:TextBox ID="etime_txt" runat="server" class="form-control"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="etime_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                      <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>

                                    </div>
                                   </asp:Panel>

                                <div class="panel-footer">
                                                                  
                                     <asp:Button ID="export_excel" runat="server" class="btn btn-primary "  
                                         Text="Export to Excel" onclick="export_excel_Click" />
                                       <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false" />
                                                <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" OnClick="LinkButton1_Click" Text="Submit" ValidationGroup="ans" />
                                                <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" 
                                                Visible="false" OnClick="upd_btn_Click" ValidationGroup="ans" />
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
                                            <asp:Label ID="Lbl_batch"  runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="stream">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_stream"  runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Teacher Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_teachername" runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subject" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Day">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_day" runat="server" Text='<%#Eval("day") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Starting Time">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stime" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Ending Time">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_etime" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
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
 <asp:PostBackTrigger ControlID="export_excel"/>
 </Triggers>
    </asp:UpdatePanel>
</asp:Content>

