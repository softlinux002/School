<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Total_income.aspx.cs" Inherits="Admin_Total_income" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
}

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
    <style>
        .linkdesign
        {
            width:50px;
            text-align:center;
            font-size:16px;
            border:1px solid #2f3c48;
            color:White;
            background-color:#2f3c48;
            margin-left:10px;
            font-weight:bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

  <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Total Income/Expenditure Search</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>


<div class="panel panel-default tabs"  id="dvTab">
                                <ul class="nav nav-tabs nav-justified">
                                    <li><a href="#tab1" data-toggle="tab" aria-controls="tab1" role="tab">Income(Month)</a></li>
                                    <li><a href="#tab2" data-toggle="tab">Expenditure(Month)</a></li>
                                    <li><a href="#tab3" data-toggle="tab">Income (Year)</a></li>
                                     <li><a href="#tab4" data-toggle="tab">Expenditure(Year)</a></li>
                                     <li><a href="#tab5" data-toggle="tab">Library Book Expenditure</a></li>
                                      
                                </ul>
                                <div class="panel-body tab-content">
                                    <div class="tab-pane"  id="tab1">
                                         <label class="col-md-8 col-xs-12 control-label">Month</label>
                                        <div class="col-md-8 col-xs-12"> 
                                     <asp:DropDownList ID="ddl_month" runat="server" class="form-control select">
                                     <asp:ListItem Text="--Select Month--" Value="0"></asp:ListItem>
                                     <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                     <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                     <asp:ListItem Text="March" Value="3"></asp:ListItem>
                                     <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                     <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                     <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                     <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                     <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                     <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                     <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                     <asp:ListItem Text="November" Value="11"></asp:ListItem>   
                                     <asp:ListItem Text="December" Value="12"></asp:ListItem>
                             </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" 
                                                ControlToValidate="ddl_month" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                     <div class="form-group">
                                        <label class="col-md-8 col-xs-12 control-label">Year</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="Text_year" runat="server" class="form-control select" 
                                                    ontextchanged="Text_year_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    
                                        </div>
                                    </div><br />
                                    <asp:Panel ID="Panel1" runat="server" Visible="false">
       
                                    <div class="form-group">
                                        <label class="col-md-8 col-xs-12 control-label">Total Income(Fees in Rs.)</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="total_txt" runat="server" class="form-control" AutoPostBack="true" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                    
                                        </div>
                                    </div>

                                     </asp:Panel>
                                     </div>
                                    <div class="tab-pane" id="tab2">
                                     <label class="col-md-8 col-xs-12 control-label">Month</label>
                                        <div class="col-md-8 col-xs-12"> 
                             <asp:DropDownList ID="ddl_month1" runat="server" class="form-control select">
                                     <asp:ListItem Text="--Select Month--" Value="0"></asp:ListItem>
                                     <asp:ListItem Text="January" Value="1"></asp:ListItem>
                                     <asp:ListItem Text="February" Value="2"></asp:ListItem>
                                     <asp:ListItem Text="March" Value="3"></asp:ListItem>
                                     <asp:ListItem Text="April" Value="4"></asp:ListItem>
                                     <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                     <asp:ListItem Text="June" Value="6"></asp:ListItem>
                                     <asp:ListItem Text="July" Value="7"></asp:ListItem>
                                     <asp:ListItem Text="August" Value="8"></asp:ListItem>
                                     <asp:ListItem Text="September" Value="9"></asp:ListItem>
                                     <asp:ListItem Text="October" Value="10"></asp:ListItem>
                                     <asp:ListItem Text="November" Value="11"></asp:ListItem>   
                                     <asp:ListItem Text="December" Value="12"></asp:ListItem>
                             </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                                                ControlToValidate="ddl_month" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-8 col-xs-12 control-label">Year</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="text_year1" runat="server" class="form-control select" 
                                                    ontextchanged="Text_year1_TextChanged" AutoPostBack="true"></asp:TextBox>
                                    
                                        </div>

                                         <asp:Panel ID="Panel2" runat="server" Visible="false">
       
                                    <div class="form-group">
                                        <label class="col-md-8 col-xs-12 control-label">Total Expenditure(Salary in Rs.)</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="text_total1" runat="server" class="form-control" AutoPostBack="true" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                    
                                        </div>
                                    </div>

                                 </asp:Panel>

                                    </div>
                                    <div class="tab-pane" id="tab3">
                                       <label class="col-md-8 col-xs-12 control-label">Year</label>
                                        <div class="col-md-8 col-xs-12"> 
                                          <asp:TextBox ID="text_year2" runat="server" class="form-control select" 
                                                    ontextchanged="Text_year2_TextChanged" AutoPostBack="true"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                                                ControlToValidate="text_year2" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>
                                         <asp:Panel ID="Panel3" runat="server" Visible="false">
                                         <div class="form-group">
                                        <label class="col-md-8 col-xs-12 control-label">Total Income(Fees in Rs.)</label>
                                        <div class="col-md-8 col-xs-12"> 
                                        <asp:TextBox ID="text_total2" runat="server" class="form-control" AutoPostBack="true" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                        </div>
                                    </div>
                                 </asp:Panel>
                                    </div>     
                                    <div class="tab-pane" id="tab4">
                                     <label class="col-md-8 col-xs-12 control-label">Year</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="Text_year3" runat="server" class="form-control select" 
                                                    ontextchanged="Text_year3_TextChanged" AutoPostBack="true"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                                                ControlToValidate="Text_year3" ValidationGroup="ans"></asp:RequiredFieldValidator>
                                        </div>

                                        <asp:Panel ID="Panel4" runat="server" Visible="false">
       
                                    <div class="form-group">
                                        <label class="col-md-8 col-xs-12 control-label">Total Expenditure(Salary in Rs.)</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="text_total3" runat="server" class="form-control" AutoPostBack="true" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox>
                                    
                                        </div>
                                    </div>

                                 </asp:Panel>

                                    </div> 
                                    <div class="tab-pane" id="tab5">
                                      <div class="col-md-8 col-xs-12"> 
                                     <asp:LinkButton ID="bookcost_btn" class="btn btn-info" runat="server" OnClick="bookcost_btn_Click" >View Expenditure</asp:LinkButton>
                                     </div>
                                      <label class="col-md-8 col-xs-12 control-label">Total Expenditure(Library Books in Rs.)</label>
                                        <div class="col-md-8 col-xs-12"> 
                                                <asp:TextBox ID="text_bookcost" runat="server" class="form-control"  ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                        </div>
                                  
                          
                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                        <div style="width:100%; height:1000px; overflow:auto;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("book_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Book Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_book_name" runat="server" Text='<%#Eval("book_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Category">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_category" runat="server" Text='<%#Eval("book_category") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subtitle">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subtitle" runat="server" Text='<%#Eval("subtitle") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Author">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_author" runat="server" Text='<%#Eval("author") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edition">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_edition" runat="server" Text='<%#Eval("edition") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Cost">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_cost" runat="server" Text='<%#Eval("book_cost") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Vendor">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_vendor" runat="server" Text='<%#Eval("book_vendor") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Copy">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_copy" runat="server" Text='<%#Eval("copy") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                </Columns>
                                <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                            </asp:GridView>
                            </div>
                        </div>
                    </div>
             
                                    </div>
                                </div>
                            </div>
                            
   

<div class="form-horizontal">
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_sum" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_month1" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_month11" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_empsalary" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_teachsalary" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="lbl_totalbookcost" runat="server" Text="" Visible="false"></asp:Label>
   
    <asp:Label ID="Lbl_date" runat="server" Text=""></asp:Label>
   
                            <div class="panel panel-default">
                              
                                <div>
                                 <%--   <asp:LinkButton ID="income_btn" class="linkdesign" runat="server" OnClick="income_btn_Click">Monthly Income</asp:LinkButton>
                                    <asp:LinkButton ID="expenditure_btn" class="linkdesign" runat="server" OnClick="expenditure_btn_Click">Monthly Expenditure</asp:LinkButton>
                                    <asp:LinkButton ID="yerarlincome_btn" class="linkdesign" runat="server" OnClick="yearlyincome_btn_Click">Yearly Income</asp:LinkButton>
                                    <asp:LinkButton ID="yearlyexpenditure_btn" class="linkdesign" runat="server" OnClick="yearelyexpenditure_btn_Click">Yearly Expenditure</asp:LinkButton>--%>
                                  
                                </div>
        
             
                          
                            </div>
                            </div>

</asp:Content>


