<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parentMaster.master" AutoEventWireup="true" CodeFile="Transport_fee_show.aspx.cs" Inherits="Parent_Transport_fee_show" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Transport Fee</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                 <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Father Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                              <asp:TextBox ID="TextBox1" runat="server" class="form-control" AutoPostBack="true"
                                                ontextchanged="TextBox1_TextChanged" placeholder="Full Name"></asp:TextBox>   
                                        </div>
                                    </div> --%>    
                                    
                                <%--    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" 
                                                AutoPostBack="true" onselectedindexchanged="student_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>      --%>                                                         
                                 
                                    <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" 
                                                AutoPostBack="true" onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>

                                   <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Section_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="Section_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>
--%>

                                    

                                </div>
                                <div class="panel-footer">
                                       
                                        <asp:Button ID="Export_excel" runat="server" class="btn btn-primary " 
                                            Text="Export to Excel" onclick="Export_excel_Click"  />
                                        
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
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("Stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_studentname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Route">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_route" runat="server" Text='<%#Eval("route") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_payfee" runat="server" Text='<%#Eval("pay_fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Remaaining">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_remaining" runat="server" Text='<%#Eval("remaining") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


<%--
                                     <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_balance" runat="server" Text='<%#Eval("balance") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                   
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>



