<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="hostelstudentrecord.aspx.cs" Inherits="Admin_hostelstudentrecord" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
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
                                    <h3 class="panel-title"><strong>Hostel Student Record</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">    
                                
                                  <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student ID</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         
                                          <asp:TextBox ID="student_ddl" runat="server" class="form-control select" AutoPostBack="true"
                                                ontextchanged="student_ddl_TextChanged">
                                                </asp:TextBox>  
                                                <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="student_ddl" 
                                                MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="1000" ServiceMethod="GetCountries">

                                                </asp:AutoCompleteExtender>
                                        </div>
                                    </div>  
                                       
        <asp:Panel ID="Panel1" runat="server" Visible="false">
       
                                         <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       
                                    <asp:Label ID="Text_sname" runat="server" Text="" ></asp:Label>
                                                </div>
                                    </div>
        
                                         <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Father Name</label>
                                        <div class="col-md-6 col-xs-12"> 

                                      <asp:Label ID="Lbl_father" runat="server" Text="" ></asp:Label>  
                                          
                                        </div>
                                    </div>

                                         

                                         <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Gender</label>
                                        <div class="col-md-6 col-xs-12"> 
                                         <asp:Label ID="Lbl_gender" runat="server" Text="" ></asp:Label>  
                                        </div>
                                    </div> 


                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Date</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:Label ID="Lbl_admitdate" runat="server" Text="" ></asp:Label> 
                                        </div>
                                        </div>
                                    
                                    

                                    
                                       <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Hostel Name</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_hostel" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>  

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Type</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_type" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>  

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Room No</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_roomno" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>  

                                    
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Seat</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_seat" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>  



                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Charge</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_charge" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div>  

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Mobile</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_mobile" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div> 

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Date of Pay</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_date" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div> 

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Amount Pay</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_amount" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div> 

                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Remaining</label>
                                        <div class="col-md-6 col-xs-12"> 
                                       <asp:Label ID="Lbl_remaining" runat="server" Text="" ></asp:Label>
                                        </div>
                                    </div> 

 </asp:Panel>
                                    
                                    
      

                                
                                </div>
                                <div class="panel-footer">
                                      <asp:Button ID="Export_excel" runat="server" class="btn btn-primary" 
                                          Text="Export to excel"  Visible="false"/>
                                        <asp:Button ID="clr_btn" runat="server" class="btn btn-default" Text="Clear Form"  Visible="false" />
                                     
                                </div>

                                
                   
                            </div>
                        </ContentTemplate>
    </asp:UpdatePanel>    
                          
</asp:Content>





