<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Tabulationmarksheet.aspx.cs" Inherits="Admin_Tabulationmarksheet" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <%--
    <link href="Stylesheets/dashboard.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/explorertab.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/flaticon.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/formelements.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/formstyle.css" rel="stylesheet" type="text/css" />
    <link href="Stylesheets/style.css" rel="stylesheet" type="text/css" /> <!-- JS main application jquery. -->
    <script src="Scripts/custom-form-elements.js" type="text/javascript"></script>
    <script src="Scripts/highcharts.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.js" type="text/javascript"></script>  <script type="text/javascript" src="Scripts/jquery.js"></script> <script>     $(document).ready(function () {
         $("#lodrop").click(function () {
             if ($("#account_drop").is(':hidden')) {
                 $("#account_drop").show();
             }
             else {
                 $("#account_drop").hide();
             }
             return false;
         });
         $('#account_drop').click(function (e) {
             e.stopPropagation();
         });
         $(document).click(function () {
             if (!$("#account_drop").is(':hidden')) {
                 $('#account_drop').hide();
             }
         });
     });</script> <script>     $(document).ready(function () {
         $("#book_drop").click(function () {
             if ($("#bookmark").is(':hidden')) {
                 $("#bookmark").show();
             }
             else {
                 $("#bookmark").hide();
             }
             return false;
         });
         $('#bookmark').click(function (e) {
             e.stopPropagation();
         });
         $(document).click(function () {
             if (!$("#bookmark").is(':hidden')) {
                 $('#bookmark').hide();
             }
         });
     });</script>--%>  <style type="text/css">.select-style {	width: 221px;	height: 30px;	padding: 5px 0 0 0;	overflow: hidden;	background: #272b2f url("images/icon-select.png") no-repeat 96% 50%;}.select-style select {	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);	border: medium none;	box-shadow: none;	color: #727272;	font-size: 11px;	padding: 5px 8px;<asp:ToolkitScriptManager runat="server"></asp:ToolkitScriptManager>	text-transform: uppercase;	width: 130%;}.select-style select:focus {	outline: none;}</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

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
                               <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9">                                            
                                                   <asp:DropDownList ID="Batch_dll" class="form-control select" 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" 
                                                onselectedindexchanged="Batch_dll_SelectedIndexChanged"  >
                                        </asp:DropDownList>
                                               
                                                </div>
                                            </div>
                                    
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12"> 
                                                  <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                        </asp:DropDownList>  
                                                    </div>            
                                                    
                                                </div>
                                                 <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Section</label>
                                                <div class="col-md-9">
                                                   <asp:DropDownList ID="section_ddl" class="form-control select" runat="server" 
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged" AutoPostBack="true">
                                       
                                        </asp:DropDownList>  
                                                </div>
                                            </div>
                                            
                                           
                                        </div>
                                        <div class="col-md-6">
                                            
                                           

                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                              <asp:DropDownList ID="streamddl" class="form-control select" runat="server" AutoPostBack="true"
                                                        onselectedindexchanged="streamddl_SelectedIndexChanged" >                                                                                                    
                                        </asp:DropDownList> 
                                              
                                                    </div>            
                                                    
                                                </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll No</label>
                                                <div class="col-md-9">
                                                   <asp:DropDownList ID="roll_ddl" class="form-control select" 
                                        runat="server" >                                       
                                        </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Exam Term</label>
                                                <div class="col-md-9">
                                                     <asp:DropDownList ID="examterm_ddl" class="form-control select" runat="server" >
                                        </asp:DropDownList>
                                                   
                                                </div>
                                            </div>
                                        

                                        </div>
                                        
                                    </div>
                                    </div>
                                    
                                    <div class="form-group" style="margin-left:26%;">
                                      <asp:LinkButton ID="export_excel" runat="server" class="btn btn-primary" 
                                            onclick="export_excel_Click" Visible="false">Export to Excel</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" OnClick="link_click" >View Tabulation Sheet</asp:LinkButton>
                                   
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

                                 
                               </Columns>
                            </asp:GridView>
                        </div>
                    </div>

             </ContentTemplate>
    </asp:UpdatePanel>
                    
</asp:Content>

