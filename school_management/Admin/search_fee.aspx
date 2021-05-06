<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="search_fee.aspx.cs" Inherits="Admin_search_fee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

 <link href="../Admin/popup.css" rel="stylesheet" type="text/css" />
 <%--<script type="text/javascript">
     function pop(div) {
         document.getElementById(pnlPopup).style.display = 'block'
         return false;
     }
     function hide(main_div) {
         document.getElementById(main_div).style.display = 'none'
         return false;
     }
 </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </ajaxToolkit:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
<div class="form-horizontal" id="main_div" runat="server">
    <asp:Label ID="Label_feeid" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_day" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_month" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_year" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_fee" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_feedate" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Search Fees</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="batch_ddl" class="form-control select" runat="server" AutoPostBack="true" 
                                                onselectedindexchanged="batch_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="batch_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
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
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server" AutoPostBack="true" OnSelectedIndexChanged="section_ddl_SelectedIndexChanged">
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="section_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="stream_ddl" class="form-control select" runat="server" >
                                        
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="stream_ddl" ValidationGroup="ans"></asp:RequiredFieldValidator>     
                                        </div>
                                    </div>


                                </div>
                                <div class="panel-footer">
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form" />
                                
                                        
                                            <asp:LinkButton ID="submit_btn" runat="server" class="btn btn-primary pull-right" OnClick="submit_btn_Click" ValidationGroup="ans">Search</asp:LinkButton>
                                       
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">

                            <asp:Panel ID="Panel1" runat="server" Visible="false">
                           
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
                                

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_moname" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
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
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="payment">
                                        <ItemTemplate>
                                            <asp:TextBox ID="payment_txt" runat="server" Text="0" OnTextChanged="payment_selectedChanged" AutoPostBack="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:TextBox ID="balance_txt" runat="server" ReadOnly="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" Text="paid" Width="60px" BackColor="Green" ForeColor="White" Visible="false" />
                                            <asp:Button ID="Button2" runat="server" Text="pending" BackColor="Red" ForeColor="White" Visible="false" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click" 
                                                Style="visibility: visible;" Text="Submit"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                             
                             <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="false" Visible="false"
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

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_moname" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click" 
                                                Style="visibility: visible;" Text="Submit"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" Visible="false"
                            AllowPaging="true" PageSize="10">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            S.No.</HeaderTemplate>
                                        <ItemTemplate>
                                            <%#Container.DataItemIndex + 1 %>
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
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                
                                     <asp:TemplateField HeaderText="payment">
                                        <ItemTemplate>
                                            <asp:TextBox ID="payment_txt" runat="server" Text="0" OnTextChanged="payment_selectedChanged" AutoPostBack="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:TextBox ID="balance_txt" runat="server" ReadOnly="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Button ID="Button1" runat="server" Text="paid" Width="60px" BackColor="Green" ForeColor="White" Visible="false" />
                                            <asp:Button ID="Button2" runat="server" Text="pending" BackColor="Red" ForeColor="White" Visible="false" />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click" 
                                                Style="visibility: visible;" Text="Submit"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                             </asp:Panel>

                            <asp:Panel ID="Panel2" runat="server" Visible="false">
                            
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
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_id1" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname1" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll1" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname1" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_moname1" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class1" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section1" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date1" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee1" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype1" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="payment">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_payment1" runat="server" Text='<%#Eval("payment") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_balance1" runat="server" Text='<%#Eval("balance") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                           
                                            <asp:Label ID="lbl_status1" runat="server" Text='<%#Eval("status") %>' ForeColor="White" BackColor="Green" Width="60px" 
                                            style="text-align:center"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                   
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit1_Click" 
                                                Style="visibility: visible;" Text="Pay Now"></asp:LinkButton>
                                           
                                            <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btn_edit" CancelControlID="btnClose" PopupControlID="pnlPopup">
                                            </ajaxToolkit:ModalPopupExtender>

                                            <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                                             
                                               <div class="header">
                                              
                                               <div style="margin-top:-12px"> Details</div>
                                                  
                                               </div>
                                               <div class="body">
                                               <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                       <ContentTemplate>
                                                   <table border="1" cellpadding="1" cellspacing="2" width="100%" style="margin-left:0px">
                                              
                                                     <tr>
                                                   <td><b>Student Name</b></td>
                                                   <td>
                                                   <asp:Label ID="Lbl_id2" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                                    <asp:Label ID="sname_lbl" runat="server" Text='<%#Eval("student_name") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>
                                              
                                                   <tr>
                                                   <td><b>Roll No</b></td>
                                                   <td>
                                                    <asp:Label ID="roll_lbl" runat="server" Text='<%#Eval("roll_no") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Father Name</b></td>
                                                   <td>
                                                    <asp:Label ID="faname_lbl" runat="server" Text='<%#Eval("father_name") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Mother Name</b></td>
                                                   <td>
                                                    <asp:Label ID="moname_lbl" runat="server" Text='<%#Eval("mother_name") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Class</b></td>
                                                   <td>
                                                    <asp:Label ID="class_lbl" runat="server" Text='<%#Eval("class") %>' style="white-space: normal;"></asp:Label>
                                                    <asp:Label ID="batch_lbl" runat="server" Text='<%#Eval("batch") %>' style="white-space: normal;" Visible="false"></asp:Label>
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Section</b></td>
                                                   <td>
                                                    <asp:Label ID="section_lbl" runat="server" Text='<%#Eval("section") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>

                                                   <tr id="date_id" runat="server" visible="false">
                                                   <td><b>Date</b></td>
                                                   <td>
                                                    <%--<asp:Label ID="date_lbl" runat="server" Text='<%#Eval("date") %>' style="white-space: normal;"></asp:Label>--%>
                                                    <asp:TextBox ID="date_txt" runat="server" Text="" style="white-space: normal;"></asp:TextBox>
                                                       <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="date_txt">
                                                       </ajaxToolkit:CalendarExtender>
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Fees</b></td>
                                                   <td>
                                                       <asp:TextBox ID="fee_text" runat="server" Text='<%#Eval("fee") %>' style="white-space: normal;"></asp:TextBox>
                                                 
                                                   </td>
                                                   </tr>

                                                   <tr>
                                                   <td><b>Fees Type</b></td>
                                                   <td>
                                                    <asp:Label ID="feetype_lbl" runat="server" Text='<%#Eval("feetype") %>' style="white-space: normal;"></asp:Label>
                                                   </td>
                                                   </tr>
                                                       
  
                                                   <tr>
                                                   <td><b>Payment</b></td>
                                                   <td>
                                                   <asp:TextBox ID="pay_txt" runat="server" Text="" style="white-space: normal;" OnTextChanged="pay_selectedChanged" AutoPostBack="true"></asp:TextBox>
                                                   <asp:TextBox ID="pay1_txt" runat="server" Text='<%#Eval("payment") %>' style="white-space: normal;" AutoPostBack="true" Visible="false"></asp:TextBox>
                                                   </td>
                                                   </tr>
                                          
                                                   <tr>
                                                   <td><b>Balance</b></td>
                                                   <td>
                                                   <asp:TextBox ID="bal_txt" runat="server" Text='<%#Eval("balance") %>' style="white-space: normal;"></asp:TextBox>
                                                
                                                   </td>
                                                   </tr>
                                                   <tr>
                                                   <td><b>Status</b></td>
                                                   <td>
                                                   <asp:Label ID="lbl_status3" runat="server" Text='<%#Eval("status") %>'></asp:Label>
                                                    
                                                   </td>
                                                   </tr>
                                                   </table>
                                                       </ContentTemplate>
                                                       <Triggers>
                                                       <asp:AsyncPostBackTrigger ControlID="pay_txt" EventName="TextChanged" />
                                                       </Triggers>
                                                </asp:UpdatePanel>
                                               </div>
                                              
                                                  <div class="footer" align="right">
                                                   <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn btn-danger" style="visibility:visible;" />
                                                   <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" 
                                                   CssClass="btn btn-danger" style="visibility:visible;" />
                                               </div>
                                              </asp:Panel>
                                             
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                </Columns>
                            </asp:GridView>
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server">

                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false"
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

                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname2" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll No.">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll2" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_faname2" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_moname2" runat="server" Text='<%#Eval("mother_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class2" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_section2" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date2" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                         
                                            <asp:TextBox ID="lbl_fee2" runat="server" Text='<%#Eval("fee") %>'></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_feetype2" runat="server" Text='<%#Eval("feetype") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="payment">
                                        <ItemTemplate>
                                            <asp:TextBox ID="payment2_txt" runat="server" Text='<%#Eval("payment") %>' OnTextChanged="payment2_selectedChanged" AutoPostBack="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Balance">
                                        <ItemTemplate>
                                            <asp:TextBox ID="balance2_txt" runat="server" Text='<%#Eval("balance") %>' ReadOnly="true"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Button ID="Button12" runat="server" Text='<%#Eval("status") %>' Width="60px" BackColor="Green" ForeColor="White" />
                                         
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit2_Click" 
                                                Style="visibility: visible;" Text="Submit"></asp:LinkButton>
                                            
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            </asp:Panel>

                        </div>
                    </div>

                            </div>
                            </div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

