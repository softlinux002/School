<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="payhostelfee.aspx.cs" Inherits="Admin_payhostelfee" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
  
<div class="form-horizontal">

    <asp:Label ID="Lbl_stdid" runat="server" Text="" Visible="false"></asp:Label>
    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Hostel Fee</strong></h3>
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                
                                 
                                    
                                    <div class="row">
                                        
                                        <div class="col-md-6">

                                          <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Id</label>
                                                <div class="col-md-9 col-xs-12">
                                                <asp:TextBox ID="Text_sid" runat="server" class="form-control select" AutoPostBack="true"
                                                        ontextchanged="Text_sid_TextChanged"></asp:TextBox>
                                               </div>       
                                             </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:TextBox ID="Text_batch" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                               </div>   
                                             </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                                                      <asp:TextBox ID="Text_class" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                               </div>   
                                             </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                                                       <asp:TextBox ID="Text_stream" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                               </div>   
                                             </div>
                                        
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Roll No</label>
                                                <div class="col-md-9"> 
                                                   <asp:TextBox ID="Text_roll" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>          
                                              

                                               
                                              
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:TextBox ID="Text_sname" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true">
                                                </asp:TextBox>  
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date of Pay</label>
                                                <div class="col-md-9 col-xs-12">
                                            <asp:TextBox ID="Text_date" runat="server" class="form-control select"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date" Format="dd/MM/yyyy">
                                           </asp:CalendarExtender>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_date" ValidationGroup="ans">
                              </asp:RequiredFieldValidator>
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Name</label>
                                                <div class="col-md-9 col-xs-12">
                                                <%--<asp:TextBox ID="Text_hostel" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true">
                                                </asp:TextBox>  --%>
                                                
                                                  <asp:TextBox ID="Text_hostelname" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                
                                                    </div>            
                                                    
                                                </div>

                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Type</label>
                                                <div class="col-md-9 col-xs-12">
                                                 <%--<asp:TextBox ID="Text_type" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true">--%>
                                                     <asp:TextBox ID="Text_type" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                    </div>     
                                                </div>

                                                
                                            <asp:Label ID="amount_lbl" runat="server" Text="" Visible="false"></asp:Label>
                                            <asp:Label ID="fee_lbl" runat="server" Text="" Visible="false"></asp:Label>
                                           
                                        </div>
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Fee</label>
                                                <div class="col-md-9">
                                                
                                                <asp:TextBox ID="Text_fee" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                </div>
                                            </div>


                                              
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Pending Fee</label>
                                                <div class="col-md-9">
                                                
                                                <asp:TextBox ID="Text_pending" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Amount type</label>
                                                <div class="col-md-9">
                                                    <asp:DropDownList ID="ddl_type" runat="server" class="form-control select">
                                         <asp:ListItem Text="--Select Type--" Value="0" ></asp:ListItem>
                                        <asp:ListItem Text="By Cash" Value="1" ></asp:ListItem>
                                             <asp:ListItem Text="By Check" Value="2"></asp:ListItem>
                                             </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Amount Pay</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_amount" runat="server"  class="form-control select" AutoPostBack="true"
                                                ontextchanged="Text_amount_TextChanged"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_amount" ValidationGroup="ans">
                                    </asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Remaining</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_remaining" runat="server"  class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                        

                                        </div>
                                        
                                    </div>
      
                                    <<%--div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="student_ddl" class="form-control select" runat="server" >
                                                
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>

                                  <%--  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Roll No.</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="roll_ddl" class="form-control select" runat="server">
                                        
                                        </asp:DropDownList>     
                                        </div>
                                    </div>--%>
                                      <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Complaint</label>
                                        <div class="col-md-6 col-xs-12"> 
                                            <asp:TextBox ID="Text_complaint" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>    
                                        </div>
                                    </div>
--%>
                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" OnClick="Export_excel_Click"
                                          Text="Export to excel" />
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" />
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

                                    <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Roll_no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_roll" runat="server" Text='<%#Eval("roll_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date_of_pay") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                    <asp:TemplateField HeaderText="Hostel Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hname" runat="server" Text='<%#Eval("Hostel_name") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                       <asp:TemplateField HeaderText="Hostel Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_htype" runat="server" Text='<%#Eval("hostel_type") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Hostel Fee">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hfee" runat="server" Text='<%#Eval("hostel_fee") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>            

                                    <asp:TemplateField HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_type" runat="server" Text='<%#Eval("amount_type") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Amount Pay">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_apay" runat="server" Text='<%#Eval("amount_pay") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Remaining">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_remaining" runat="server" Text='<%#Eval("remaining") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <%--<asp:TemplateField HeaderText="City">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_city" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Pincode">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_pin" runat="server" Text='<%#Eval("pincode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Hostel Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hname" runat="server" Text='<%#Eval("hostel_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                                                                                                                                            
                                     <asp:TemplateField HeaderText="Mobile">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mobile" runat="server" Text='<%#Eval("mobile") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>

                                    <asp:TemplateField HeaderText="Action">
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
  </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

