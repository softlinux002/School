<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="serachdaywiseattandence.aspx.cs" Inherits="Student_serachdaywiseattandence" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
<div class="form-horizontal">

    <asp:Label ID="isbn" runat="server" Text="" Visible="false"></asp:Label>
    
     <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_pass" runat="server" Text="" Visible="false"></asp:Label>
     <asp:Label ID="lbl_sid" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>
                                    Daily Attendance</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <div class="panel-body">  
                                  <asp:Panel ID="Panel2" runat="server" Visible="false">
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:TextBox ID="Text_batch" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                  </asp:Panel>
                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">From</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:TextBox ID="Text_fdate" runat="server" class="form-control"></asp:TextBox>
                                         <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_fdate">
                                         </asp:CalendarExtender>
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">To</label>
                                        <div class="col-md-6 col-xs-12">  
                                         <asp:TextBox ID="Text_tdate" runat="server" class="form-control" OnTextChanged="Text_tdate_TextChanged" AutoPostBack="true"></asp:TextBox>
                                         <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="Text_tdate">
                                         </asp:CalendarExtender>
                                        </div>
                                    </div>

                             
                                     
         <asp:Label ID="Lbl_id" runat="server" Text="" Visible="false"></asp:Label>
                               
                                </div>
                               
         <asp:Panel ID="Panel1" runat="server" Visible="false">
      
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
                                    
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_date"  runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_rollno"  runat="server" Text='<%#Eval("batch") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_stream"  runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_class"  runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Section">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_section"  runat="server" Text='<%#Eval("section") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Roll no">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_roll_no"  runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_name"  runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status"  runat="server" Text='<%#Eval("status") %>'></asp:Label>
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


