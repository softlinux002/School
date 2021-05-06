<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Libraryemppasschang.aspx.cs" Inherits="Admin_Libraryemppasschang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Change Password</strong></h3>
                                    <ul class="panel-controls">
                                       
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 
        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Old Password</label>
                                        <div class="col-md-6 col-xs-12"> 
                             <asp:TextBox ID="Text_oldpass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">New Password</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_newpass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Confirm Password</label>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:TextBox ID="text_confirm" runat="server" class="form-control" TextMode="Password"></asp:TextBox> 
                                                <asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="Password not Match" ForeColor="Red"
                                                ControlToCompare="Text_newpass" ControlToValidate="text_confirm">
                                                </asp:CompareValidator>
                                        </div>
                                    </div>

                                </div>
                                <div class="panel-footer">
                                       
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" />
                                        
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                          
                        </div>
                    </div>

                            </div>
                            </div>
</asp:Content>

