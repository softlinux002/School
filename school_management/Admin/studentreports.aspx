<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="studentreports.aspx.cs" Inherits="Admin_studentreports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
table,tr,td,th
{
text-align:center;    
}
.GridPager a
    {
        background-color: #e34724;
        color:white;
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

<div class="form-horizontal">

    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Reports</strong></h3>
                                    <ul class="panel-controls">
                                      
                                    </ul>
                                </div>
                                <div class="panel-body">                                                                        
                                 <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Report For</label>
                                                <div class="col-md-9">                                            
                                                    <asp:DropDownList ID="ddl_report" runat="server" class="form-control select" AutoPostBack="true"
                                                        onselectedindexchanged="ddl_report_SelectedIndexChanged">
                                                    <asp:ListItem Text="Please Select" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="Blood Group" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="State" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="City" Value="3"></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                      <asp:Panel ID="panel_blood" runat="server" Visible="false">
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Blood Group</label>
                                                <div class="col-md-9 col-xs-12">
                                                    <asp:DropDownList ID="blood_ddl" runat="server" class="form-control select">
                                                    <asp:ListItem Text="--Select Blood Group--" Value="0"></asp:ListItem>
                                                    <asp:ListItem Text="A+" Value="1"></asp:ListItem>
                                                    <asp:ListItem Text="O+" Value="2"></asp:ListItem>
                                                    <asp:ListItem Text="B+" Value="3"></asp:ListItem>
                                                    <asp:ListItem Text="AB+" Value="4"></asp:ListItem>
                                                    <asp:ListItem Text="A-" Value="5"></asp:ListItem>
                                                    <asp:ListItem Text="O-" Value="6"></asp:ListItem>
                                                    <asp:ListItem Text="B-" Value="7"></asp:ListItem>
                                                    <asp:ListItem Text="AB-" Value="8"></asp:ListItem>
                                                    </asp:DropDownList>
                                               </div>            
                                                    
                                                </div>
                                              </asp:Panel>


                                             <asp:Panel ID="panel_state" runat="server" Visible="false">
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select State</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_state" runat="server" class="form-control select" >
                                                
                                                    </asp:DropDownList>
                                       
                                                    </div>            
                                                    
                                                </div>
                                                </asp:Panel><br />


                                            
                                           
                                             <asp:Panel ID="panel_city" runat="server" Visible="false">
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Select City</label>
                                                <div class="col-md-9 col-xs-12">
                                                   <asp:DropDownList ID="ddl_city" runat="server" class="form-control select" >
                                                
                                                    </asp:DropDownList>
                                       
                                                    </div>            
                                                    
                                                </div>
                                                </asp:Panel><br />

                                               
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">School/Batch</label>
                                                <div class="col-md-9 col-xs-12">
                                                  
                                                        <asp:DropDownList ID="batch_ddl" runat="server" class="form-control select" AutoPostBack="true"
                                                            onselectedindexchanged="batch_ddl_SelectedIndexChanged">

                                                        </asp:DropDownList>
                                       
                                                    </div>            
                                                    
                                                </div>
                                              
                                                
                                             
                                        </div>
                                        <div class="col-md-6">
                                            
                                                       <%-- <asp:Panel ID="Panel_batch" runat="server" Visible="false">
                                                   
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9">
                                                      
                                                <asp:DropDownList ID="ddl_batch" runat="server" class="form-control select" >
                                                        
                                                </asp:DropDownList>
                                                </div>
                                            </div>

                                              <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9">
                                                 <asp:DropDownList ID="stream_ddl" class="form-control select" runat="server" 
                                                        AutoPostBack="true" >
                                         <asp:ListItem Text="Select Stream"></asp:ListItem>
                                         <asp:ListItem Text="Art"></asp:ListItem>
                                         <asp:ListItem Text="Commerce"></asp:ListItem>
                                         <asp:ListItem Text="Medical"></asp:ListItem>
                                         <asp:ListItem Text="Non-Medical"></asp:ListItem>
                                         <asp:ListItem Text="N/A"></asp:ListItem>
                                         </asp:DropDownList>
                                                </div>
                                            </div>
                                                 </asp:Panel>--%>

                                        </div>
                         
                                </div>
                                <div class="panel-footer">
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("student_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                       <asp:TemplateField HeaderText="Student ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stuid" runat="server" Text='<%#Eval("s_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Admission no">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_admissionno" runat="server" Text='<%#Eval("admission_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    
                                    <asp:TemplateField HeaderText="Student Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stuname" runat="server" Text='<%#Eval("student_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                       <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Height="50px" Width="50px"/>
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



