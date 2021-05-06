<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parentMaster.master" AutoEventWireup="true" CodeFile="Search_student_complaint.aspx.cs" Inherits="Parent_Search_student_complaint" %>

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
                                    <h3 class="panel-title"><strong>Complaint</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                 <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Father Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                              <asp:TextBox ID="TextBox1" runat="server" class="form-control" AutoPostBack="true"
                                                ontextchanged="TextBox1_TextChanged" placeholder="Full Name"></asp:TextBox>   
                                        </div>
                                    </div>  --%>   
                                    
                                  <%--  
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" 
                                                AutoPostBack="true" onselectedindexchanged="student_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   --%>                                                            
                                 
                                  <%--  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" 
                                                AutoPostBack="true" onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>

                                    <%--div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Section_ddl" class="form-control select" 
                                        runat="server" AutoPostBack="true">
                                                
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Complaint</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="complaintDownList" class="form-control select" 
                                        runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="complaintDownList_SelectedIndexChanged" >
                                              
                                        <asp:ListItem Text="Select Complaint" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Principle" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Teacher" Value="2"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                    </div>


                                    

                                </div>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
       
                                <div class="panel-body panel-body-table" >
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
                                    <asp:TemplateField HeaderText="Student_name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_student_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
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
                                     <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Complaint">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_complaint" runat="server" Text='<%#Eval("complaint") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
 
                                    </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                     </asp:Panel>
                     <asp:Panel ID="Panel2" runat="server" Visible="false">
       
                                <div class="panel-body panel-body-table" >
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
                                   
                                    
                                    <asp:TemplateField HeaderText="Student_name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_student_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("student_rollno") %>'></asp:Label>
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
                                     <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderText="Complaint">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_complaint" runat="server" Text='<%#Eval("complaint") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                 
                                        

                                    </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                     </asp:Panel>

                            </div>
                            </div>
</ContentTemplate>
</asp:UpdatePanel>
</asp:Content>


