<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="teacherdailyattandencesearch.aspx.cs" Inherits="Admin_teacherdailyattandencesearch" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.GridPager a
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
    }
</style>
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
                                    <h3 class="panel-title"><strong>Teacher Attandance Record</strong></h3>
                                    <ul class="panel-controls">
                                
                                    </ul>
                                </div>
                                <div class="panel-body">      

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">TeacherId</label>
                                        <div class="col-md-6 col-xs-12"> 
                                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                                    </asp:DropDownList>
                                        </div>
                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                          <asp:TextBox ID="Text_name" runat="server" ReadOnly="true" ForeColor="Black" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
        <asp:Label ID="Lbl_date" runat="server" Text=""></asp:Label>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Month</label>
                                        <div class="col-md-6 col-xs-12"> 
                                   <asp:DropDownList ID="ddl_month" runat="server" class="form-control" >
                                                
                                         <asp:ListItem Text="Select Month" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                         <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                         <asp:ListItem Text="March"   Value="3"></asp:ListItem>
                                         <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                         <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                         <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                         <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                         <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                         <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                         <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                         <asp:ListItem Text="November" Value="11"></asp:ListItem>
                                         <asp:ListItem Text="November" Value="12"></asp:ListItem>
                                         </asp:DropDownList>
           
                                        </div>
                                    </div>

                                    
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Year</label>
                                        <div class="col-md-6 col-xs-12"> 
                                          <asp:TextBox ID="text_year" runat="server"  class="form-control" AutoPostBack="true"
                                                ontextchanged="text_year_TextChanged"></asp:TextBox>
                                        </div>
                                    </div>
                             <asp:Panel ID="Panel1" runat="server" >
                             <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Total Leave</label><br />
                                        <div class="col-md-6 col-xs-12"> 
                                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Absent</label><br />
                                        <div class="col-md-6 col-xs-12"> 
                                 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Present</label><br />
                                        <div class="col-md-6 col-xs-12"> 
                                 <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
        
        
                             </asp:Panel>
                                    
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

                                    <asp:TemplateField HeaderText="Teacher Id">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tid" runat="server" Text='<%#Eval("teacher_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Teacher Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tname" runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Month">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_Month" runat="server" Text='<%#Eval("month") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                      <asp:TemplateField HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_year" runat="server" Text='<%#Eval("year") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_status" runat="server" Text='<%#Eval("status") %>'></asp:Label>
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
    </asp:UpdatePanel>                     

</asp:Content>


