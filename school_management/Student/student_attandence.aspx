<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="student_attandence.aspx.cs" Inherits="Admin_student_attandence" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">.select-style {	width: 221px;	height: 30px;	padding: 5px 0 0 0;	overflow: hidden;	background: #272b2f url("images/icon-select.png") no-repeat 96% 50%;}.select-style select {	background: none repeat scroll 0 0 rgba(0, 0, 0, 0);	border: medium none;	box-shadow: none;	color: #727272;	font-size: 11px;	padding: 5px 8px;	text-transform: uppercase;	width: 130%;}.select-style select:focus {	outline: none;}</style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
   <ContentTemplate>
<div class="form-horizontal">


                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Search Student Attendance</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
     
                                <div class="panel-body">

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="batch_ddl" class="form-control" runat="server" 
                                                onselectedindexchanged="batch_ddl_SelectedIndexChanged" AutoPostBack="true">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control" runat="server" 
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged" AutoPostBack="true">
                                        
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
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="stream_ddl" class="form-control" runat="server" 
                                                onselectedindexchanged="stream_ddl_SelectedIndexChanged" AutoPostBack="true">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   

                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Visible="false"
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_ano" runat="server" Text='<%#Eval("admission_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Admission Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adate" runat="server" Text='<%#Eval("admissiondate") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Bloodgroup">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_bgroup" runat="server" Text='<%#Eval("bloodgroup") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="stream">
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
                                            <asp:Label ID="lbl_section" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="DOB">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_dob" runat="server" Text='<%#Eval("dob") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Address1">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adrs1" runat="server" Text='<%#Eval("address1") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                   <%-- <asp:TemplateField HeaderText="Address2">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_adrs2" runat="server" Text='<%#Eval("address2") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Phone">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_phone" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("image") %>' />
                                            <%--<asp:Label ID="lbl_pcode" runat="server" Text='<%#Eval("image") %>'></asp:Label>--%>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Doc Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_docname" runat="server" Text='<%#Eval("document_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Doc Image">
                                        <ItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Width="50px" Height="50px" ImageUrl='<%#Eval("doc_image") %>' />
                                           <%-- <asp:Label ID="lbl_pcode" runat="server" Text='<%#Eval("doc_image") %>'></asp:Label>--%>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                </Columns>
                            </asp:GridView>

                                    <br /><br /><br /><br /><br />
                                   
                                                
                           <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <div style="position:relative; text-align:center;">							<div  class="atnd_tnav" style=" top:15px;">													                            
                            <asp:LinkButton ID="prev_linkbutton" runat="server" OnClick="prev_linkbutton_click" ><img src="Images/atnd_arrow-l.png" width="7" border="0"  height="13" /></asp:LinkButton>
                            <asp:Label ID="MonthLabel" runat="server" /><asp:Label ID="Label1" runat="server"
                                Text="/"></asp:Label>
                            <asp:Label ID="YearLabel" runat="server" />
                            <asp:LinkButton ID="next_linkbutton" runat="server" OnClick="next_linkbutton_click" ><img src="Images/atnd_arrow.png" border="0" width="7"  height="13" /></asp:LinkButton>                            </div>                             <!-- END div align="center" class="atnd_tnav" -->							<br />														<div class="ea_pdf" style="top:15px; right:0px;">																							</div>							</div> <!-- END div class="ea_pdf" -->														<div class="atnd_Con" style="margin-top:50px;overflow: scroll; width: 961px; margin-left:120px;">														
                                
                                								<table align="center" width="100%" border="0" cellspacing="0" cellpadding="0">									<tr>									<th>Name</th>
                                <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                									<th style="background-color:#e34724; color:White; font-weight:bold;"><span><%#Eval("day") %></span></th>                                    </ItemTemplate>
                                </asp:Repeater>                                                                       </tr>
                                <asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="Repeater2_ItemDataBound">
                                <ItemTemplate>
                                										<tr class="odd" >										<td class="name" style="color:White; background-color:#333;">
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label> 
                                            <br />Roll No:<asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label></td>
                                            <asp:Repeater ID="Repeater3" runat="server">
                                            <ItemTemplate>
                                           										<td style="text-align:center;"><asp:CheckBox ID="CheckBox1" runat="server" /></td>                                         </ItemTemplate>
                                            </asp:Repeater>                                                                                </tr>                                </ItemTemplate>
                                </asp:Repeater>							</tr>                   </table>          						  														</div> <!-- END div class="atnd_Con" -->																</div> <!-- END div #demo -->           </asp:Panel>					<%--</td>			</tr>		</table>--%>                                <div class="panel-footer">
                                    <%--<button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>--%>
                                            <asp:Button ID="submint_btn" class="btn btn-primary pull-right" runat="server" Text="Search" OnClick="search_btn_click" Visible="false" />
                                </div>   <div class="span-5 last">		<div id="sidebar">        <div class="clear"></div>		</div><!-- content -->			


                                
                            </div>
                            </div>
                    </div>
                    </ContentTemplate>
          </asp:UpdatePanel>           
</asp:Content>

