<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="student_result.aspx.cs" Inherits="Student_student_result" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
  <style type="text/css">.select-style {	width: 221px;	height: 30px;	padding: 5px 0 0 0;	overflow: hidden;	background: #272b2f url("images/icon-select.png") no-repeat 96% 50%;}.select-style select {	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);	border: medium none;	box-shadow: none;	color: #727272;	font-size: 11px;	padding: 5px 8px;	text-transform: uppercase;	width: 130%;}.select-style select:focus {	outline: none;}</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
   
<div class="form-horizontal">
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Tabulation Mark Sheet</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
     
                                <div class="panel-body">
                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control " 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" 
                                                onselectedindexchanged="Batch_dll_SelectedIndexChanged"  >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>     
                                    
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="streamddl" class="form-control " runat="server" >                                                                                                    
                                        </asp:DropDownList>     
                                        </div>
                                    </div>       
                                
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                      
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control" runat="server" 
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                       
                                        </asp:DropDownList>     
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll No</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="roll_ddl" class="form-control" 
                                        runat="server" >                                       
                                        </asp:DropDownList>     
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Exam Term</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="examterm_ddl" class="form-control" runat="server" >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>
                                    
                                    <div class="form-group" style="margin-left:26%;">
                                   <%-- <button class="btn btn-primary">Submit</button>--%>
                                      <asp:LinkButton ID="export_excel" runat="server" class="btn btn-primary" 
                                            onclick="export_excel_Click" Visible="false">Export to Excel</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" OnClick="link_click" >View Tabulation Sheet</asp:LinkButton>
                                   
                                    </div>

                                    <br /><br /><br /><br /><br />
                                   
        <asp:Label ID="Lbl_subid" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_classnmae" runat="server" Text="" Visible="false"></asp:Label>
           <asp:Label ID="lbl_section" runat="server" Text="" Visible="false"></asp:Label>
                                                
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div style="position:relative; text-align:center;">							<%--<div  class="atnd_tnav" style=" top:15px;">												                            
                       <asp:LinkButton ID="prev_linkbutton" runat="server" OnClick="prev_linkbutton_click"><img src="Images/atnd_arrow-l.png" width="7" border="0"  height="13"
                             /></asp:LinkButton>
                            <asp:Label ID="MonthLabel" runat="server" /><asp:Label ID="Label1" runat="server"
                                Text="/"></asp:Label>
                            <asp:Label ID="YearLabel" runat="server" />
                            <asp:LinkButton ID="next_linkbutton" runat="server" OnClick="next_linkbutton_click"><img src="Images/atnd_arrow.png" border="0" width="7"  height="13" /></asp:LinkButton>                            </div>--%>                             <!-- END div align="center" class="atnd_tnav" -->							<br />														<div class="ea_pdf" style="top:15px; right:0px;">																					</div>							</div> <!-- END div class="ea_pdf" -->														                             </asp:Panel>										</div><!-- content -->	</div>
                                <div class="panel-footer">
                                    <button class="btn btn-default"></button>                                    
                                    <button class="btn btn-primary pull-right"></button>
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
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

                                    <asp:TemplateField HeaderText="Examterm">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_examterm" runat="server" Text='<%#Eval("examterm") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    

                                     <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subject" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Roll_no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Obtain_marks">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_obmarks" runat="server" Text='<%#Eval("obtain_marks") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Max_marks">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_maxmarks" runat="server" Text='<%#Eval("maximum_marks") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                   <%-- <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" 
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" ><span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
   --%>                             </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
     </ContentTemplate>
     <Triggers>
     <asp:PostBackTrigger ControlID="export_excel"/>
     </Triggers>
    </asp:UpdatePanel>          
                   
</asp:Content>



