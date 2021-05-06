<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="student_transport_fee.aspx.cs" Inherits="Admin_student_transport_fee" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
table,tr,td,th
{
text-align:center;    
}
</style>
    <link href="popup.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
   
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
    
    
<div class="form-horizontal">

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="father_lbl" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="mother_lbl" runat="server" Text="" Visible="false"></asp:Label>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Fee For Transport</strong></h3>
                                    <ul class="panel-controls">
                                        <%--<li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                                                                                      
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Select Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                    <%--<asp:TextBox ID="TextBox1" runat="server"  class="form-control select"></asp:TextBox>--%>
                                       
                                     <asp:DropDownList ID="ddl_selectbatch" runat="server" class="form-control select" AutoPostBack="true"

                                                onselectedindexchanged="ddl_selectbatch_SelectedIndexChanged">
                                     </asp:DropDownList>
                                     </div>
                                    </div>



                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                  <%--  <asp:TextBox ID="Text_selectclass" runat="server"  class="form-control select"></asp:TextBox>--%>
                                   <asp:DropDownList ID="ddl_class" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_class_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_section" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_section_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_stream" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_stream_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>


                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Roll No.</label>
                                        <div class="col-md-6 col-xs-12"> 
                                      <asp:DropDownList ID="ddl_roll" runat="server" class="form-control select" AutoPostBack="true"
                                                onselectedindexchanged="ddl_roll_SelectedIndexChanged">
                                     </asp:DropDownList>
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label"> Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                    <asp:TextBox ID="Text_name" runat="server"  class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                </div>
      
                                <div class="panel-footer">

                                          <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                              Text="Export To Excel" onclick="Export_excel_Click" Visible="false" />
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Search" Visible="false" />
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
                                            <asp:Label ID="lbl_drivername" runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_drivercontactno" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll_no" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="route">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_route" runat="server" Text='<%#Eval("route") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fees">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fee" runat="server" Text='<%#Eval("fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount Pay">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_amountpay" runat="server" Text='<%#Eval("pay_fee") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Remaining">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_remaining" runat="server" Text='<%#Eval("remaining") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Fee">
                                        <ItemTemplate>
                                            <asp:LinkButton Text="Pay Now" ID = "lnkFake" runat="server" class="btn btn-danger btn-rounded btn-sm" />

                                            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="pnlPopup" TargetControlID="lnkFake" CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                            </asp:ModalPopupExtender>
                                             <asp:Panel ID="pnlPopup" runat="server" CssClass="modalPopup" Style="display: none">
                                              <div class="header">
   
    <div style="margin-top:-13px"> Pay Now</div>
       
    </div>
    <div class="body">
       
        <table border="1" cellpadding="1" cellspacing="2" width="100%" style="margin-left:0px">
            
          <tr>
        <td>
        <b>Name</b>
        </td>
        <td>
         <asp:Label ID="Lbl_id2" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
         <asp:Label ID="Lbl_names" runat="server" Text='<%#Eval("student_name") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>
        <tr>
        <td>
        <b>Route</b>
        </td>
        <td>
         <asp:Label ID="Lbl_routes" runat="server" Text='<%#Eval("route") %>' style="white-space: normal;"></asp:Label>
        </td>
        </tr>

         <tr>
        <td>
        <b>Fees</b>
        </td>
        <td>
        
        <asp:TextBox ID="text_fee" runat="server" Text='<%#Eval("fee") %>' style="white-space: normal;"></asp:TextBox>
        </td>
        </tr>

         <tr>
        <td>
        <b>Pay fee</b>
        </td>
        <td>
        <asp:Label ID="Label_oldpay" runat="server" Text='<%#Eval("pay_fee") %>' Visible="false"></asp:Label>
            <asp:TextBox ID="Text_pay" runat="server" Text="" OnTextChanged="textchange_payfee" AutoPostBack="true"></asp:TextBox>
             
        </td>
        </tr>

        
         <tr>
        <td>
        <b>Remaining</b>
        </td>
        <td>
            <asp:TextBox ID="Textremaining" runat="server" Text='<%#Eval("remaining") %>' ReadOnly="true" ForeColor="Black"></asp:TextBox>
        </td>
        </tr>

        </table>
      
      
        </div>
       
        
                                                

               <div class="footer" align="right">
        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn btn-danger" style="visibility:visible;" ValidationGroup="as"/>
        <asp:Button ID="Btn_submit" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="btn_click" style="visibility:visible;" ValidationGroup="as"/>
    </div>
       </asp:Panel>
    </ItemTemplate>
   </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

