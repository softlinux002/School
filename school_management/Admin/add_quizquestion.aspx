<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="add_quizquestion.aspx.cs" Inherits="Admin_add_quizquestion"  EnableEventValidation="false"%>

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

   
    <asp:Label ID="Label_id" runat="server" Text="Label" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Quiz Question</strong></h3>
                                    <ul class="panel-controls">
                                       
                                    </ul>
                                </div>
        
                                <div class="panel-body">

                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Question</label>
                                        <div class="col-md-6 col-xs-12">             
                                                <asp:TextBox ID="question_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="question_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                            
                                          
                                        </div>
                                   </div>

                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Option1</label>
                                        <div class="col-md-6 col-xs-12">          
                                                <asp:TextBox ID="opt1_txt" runat="server" class="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="opt1_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                           
                                         
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Option2</label>
                                        <div class="col-md-6 col-xs-12">         
                                                <asp:TextBox ID="opt2_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="opt2_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                         
                                         
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Option3</label>
                                        <div class="col-md-6 col-xs-12"> 
                                                <asp:TextBox ID="opt3_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="opt3_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                            
                                         
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Option4</label>
                                        <div class="col-md-6 col-xs-12">
                                                <asp:TextBox ID="opt4_txt" runat="server" class="form-control"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="opt4_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                           
                                          
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Option5</label>
                                        <div class="col-md-6 col-xs-12">          
                                                <asp:TextBox ID="opt5_txt" runat="server" class="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="opt5_txt" ValidationGroup="ans"></asp:RequiredFieldValidator>                                          
                                            
                                        </div>
                                   </div>

                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Correct Option</label>
                                        <div class="col-md-6 col-xs-12">  
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="1"></asp:ListItem>
                                            <asp:ListItem Value="2"></asp:ListItem>
                                            <asp:ListItem Value="3"></asp:ListItem>
                                            <asp:ListItem Value="4"></asp:ListItem>
                                            <asp:ListItem Value="5"></asp:ListItem>
                                            </asp:RadioButtonList>

                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="RadioButtonList1" ValidationGroup="ans"></asp:RequiredFieldValidator>                                          
                                            
                                        </div>
                                   </div>

                                    </div>
                                  

                                <div class="panel-footer">
                                <asp:Button ID="export_excel" runat="server" class="btn btn-primary " 
                                        Text="Export to Excel" onclick="export_excel_Click"  />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("ques_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Section Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Question">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_question" runat="server" Text='<%#Eval("question") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Option1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_option1" runat="server" Text='<%#Eval("option1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Option2">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_option2" runat="server" Text='<%#Eval("option2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Option3">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_option3" runat="server" Text='<%#Eval("option3") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Option4">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_option4" runat="server" Text='<%#Eval("option4") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Option5">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_option5" runat="server" Text='<%#Eval("option5") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Correctoption">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_corectoption" runat="server" Text='<%#Eval("correctoption") %>'></asp:Label>
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

