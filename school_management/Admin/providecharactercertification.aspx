<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true"
    CodeFile="providecharactercertification.aspx.cs" Inherits="Admin_providecharactercertification" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
   <ContentTemplate>
   <div class="form-horizontal">
       
        <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <strong>Provide Character Certificate</strong></h3>
                <ul class="panel-controls">
                </ul>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        School Name</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:TextBox ID="text_school" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="text_school" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Student Name</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:TextBox ID="Text_sname" runat="server" class="form-control" AutoPostBack="true"
                            placeholder="Full Name" OnTextChanged="Text_sname_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="Text_sname" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Father Name</label>
                    <div class="col-md-6 col-xs-12">
                        <%-- <asp:TextBox ID="Text_father" runat="server" class="form-control" placeholder="Full Name"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddl_father" runat="server" class="form-control select">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="ddl_father" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Class</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:TextBox ID="Text_class" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="Text_class" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Marks Certificate(%)</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:TextBox ID="Text_marks" runat="server" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="Text_marks" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Issue Date</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:TextBox ID="Text_date" runat="server" class="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                        </asp:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="Text_date" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 col-xs-12 control-label">
                        Status</label>
                    <div class="col-md-6 col-xs-12">
                        <asp:DropDownList ID="status_ddl" runat="server" CssClass="form-control select">
                        <asp:ListItem Text="Good"></asp:ListItem>
                        <asp:ListItem Text="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Not Good"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*"
                            ForeColor="Red" ControlToValidate="status_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                    </div>
                </div>

            </div>
            <div class="panel-footer">
                <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"
                    OnClick="clr_btn_Click" />
                <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit"
                    OnClick="submit_btn_Click" ValidationGroup="ans" />
                <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update"
                    OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
            </div>
            <div class="panel-body panel-body-table">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" class="table table-bordered table-striped table-actions"
                        AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
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
                            <asp:TemplateField HeaderText="School Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_school" runat="server" Text='<%#Eval("school_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Father Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Class">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Marks">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_marks" runat="server" Text='<%#Eval("marks") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm"
                                        OnClick="btn_edit_Click" Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                    <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                        Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');"
                                        OnClick="btn_delete_Click"><span class="fa fa-times"></span></asp:LinkButton>
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
