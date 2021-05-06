<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parentMaster.master" AutoEventWireup="true" CodeFile="Parent_review.aspx.cs" Inherits="Parent_Parent_review" EnableEventValidation="false"%>

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
                                    <h3 class="panel-title"><strong>Complaints/Review</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 
                                    <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Father Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:TextBox ID="Text_Father" runat="server" class="form-control" ForeColor="black" ReadOnly="true" >
                                                 </asp:TextBox>
                               
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                           <asp:DropDownList ID="student_ddl" class="form-control select" runat="server"                                                                                                        onselectedindexchanged="student_ddl_SelectedIndexChanged" AutoPostBack="true" >
                                             
                                        </asp:DropDownList> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll No</label>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:TextBox ID="text_roll" runat="server" class="form-control" ForeColor="black" ReadOnly="true"></asp:TextBox> 
                                                
                                        </div>
                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">
                                           <%-- <asp:DropDownList ID="class_ddl" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                            </asp:DropDownList>--%>
                                            <asp:TextBox ID="text_class" runat="server" class="form-control" ForeColor="black" ReadOnly="true"></asp:TextBox> 
                                                
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <%-- <asp:DropDownList ID="Section_ddl" class="form-control select" runat="server" >
                                        
                                        </asp:DropDownList>  --%>   
                                          <asp:TextBox ID="Text_section" runat="server" class="form-control" ForeColor="black" ReadOnly="true"></asp:TextBox> 
                                        </div>
                                    </div>


                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:TextBox ID="Text_Stream" runat="server" class="form-control" ForeColor="black" ReadOnly="true"></asp:TextBox> 
                                        </div>
                                    </div>


                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Commplaints/Review</label>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:TextBox ID="TextBox1" runat="server" class="form-control" ForeColor="black" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                         
                                        </div>
                                    </div>

                               
                                </div>
                                <div class="panel-footer">
                                          <asp:Button ID="export_excel" runat="server" class="btn btn-primary " 
                                              Text="Export to Excel" onclick="export_excel_Click"  />
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="Submit_click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" />
                                        
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

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fathername" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Complaint">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_complaint" runat="server" Text='<%#Eval("complaint") %>'></asp:Label>
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

