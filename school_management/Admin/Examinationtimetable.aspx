<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Examinationtimetable.aspx.cs" Inherits="Admin_Examinationtimetable" EnableEventValidation="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
     <style type="text/css">table,tr,td,th{    text-align:center;    }.select-style {	width: 221px;	height: 30px;	padding: 5px 0 0 0;	overflow: hidden;	background: #272b2f url("images/icon-select.png") no-repeat 96% 50%;}.select-style select {	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);	border: medium none;	box-shadow: none;	color: #727272;	font-size: 11px;	padding: 5px 8px;	text-transform: uppercase;	width: 130%;}.select-style select:focus {	outline: none;}.GridPager a
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
    }</style> 
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
                                    <h3 class="panel-title"><strong>Examination Time Table</strong></h3>
                                    <ul class="panel-controls">
                                       
                                    </ul>
                                </div>
     
                                <div class="panel-body">
                                 <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control select" 
                                                runat="server" > 
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Batch_dll" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>     
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                      
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="class_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>   

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="section_ddl_SelectedIndexChanged1" >
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>   

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="ddl_stream" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="ddl_stream_SelectedIndexChanged" >
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_stream" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>   


                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Subject</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="ddl_subject" class="form-control select" runat="server" >
                                             
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="ddl_subject" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Examterm</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="examterm_ddl" class="form-control select" 
                                        runat="server" >                                       
                                        </asp:DropDownList> 
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="examterm_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>    
                                        </div>
                                    </div>


                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Exam Date</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_date" runat="server" class="form-control"></asp:TextBox>
                                          
                                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                            </asp:CalendarExtender>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_date" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Start Time</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:TextBox ID="Text_stime" runat="server" class="form-control"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_stime" ValidationGroup="ans"></asp:RequiredFieldValidator>  
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">End Time</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:TextBox ID="Text_etime" runat="server" class="form-control"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_etime" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group" style="margin-left:26%;">
                                   <%-- <button class="btn btn-primary">Submit</button>--%>
                                      <asp:LinkButton ID="Export_excel" runat="server" class="btn btn-primary" 
                                            onclick="export_excel_Click" Visible="true">Export to Excel</asp:LinkButton>
                                            <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" OnClick="clr_btn_Click" Visible="false"/>
                                            <asp:LinkButton ID="submit_btn" runat="server" class="btn btn-primary" OnClick="link_click" ValidationGroup="ans">Submit</asp:LinkButton>
                                              <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" OnClick="upd_btn_Click" Visible="false" ValidationGroup="ans" />
                                   
                                    </div>

                                    <br /><br /><br /><br /><br />
                                   
        <asp:Label ID="Lbl_subid" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Label ID="lbl_classnmae" runat="server" Text="" Visible="false"></asp:Label>
           <asp:Label ID="lbl_section" runat="server" Text="" Visible="false"></asp:Label>
                                                
                     
                            <div style="position:relative; text-align:center;">							                            <!-- END div align="center" class="atnd_tnav" -->							<br />														<div class="ea_pdf" style="top:15px; right:0px;">																					</div>							</div> <!-- END div class="ea_pdf" -->														                     									</div><!-- content -->	</div>
                                <div class="panel-footer">
                                    <button class="btn btn-default"></button>                                    
                                    <button class="btn btn-primary pull-right"></button>
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" onpageindexchanging="GridView1_PageIndexChanging"
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

                                     <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_stream"  runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subject" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    

                                     <asp:TemplateField HeaderText="Paper">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_paper" runat="server" Text='<%#Eval("paper") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Exam Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_edate" runat="server" Text='<%#Eval("examdate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Start Time">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stime" runat="server" Text='<%#Eval("starttime") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="End Time">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_etime" runat="server" Text='<%#Eval("endtime") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                               

                                    
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" titile="Edit" OnClick="btn_edit_Click"
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm" title="delete" OnClick="btn_delete_Click"
                                                Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" >
                                                <span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                 <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
               </ContentTemplate>
               <Triggers>
               <asp:PostBackTrigger ControlID="Export_excel"/>
               </Triggers>
    </asp:UpdatePanel>    
                   
                    

</asp:Content>


