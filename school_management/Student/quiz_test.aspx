<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="quiz_test.aspx.cs" Inherits="Student_quiz_test" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                                    <h3 class="panel-title"><strong>Quiz Test</strong></h3>
                                    <ul class="panel-controls">
                                       
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Select Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="DropDownList1" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                        </asp:DropDownList>     
                                        </div>
                                    </div>


                                    <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
        
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"></label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:Label ID="Label1" runat="server" Text="Question:"></asp:Label>
                                        <asp:Label ID="que_no" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="lbl_question" runat="server" Text='<%#Eval("question")%>'></asp:Label>
                                        <br />
                                        
                                        <asp:RadioButton ID="R1" runat="server" GroupName="ans" />
                                        <asp:Label ID="lbl_opt1" runat="server" Text='<%#Eval("option1")%>'></asp:Label>
                                        <br />

                                        <asp:RadioButton ID="R2" runat="server" GroupName="ans" />
                                        <asp:Label ID="lbl_opt2" runat="server" Text='<%#Eval("option2")%>'></asp:Label>
                                        <br />

                                        <asp:RadioButton ID="R3" runat="server" GroupName="ans" />
                                        <asp:Label ID="lbl_opt3" runat="server" Text='<%#Eval("option3")%>'></asp:Label>
                                        <br />

                                        <asp:RadioButton ID="R4" runat="server" GroupName="ans" />
                                        <asp:Label ID="lbl_opt4" runat="server" Text='<%#Eval("option4")%>'></asp:Label>
                                        <br />
                                        <asp:RadioButton ID="R5" runat="server" GroupName="ans" />
                                        <asp:Label ID="lbl_opt5" runat="server" Text='<%#Eval("option5")%>'></asp:Label>
                                            <br /> 
                                        <asp:Image ID="img_right" runat="server" ImageUrl="~/Student/Images/right.png" Height="20px" Width="20px" Visible="false"/>
                                        <asp:Image ID="img_worng" runat="server" ImageUrl="~/Student/Images/worng.png" Height="20px" Width="20px" Visible="false" />
                                     
                                        <asp:Label ID="lbl_notans" runat="server" Text="Not Answered" Visible="false"></asp:Label>
                                        <br />

                                        </div>
                                    </div>
                                    </ItemTemplate>
                                    </asp:Repeater>
        <asp:Label ID="Label_correct" runat="server" Text="" Visible="false"></asp:Label>

                                </div>
                                <div class="panel-footer">
                                        
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="Submit_click" />
                                        <asp:Button ID="back_btn" runat="server" class="btn btn-primary pull-right" Text="Back" Visible="false" OnClick="back_btn_click" />
                                        
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
                                </div>

                                

                            </div>
                            </div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

