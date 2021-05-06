<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="studenthostelregister.aspx.cs" Inherits="Admin_studenthostelregister" %>

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
                                    <h3 class="panel-title"><strong>Student Registration</strong></h3>
                                    <ul class="panel-controls">
                                    
                                    </ul>
                                </div>
                                <div class="panel-body">    

                                <div class="row">
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Student ID</label>
                                                <div class="col-md-9">                                            
                                             <asp:TextBox ID="Text_studid" runat="server" class="form-control select" AutoPostBack="true"
                                                        ontextchanged="Text_studid_TextChanged"></asp:TextBox>   
                                                </div>
                                            </div>
                                           
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Student Name</label>
                                                <div class="col-md-9 col-xs-12">
                                            <asp:TextBox ID="Text_studentname" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                             
                                              
                                                    </div>            
                                                    
                                                </div>
                                        
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Father Name</label>
                                                <div class="col-md-9 col-xs-12">
                                         <asp:TextBox ID="Text_father" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox> 
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                         ForeColor="Red" ControlToValidate="Text_father" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                            
                                
                                                    </div>            
                                                    
                                                </div>

                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mother Name</label>
                                                <div class="col-md-9 col-xs-12">
                                             <asp:TextBox ID="Text_mother" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                      ForeColor="Red" ControlToValidate="Text_mother" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                                 
                                    
                                
                                                    </div>            
                                                    
                                                </div>

                                                  <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Gender</label>
                                                <div class="col-md-9 col-xs-12">
                               <asp:DropDownList ID="DropDownList1" class="form-control select" runat="server" >
                                         <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                        </asp:DropDownList> 
                                                 
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Batch</label>
                                                <div class="col-md-9 col-xs-12">
                               <asp:TextBox ID="Text_batch" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                               
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stream</label>
                                                <div class="col-md-9 col-xs-12">
                              
                                             <asp:TextBox ID="Text_stream" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>  
                                                    </div>            
                                                    
                                                </div>
                                                <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Class</label>
                                                <div class="col-md-9 col-xs-12">
                              <asp:TextBox ID="Text_class" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>   
                                                    </div>            
                                                    
                                                </div>

                                                
                                                
                                        </div>
                                        <div class="col-md-6">

                                          <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Roll</label>
                                                <div class="col-md-9 col-xs-12">
                              <asp:TextBox ID="Text_roll" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>   
                                                    </div>            
                                                    
                                                </div>
                                          <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Date</label>
                                                <div class="col-md-9">
                                                
                                              <asp:TextBox ID="Text_date" runat="server" class="form-control select"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date" Format="dd/MM/yyyy">
                                           </asp:CalendarExtender>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Hostel Name</label>
                                                <div class="col-md-9">
                                                
                                                   <asp:DropDownList ID="hostel_ddl" class="form-control select" runat="server" >
                                                
                                        </asp:DropDownList>  
                                                </div>
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Room Type</label>
                                                <div class="col-md-9">
                                                  <asp:DropDownList ID="DropDownList2" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                                                <asp:ListItem Text="--Select Room--" Value="0"></asp:ListItem>
                                                       <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                                              <asp:ListItem Text="Double" Value="2"></asp:ListItem>
                                        </asp:DropDownList> 
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">No of Rooms</label>
                                                <div class="col-md-9">
                                                      <asp:TextBox ID="Text_no_of_room" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black">
                                                      </asp:TextBox>  
                                                </div>
                                            </div>
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Available Room</label>
                                                <div class="col-md-9">
                                                   <asp:TextBox ID="Text_available" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox> 
                                                   
                                                </div>
                                            </div>
                                        <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Room No</label>
                                                <div class="col-md-9">
                                                     <asp:TextBox ID="Text_room_no" runat="server" class="form-control select" OnTextChanged="Text_room_no_TextChanged" AutoPostBack="true">
                                                </asp:TextBox>   
                                                   
                                                </div>
                                            </div>
                                               <asp:Panel ID="Panel1" runat="server" Visible="false">
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Seat No</label>
                                                <div class="col-md-9">
                                                 <asp:TextBox ID="Text_seatno" runat="server" class="form-control select" ></asp:TextBox>
                                                   
                                                </div>
                                            </div>
                                               </asp:Panel>
                                               <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Charge</label>
                                                <div class="col-md-9">
                                                <asp:TextBox ID="Text_charge" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox> 
                                                   
                                                </div>
                                            </div>
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Mobile</label>
                                                <div class="col-md-9">
                                               <asp:TextBox ID="Text_mobile" runat="server" class="form-control select" >
                                               </asp:TextBox>   
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ValidationGroup="ans"
                                               ForeColor="Red" ControlToValidate="Text_mobile">
                                            </asp:RequiredFieldValidator> 
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                
                                 <%-- <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Student ID</label>
                                        <div class="col-md-2 col-xs-2"> 
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control select"></asp:TextBox>   
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Student Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_studentname" runat="server" class="form-control select"></asp:TextBox>  
                                       
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_studentname" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Father Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_father" runat="server" class="form-control select"></asp:TextBox> 
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" 
                                         ForeColor="Red" ControlToValidate="Text_father" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                        </div>

                                    </div>     
                                    
                                    <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Age</label>
                                        <div class="col-md-2 col-xs-2"> 
                                         <asp:TextBox ID="Text_age" runat="server" class="form-control select"></asp:TextBox>  
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" 
                                      ForeColor="Red" ControlToValidate="Text_age" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Gender</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:DropDownList ID="DropDownList1" class="form-control select" runat="server" >
                                         <asp:ListItem Text="Male" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="Female" Value="1"></asp:ListItem>
                                        </asp:DropDownList>   
                                        </div>


                                         <label class="col-md-2 col-xs-4 control-label">Country</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:DropDownList ID="country_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="country_ddl_SelectedIndexChanged" >
                                        </asp:DropDownList>   
                                        </div>

                                    </div>

                                    

                                     <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">State</label>
                                        <div class="col-md-2 col-xs-2"> 
                                        <asp:DropDownList ID="state_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="state_ddl_SelectedIndexChanged" >
                                        </asp:DropDownList>                                    
                                       
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">City</label>
                                        <div class="col-md-2 col-xs-3"> 
                                         <asp:DropDownList ID="city_ddl" class="form-control select" runat="server"> 
                                             
                                        </asp:DropDownList>    
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Pincode</label>
                                        <div class="col-md-2 col-xs-3"> 
                                       <asp:TextBox ID="Text_pincode" runat="server" class="form-control select"></asp:TextBox>     
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ErrorMessage="*" ForeColor="Red" ControlToValidate="Text_pincode" ValidationGroup="ans">
                                        </asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                      <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Date</label>
                                        <div class="col-md-2 col-xs-2"> 
                                       <asp:TextBox ID="Text_date" runat="server" class="form-control select"></asp:TextBox>     
                                           <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="Text_date">
                                           </asp:CalendarExtender>
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Hostel Name</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="hostel_ddl" class="form-control select" runat="server" >
                                                
                                        </asp:DropDownList> 
                                        </div>

                                         <label class="col-md-2 col-xs-4 control-label">Room Type</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:DropDownList ID="DropDownList2" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList2_SelectedIndexChanged" >
                                                <asp:ListItem Text="--Select Room--" Value="0"></asp:ListItem>
                                                       <asp:ListItem Text="Single" Value="1"></asp:ListItem>
                                                              <asp:ListItem Text="Double" Value="2"></asp:ListItem>
                                        </asp:DropDownList> 
                                        </div>


                                    </div>



                                       <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">No of Rooms</label>
                                        <div class="col-md-2 col-xs-2"> 
                                     <asp:TextBox ID="Text_no_of_room" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>   
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Available Room</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_available" runat="server" class="form-control select" ReadOnly="true" ForeColor="Black"></asp:TextBox>   
                                        </div>

                                        <label class="col-md-2 col-xs-4 control-label">Room No</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_room_no" runat="server" class="form-control select" OnTextChanged="Text_room_no_TextChanged" AutoPostBack="true">
                                                </asp:TextBox>   
                                        </div>
                                    </div>

                                    
                                 <asp:Panel ID="Panel1" runat="server" Visible="false">
      
                                      <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Seat No</label>
                                        <div class="col-md-2 col-xs-2"> 
                                          <asp:TextBox ID="Text_seatno" runat="server" class="form-control select" ></asp:TextBox>
                                        </div>


                                    </div>

                                      </asp:Panel><br />

                                      <div class="form-group">
                                        <label class="col-md-2 col-xs-4 control-label">Charge</label>
                                        <div class="col-md-2 col-xs-3"> 
                                        <asp:TextBox ID="Text_charge" runat="server" class="form-control select" ForeColor="Black" ReadOnly="true"></asp:TextBox>   
                                        </div>


                                         <label class="col-md-2 col-xs-4 control-label">Mobile</label>
                                        <div class="col-md-2 col-xs-3"> 
                                     <asp:TextBox ID="Text_mobile" runat="server" class="form-control select" >
                                               </asp:TextBox>   
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ValidationGroup="ans"
                                               ForeColor="Red" ControlToValidate="Text_mobile">
                                        </asp:RequiredFieldValidator>   
                                        </div>

                                    </div>
--%>


                                  

                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                          Text="Export to excel" OnClick="Export_excel_Click"/>
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" OnClick="clr_btn_Click"/>
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit" OnClick="submit_btn_Click" ValidationGroup="ans" />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update"  Visible="false"  OnClick="upd_btn_Click"/>
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
                                    
                                    <asp:TemplateField HeaderText="Father Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("father_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Mother Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_mname" runat="server" Text='<%#Eval("mothername") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="gender">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_gender" runat="server" Text='<%#Eval("gender") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Batch">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_batch" runat="server" Text='<%#Eval("batch") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Stream">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_stream" runat="server" Text='<%#Eval("stream") %>'>
                                            </asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Class">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_class" runat="server" Text='<%#Eval("class") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Hostel Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_hname" runat="server" Text='<%#Eval("hostel_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_type" runat="server" Text='<%#Eval("type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                     <asp:TemplateField HeaderText="Room No">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_room_no" runat="server" Text='<%#Eval("room_no") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>


                                     <asp:TemplateField HeaderText="Charge">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_charge" runat="server" Text='<%#Eval("Charge") %>'></asp:Label>
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
 </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>




