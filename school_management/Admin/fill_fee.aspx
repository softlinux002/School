<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="fill_fee.aspx.cs" Inherits="Admin_add_fee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="Label" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Fee</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12">
                                        <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span> 
                                        <asp:DropDownList ID="class_ddl" runat="server" class="form-control select">
                                        <asp:ListItem Text="1st" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2nd" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3rd" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Fourth" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Fifth" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="Sixth" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="Seventh" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="Eighth" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="Nineth" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="Tenth" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="+One" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="+Two" Value="12"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12">
                                        <div class="input-group"> 
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        <asp:DropDownList ID="section_ddl" runat="server" class="form-control select">
                                        <asp:ListItem Text="A" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="C" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="D" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="E" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="F" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="G" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="H" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="I" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="J" Value="10"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll Number</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="rollno_txt" runat="server" class="form-control" AutoPostBack="true" 
                                                    ontextchanged="rollno_txt_TextChanged"></asp:TextBox>
                                                <%--<input type="text" class="form-control"/>--%>
                                            </div>                                            
                                            <%--<span class="help-block">This is sample of text field</span>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="name_txt" runat="server" class="form-control" ReadOnly="true" Font-Bold="true"></asp:TextBox>
                                               
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Father Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="father_txt" runat="server" class="form-control" ReadOnly="true" Font-Bold="true"></asp:TextBox>
                                               
                                            </div>                                            
                                          
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Title</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="title_txt" runat="server" class="form-control"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>
                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Description</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="description_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>
                                    

                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Deposite Date</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                <asp:TextBox ID="deposit_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="deposit_txt" />
                                            </div>
                                        </div>
                                    </div>
                                  

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Total Fee</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="total_txt" runat="server" class="form-control"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Payment Fee</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="payment_txt" runat="server" class="form-control" 
                                                    AutoPostBack="true" ontextchanged="payment_txt_TextChanged"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Balance</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="balance_txt" runat="server" class="form-control" ReadOnly="true" 
                                                     AutoPostBack="true"></asp:TextBox>
                                            </div>                                            
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Status</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:DropDownList ID="status_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="Paid" Value="1"></asp:ListItem>ul
                                        <asp:ListItem Text="Pending" Value="2"></asp:ListItem>
                                        </asp:DropDownList>  
                                            </div>                                            
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" />
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" />
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("payment_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
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

                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_title" runat="server" Text='<%#Eval("title") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_description" runat="server" Text='<%#Eval("description") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_total" runat="server" Text='<%#Eval("Total") %>'></asp:Label>
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

                                    <asp:TemplateField HeaderText="Method">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_method" runat="server" Text='<%#Eval("method") %>'></asp:Label>
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
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>

