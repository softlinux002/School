<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="hostelrefundfee.aspx.cs" Inherits="Admin_hostelrefundfee" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<div class="form-horizontal">

    <asp:Label ID="Lbl_stdid" runat="server" Text="" Visible="false"></asp:Label>
    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Hostel Fee Refund</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Student ID</label>
                                                <div class="col-md-9">                                            
                                               <asp:TextBox ID="student_ddl" runat="server" class="form-control select" AutoPostBack="true"
                                                ontextchanged="student_ddl_TextChanged">
                                                </asp:TextBox>  
                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="student_ddl" 
                                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCountries">

                                                </asp:AutoCompleteExtender>
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:TextBox ID="Text_sname" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox> 
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Pay</label>
                                                <div class="col-md-9 col-xs-12">
                                          <asp:TextBox ID="Text_date" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                           </asp:CalendarExtender>
                            
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">No Of Months</label>
                                                <div class="col-md-9 col-xs-12">
                                              <asp:TextBox ID="Text_month" runat="server" class="form-control select" ></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                               ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_month" ValidationGroup="ans">
                                               </asp:RequiredFieldValidator>
                                                </asp:TextBox>  
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                  <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Total Amount</label>
                                                <div class="col-md-9 col-xs-12">
                                 <asp:TextBox ID="Text_totalamount" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                </asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>

                                        </div>
                                        <div class="col-md-6">


                                          <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Amount Pay</label>
                                                <div class="col-md-9">
                                                
                                             <asp:TextBox ID="Text_amount" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Name</label>
                                                <div class="col-md-9">
                                                
                                                <asp:TextBox ID="Text_hostel" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Type</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="Text_type" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"> 
                                        
                                        </asp:TextBox>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">No.of Months stay in Hostel</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_stay" runat="server"  class="form-control select" AutoPostBack="true"
                                                ontextchanged="Text_stay_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_stay" ValidationGroup="ans">
                                            </asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Refund amount</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="Text_refund" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                        

                                        </div>
                                        
                                    </div>
                                <%--  <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Student ID</label>
                                        <div class="col-md-2 col-xs-2"> 
                                         
                                          <asp:TextBox ID="student_ddl" runat="server" class="form-control select" AutoPostBack="true"
                                                ontextchanged="student_ddl_TextChanged">
                                                </asp:TextBox>  
                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="student_ddl" 
                                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCountries">

                                                </asp:AutoCompleteExtender>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Student Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_sname" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox>  
                                        </div>

                                         <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Date of Pay</label>
                                        <div class="col-md-2 col-xs-3"> 
                                       <asp:TextBox ID="Text_date" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                           </asp:CalendarExtender>
                                        </div>

                                    </div>  
                                       


                                       
                                    </div>


                                    
                                     

                                     <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">No Of Months</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:TextBox ID="Text_month" runat="server" class="form-control select" ></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                               ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_month" ValidationGroup="ans">
                                               </asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Total Amount</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_totalamount" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Amount Pay</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_amount" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black">
                                                </asp:TextBox>
                                        </div>

                                    </div> 
                                  
                                    
                                    
                                      

                                     <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Hostel Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_hostel" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"> 
                                                
                                        </asp:TextBox>
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Hostel Type</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_type" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"> 
                                        
                                        </asp:TextBox>
                                        </div>

                                          <label class="col-md-2 col-xs-4 control-label">No.of Months stay in Hostel</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_stay" runat="server"  class="form-control select" AutoPostBack="true"
                                                ontextchanged="Text_stay_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_stay" ValidationGroup="ans">
                                            </asp:RequiredFieldValidator>
                                        </div>

                                    </div>


                                       <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">
                                        Refund amount</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_refund" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                       
                                        </div>
                                    </div>   
                                    
      --%>

                                   
                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" OnClick="Export_excel_Click"
                                          Text="Export to excel" />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" OnClick="clr_btn_Click"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit"  OnClick="submit_btn_Click" ValidationGroup="ans"/>
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update"  Visible="false" OnClick="upd_btn_Click" />
                                </div>

                                <div class="panel-body panel-body-table">
                                <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" onpageindexchanging="GridView1_PageIndexChanging">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student_id">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_student_id" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="No of Months">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hfee" runat="server" Text='<%#Eval("no_of_months") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Total Amount">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_tamount" runat="server" Text='<%#Eval("total_amount") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount Pay">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_apay" runat="server" Text='<%#Eval("amount_pay") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stay in Hostel(Month)">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_remaining" runat="server" Text='<%#Eval("month_stay_in_hostel") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                <%--    <asp:TemplateField HeaderText="Fine">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fine" runat="server" Text='<%#Eval("fine") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Refund Amount">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_refund_amt" runat="server" Text='<%#Eval("refund_amt") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" 
                                            class="btn btn-default btn-rounded btn-sm" OnClick="btn_edit_Click" 
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" 
                                            class="btn btn-danger btn-rounded btn-sm"
                                                Style="visibility: visible;" 
                                                OnClientClick="return confirm('Are you sure you want to delete this record?');" OnClick="btn_delete_Click">
                                                <span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                   <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                            </asp:GridView>
                        </div>
                    </div>
                   
                            </div>
                            </div>

</asp:Content>


