<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="fee_recession.aspx.cs" Inherits="Admin_fee_recession" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
   
<div class="form-horizontal">

    
    <asp:Label ID="Label_feeid" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_day" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_month" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_year" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_fee" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_feedate" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong> Fees Concession</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="batch_ddl" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="batch_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="batch_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
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
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server" AutoPostBack="true" OnSelectedIndexChanged="section_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="stream_ddl" class="form-control select" runat="server" >
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll No.</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="roll_txt" runat="server" class="form-control" 
                                                ontextchanged="roll_txt_TextChanged" AutoPostBack="true"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="roll_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="name_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Total Fee(in Rs.)</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="fee_txt" runat="server" class="form-control" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="fee_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Concession Fee(in Rs.)</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="concession_txt" runat="server" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="concession_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>


                                </div>
                                <div class="panel-footer">
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" />
                                
                                        
                                            <asp:LinkButton ID="submit_btn" runat="server" class="btn btn-primary pull-right" ValidationGroup="ans" OnClick="submit_btn_Click">Add Fee Concession</asp:LinkButton>
                                       
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">

                          
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10">
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
                                            <asp:Label ID="Lbl_id1" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname1" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll1" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname1" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_moname1" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class1" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section1" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date1" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee1" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype1" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="payment">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_payment1" runat="server" Text='<%#Eval("payment") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_balance1" runat="server" Text='<%#Eval("balance") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="lbl_status1" runat="server" Text='<%#Eval("status") %>' ForeColor="White" BackColor="Green" Width="60px" 
                                            style="text-align:center"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                   
                                    
                                </Columns>
                            </asp:GridView>
                        
                            

                        </div>
                    </div>

                            </div>
                            </div>
 </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

