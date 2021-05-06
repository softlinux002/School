<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher/TeacherMasterPage.master" AutoEventWireup="true" CodeFile="Leaveform.aspx.cs" Inherits="Teacher_Leaveform" EnableEventValidation="false"%>

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

<div class="form-horizontal">

    <asp:Label ID="Lbl_stdid" runat="server" Text="" Visible="false"></asp:Label>
   <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Leave Form</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher_id</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        
                                        
                                        <asp:TextBox ID="Text_teacher_id" runat="server" class="form-control" AutoPostBack="true"
                                                ontextchanged="Text_teacher_id_TextChanged" ></asp:TextBox>   
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_teachername" runat="server" class="form-control"></asp:TextBox>   
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Day(Of month)</label>
                                        <div class="col-md-6 col-xs-12"> 
                                                <asp:DropDownList ID="day_ddl" runat="server" class="form-control">
                                                <asp:ListItem Text="Select Day" Value=""></asp:ListItem>
                                                <asp:ListItem Text="1"></asp:ListItem>
                                                <asp:ListItem Text="2"></asp:ListItem>
                                                <asp:ListItem Text="3"></asp:ListItem>
                                                <asp:ListItem Text="4"></asp:ListItem>
                                                <asp:ListItem Text="5"></asp:ListItem>
                                                <asp:ListItem Text="6"></asp:ListItem>
                                                <asp:ListItem Text="7"></asp:ListItem>
                                                <asp:ListItem Text="8"></asp:ListItem>
                                                <asp:ListItem Text="9"></asp:ListItem>
                                                <asp:ListItem Text="10"></asp:ListItem>
                                                <asp:ListItem Text="11"></asp:ListItem>
                                                <asp:ListItem Text="12"></asp:ListItem>
                                                <asp:ListItem Text="13"></asp:ListItem>
                                                <asp:ListItem Text="14"></asp:ListItem>
                                                <asp:ListItem Text="15"></asp:ListItem>
                                                <asp:ListItem Text="16"></asp:ListItem>
                                                <asp:ListItem Text="17"></asp:ListItem>
                                                <asp:ListItem Text="18"></asp:ListItem>
                                                <asp:ListItem Text="19"></asp:ListItem>
                                                <asp:ListItem Text="20"></asp:ListItem>
                                                <asp:ListItem Text="21"></asp:ListItem>
                                                <asp:ListItem Text="22"></asp:ListItem>
                                                <asp:ListItem Text="23"></asp:ListItem>
                                                <asp:ListItem Text="24"></asp:ListItem>
                                                <asp:ListItem Text="25"></asp:ListItem>
                                                <asp:ListItem Text="26"></asp:ListItem>
                                                <asp:ListItem Text="27"></asp:ListItem>
                                                <asp:ListItem Text="28"></asp:ListItem>
                                                <asp:ListItem Text="29"></asp:ListItem>
                                                <asp:ListItem Text="30"></asp:ListItem>
                                                <asp:ListItem Text="31"></asp:ListItem>
                                                </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Month</label>
                                        <div class="col-md-6 col-xs-12"> 
                                                <asp:DropDownList ID="month_ddl" runat="server" class="form-control">
 <asp:ListItem Text="Select Month" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                         <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                         <asp:ListItem Text="March"   Value="3"></asp:ListItem>
                                         <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                         <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                         <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                         <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                         <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                         <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                         <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                         <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                         <asp:ListItem Text="November" Value="12"></asp:ListItem>
                                                </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Year</label>
                                        <div class="col-md-6 col-xs-12"> 
                                                <asp:TextBox ID="year_txt" runat="server" class="form-control"></asp:TextBox> 
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="year_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Reason</label>
                                        <div class="col-md-6 col-xs-12"> 
                                                <asp:TextBox ID="Text_reason" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>   
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ValidationGroup="ans" ControlToValidate="Text_reason">
                                                    </asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    

                                </div>
                                <div class="panel-footer">
                                     <asp:Button ID="export_excel" runat="server" class="btn btn-primary" 
                                         Text="Export to Excel" onclick="export_excel_Click" />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" />
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
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
                                    
                                    <asp:TemplateField HeaderText="Teacher_id">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_teachid" runat="server" Text='<%#Eval("Teacher_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Teacher_name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_teachname" runat="server" Text='<%#Eval("Teacher_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Day">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_day" runat="server" Text='<%#Eval("day") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Month">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_month" runat="server" Text='<%#Eval("month") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_year" runat="server" Text='<%#Eval("year") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Reason">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_reason" runat="server" Text='<%#Eval("Reason") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("Status") %>'></asp:Label>
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


