<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="quiz_result.aspx.cs" Inherits="Student_quiz_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Quiz Result</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                  
                                    

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Section_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>


                                    

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
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_sub"  runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Question">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ques" runat="server" Text='<%#Eval("question") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="option1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_opt1" runat="server" Text='<%#Eval("option1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                  
                                  
                                     <asp:TemplateField HeaderText="option2">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_opt2" runat="server" Text='<%#Eval("option2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="option3">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_opt3" runat="server" Text='<%#Eval("option3") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="option4">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_opt4" runat="server" Text='<%#Eval("option4") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="option5">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_opt5" runat="server" Text='<%#Eval("option5") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Correctoption">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_co_opt" runat="server" Text='<%#Eval("correctoption") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Answer">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("ans") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="password">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_password" runat="server" Text='<%#Eval("password") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                 
                                        

                                    </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>

