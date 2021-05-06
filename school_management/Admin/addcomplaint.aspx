<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="addcomplaint.aspx.cs" Inherits="Admin_addcomplaint" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
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
    .GridPager a
    {
        background-color: #e34724;
        color:white;
        border: 1px solid #33414e;
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

    <asp:Label ID="Lbl_stdid" runat="server" Text="" Visible="false"></asp:Label>

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Add Complaint</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9">                                            
                                                    
                                                       <asp:DropDownList ID="Batch_dll" class="form-control select" runat="server"                                                                                                      
                                                AutoPostBack="true" onselectedindexchanged="Batch_dll_SelectedIndexChanged" >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="Batch_dll" ValidationGroup="ans"></asp:RequiredFieldValidator> 
                                                                                          
                                                </div>
                                            </div>
                                            
                                            
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                                  <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" 
                                        AutoPostBack="true" OnSelectedIndexChanged="class_ddl_SelectedIndexChanged">
                                        </asp:DropDownList>
                                                     
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                         ForeColor="Red" ControlToValidate="class_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                                    </div>            
                                                    
                                                </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="section_ddl" class="form-control select" runat="server"                                                                                                                                       AutoPostBack="true"
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged" >
                                        
                                        </asp:DropDownList>
                                                     
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                                     <asp:DropDownList ID="streamddl" class="form-control select" runat="server" >
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*" ForeColor="Red" 
                                         ControlToValidate="streamddl" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                              
                                                    </div>            
                                                    
                                                </div>
                                               
<asp:Label ID="Label9" runat="server" Text="sswtechnology" Visible="false"></asp:Label>
     <asp:Label ID="Label10" runat="server" Text="9017676007" Visible="false"></asp:Label>
     <asp:Label ID="Label11" runat="server" Text="BLKSMS" Visible="false"></asp:Label>
                                              
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9">
                                                      <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="student_ddl_SelectedIndexChanged">
                                                 </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="student_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>                                        
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Roll No.</label>
                                                <div class="col-md-9">
                                                      <asp:DropDownList ID="roll_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                          onselectedindexchanged="roll_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="roll_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>   
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Contact No.</label>
                                                <div class="col-md-9">
                                                     
                                            <asp:TextBox ID="father_contact" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                           
                                                </div>
                                            </div><br />

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Complaint</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_complaint" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_complaint" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                                </div>
                                            </div>

                                           

                                            
                                           
                                            
                                        </div>
                                        
                                    </div>
                                 <%-- <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Batch</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control select" 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" onselectedindexchanged="Batch_dll_SelectedIndexChanged" >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                                        ControlToValidate="Batch_dll" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Stream</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="streamddl" class="form-control select" runat="server" AutoPostBack="true" >
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                                         ControlToValidate="streamddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">class</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" 
                                        AutoPostBack="true" OnSelectedIndexChanged="class_ddl_SelectedIndexChanged">
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                         ForeColor="Red" ControlToValidate="class_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>

                                    </div>     
                                    

                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Section</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server"                                                                                                                                       AutoPostBack="true"
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged" >
                                        
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>

                                          <label class="col-md-2 col-xs-4 control-label">Student Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="student_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="student_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                         <label class="col-md-2 col-xs-4 control-label">Student Roll No.</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="roll_ddl" class="form-control select" runat="server">
                                        
                                        </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="roll_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>


                                    </div>

                                   

                                    
                                      <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Complaint</label>
                                        <div class="col-md-3 col-xs-3"> 
                                            <asp:TextBox ID="Text_complaint" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_complaint" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>--%>

                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                          Text="Export to excel" onclick="Export_excel_Click"   />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" onpageindexchanging="GridView1_PageIndexChanging">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("Student_name") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll_no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subject" runat="server" Text='<%#Eval("student_rollno") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stuname" runat="server" Text='<%#Eval("student_name") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Complaint">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_marks" runat="server" Text='<%#Eval("complaint") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" 
                                            class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" 
                                            class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" 
                                                OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click">
                                                <span class="fa fa-times"></span></asp:LinkButton>
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
 <asp:PostBackTrigger ControlID="Export_excel" />
 </Triggers>
 </asp:UpdatePanel>
</asp:Content>


