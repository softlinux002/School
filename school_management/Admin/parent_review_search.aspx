<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="parent_review_search.aspx.cs" Inherits="Admin_parent_review_search" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Parent Review</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">


                            
                                
                                 
                                     <div class="panel-footer">
                                    <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                        Text="Export to Excel" onclick="Export_excel_Click" Visible="false"/>
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
                                            <asp:Label ID="lbl_father" runat="server" Text='<%#Eval("father_name") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_student" runat="server" Text='<%#Eval("student_name") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    
                                    <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll_no" runat="server" Text='<%#Eval("roll_no") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                    
                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    
                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Complaint/Review">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_complaint" runat="server" Text='<%#Eval("complaint") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                   
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>


                                    </div>
                                   </asp:Panel>
                               
                            </div>
                    </div>

</asp:Content>
