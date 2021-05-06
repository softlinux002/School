<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Searchgraphicalmarks.aspx.cs" Inherits="Student_Searchgraphicalmarks" %>

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
                                    <h3 class="panel-title"><strong>Graphical Marks Report</strong></h3>
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
                                        <asp:DropDownList ID="examterm_ddl" class="form-control" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="examterm_ddl_SelectedIndexChanged" >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>
                                    
                                    <div class="form-group" style="margin-left:26%;">
                                   
                                      <asp:LinkButton ID="export_excel" runat="server" class="btn btn-primary" 
                                            onclick="export_excel_Click" Visible="false">Export to Excel</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" OnClick="link_click" Visible="false">View Tabulation Sheet</asp:LinkButton>
                                   
                                    </div>

                                    <br /><br /><br /><br /><br />
                                   
        <asp:Label ID="Lbl_subid" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_classnmae" runat="server" Text="" Visible="false"></asp:Label>
           <asp:Label ID="lbl_section" runat="server" Text="" Visible="false"></asp:Label>
                                                
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div style="position:relative; text-align:center;">							                            <!-- END div align="center" class="atnd_tnav" -->							<br />														<div class="ea_pdf" style="top:15px; right:0px;">																					</div>							</div> <!-- END div class="ea_pdf" -->														                             </asp:Panel>										</div><!-- content -->	</div>
                                <div class="panel-footer">
                                    <button class="btn btn-default"></button>                                    
                                    <button class="btn btn-primary pull-right"></button>
                                </div>

                                <div class="panel-body panel-body-table">
                                <center><div class="table-responsive">
                                 
                                    <asp:BarChart ID="BarChart1"  runat="server" ChartHeight="300" ChartWidth="600" ChartType="Column" ChartTitle="Marks">
                                    </asp:BarChart>
                            
                        </div></center>
                    </div>

                            </div>
                    
                   </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

