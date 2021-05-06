<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="search_student_biodata.aspx.cs" Inherits="Admin_search_student_biodata" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
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
    <asp:Label ID="father_lbl" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="mother_lbl" runat="server" Text="" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Bio-Data About Fees</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                                                                                      
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                     <asp:DropDownList ID="ddl_selectbatch" runat="server" class="form-control select" AutoPostBack="true"

                                                onselectedindexchanged="ddl_selectbatch_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     </div>
                                    </div>



                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_class" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_class_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_section" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_section_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_stream" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_stream_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>


                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Roll No.</label>
                                        <div class="col-md-6 col-xs-12"> 
                                      <asp:DropDownList ID="ddl_roll" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_roll_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                    <asp:TextBox ID="Text_name" runat="server"  class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">

                                          <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click" Visible="false" />
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Search" OnClick="submit_btn_Click" />
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                            
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
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_father" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mother" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll_no" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
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

                                     

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fees">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Feetype">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Payment">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_payment" runat="server" Text='<%#Eval("payment") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_balance" runat="server" Text='<%#Eval("balance") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                </Columns>
                            </asp:GridView>
                           </asp:Panel>
                        </div>
                    </div>

                            </div>
                            </div>
    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

