<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="body-full-height">
<head id="Head1" runat="server">
  <title>School Management System</title>    
    <script src="abc.js" type="text/javascript"></script>        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
       <style type="text/css">
        .corner
        {
             border-radius: 7px;
            -webkit-border-radius: 7px;
            -moz-border-radius: 7px;
        }
        </style> 
        <script language="javascript" type="text/javascript">
            //Function to disable Cntrl key/right click
            function DisableControlKey(e) {
                // Message to display
                var message = "Cntrl key/ Right Click Option disabled";
                // Condition to check mouse right click / Ctrl key press
                if (e.which == 17 || e.button == 2) {
                    alert(message);
                    return false;
                }
            }
</script>     
</head>
<body ondragstart="return false" draggable="false">

    <asp:Image ID="Image2" ImageUrl="" Width="1600px" Height="762px" runat="server" />
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
 
    <div>
    <div class="login-container" style="margin-top:-700px;">
        <asp:Label ID="Lbl_name" runat="server" Text="" Visible="false"></asp:Label>
        <asp:Image ID="Image_student" runat="server"  ImageUrl="" Visible="false"/>
        <asp:Image ID="Image_teacher" runat="server"  ImageUrl="" Visible="false"/>
            <div class="login-box animated fadeInDown">
                <div class="login-logo corner" style="background-color:#33414e; margin-bottom:-10px;"></div>
                <div class="login-body" style="background-color:#33414e;">
                    <div class="login-title" style="font-family:Cursive;"><strong>Welcome</strong>, Please login</div>

                    <div action="index.html" class="form-horizontal" method="post">
                    <div class="form-group">
                        <div class="col-md-12">
                            
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control " AutoPostBack="true" style="font-family:Cursive;" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" >
                      <asp:ListItem Text="Select Category" ></asp:ListItem>
                 <asp:ListItem Text="Admin" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Teacher" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Student" Value="2"></asp:ListItem>
                 <asp:ListItem Text="Parent" Value="3"></asp:ListItem>
               <%--  <asp:ListItem Text="Library" Value="4"></asp:ListItem>
                 <asp:ListItem Text="Hostel" Value="5"></asp:ListItem>--%>
                  <asp:ListItem Text="Employee" Value="6"></asp:ListItem>
        </asp:DropDownList>
        <br />
        </div>
                     <asp:Panel ID="Panel1" runat="server" DefaultButton="LinkButton3">
       
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_user" runat="server" placeholder="User Name" style="font-family:Cursive;"
                                class="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_pass" runat="server" placeholder="Password" class="form-control" TextMode="Password" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                    
            <asp:Label ID="Lbl_type" runat="server" Text="" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                     <div class="col-md-4">
                         
                         <asp:LinkButton ID="LinkButton5" runat="server" class="btn btn-link btn-block" 
                               style="text-decoration:none; font-family:Cursive;font-size:14px;" onclick="LinkButton5_Click" >Forgot Password</asp:LinkButton>
                        </div>
                        
                        <div class="col-md-8">
                        
                       
                                    <asp:LinkButton ID="LinkButton3" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton3_Click" style="font-family:Cursive;">Log In</asp:LinkButton>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>
                     <asp:Panel ID="Panel2" runat="server" Visible="false" DefaultButton="LinkButton1">
       
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_teacemail" runat="server" placeholder="Email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_teacherpass" runat="server" placeholder="Password" class="form-control" TextMode="Password" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                    
                                        <asp:Label ID="Lbl_teacher_type" runat="server" Text="Label" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                         <div class="col-md-4">
                           
                         <asp:LinkButton ID="LinkButton6" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none; font-family:Cursive; font-size:14px;" onclick="LinkButton6_Click" >Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                        
                       
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton1_Click" style="font-family:Cursive;">Log In</asp:LinkButton>
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>
                     <asp:Panel ID="Panel3" runat="server" Visible="false" DefaultButton="LinkButton2">
       
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_studentemail" runat="server" placeholder="Email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_spass" runat="server" placeholder="Password" class="form-control" TextMode="Password" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                     <asp:Label ID="Lbl_stype" runat="server" Text="" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                         <div class="col-md-4">
                           
                         <asp:LinkButton ID="LinkButton7" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none; font-family:Cursive;font-size:14px;" onclick="LinkButton7_Click">Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                       
                                    <asp:LinkButton ID="LinkButton2" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton2_Click">Log In</asp:LinkButton>
                                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </div>
                    </div>

                     </asp:Panel>
                     <asp:Panel ID="Panel4" runat="server" Visible="false" DefaultButton="LinkButton4">
       
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_pmail" runat="server" placeholder="User Email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_prnt_pass" runat="server" placeholder="Password" class="form-control" TextMode="Password" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                   <asp:Label ID="Lbl_prnt_type" runat="server" Text="" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                         <div class="col-md-4">
                          
                         <asp:LinkButton ID="LinkButton8" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none;font-family:Cursive;font-size:14px;" onclick="LinkButton8_Click">Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                           
                       
                                    <asp:LinkButton ID="LinkButton4" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton4_Click">Log In</asp:LinkButton>
                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>
                     <asp:Panel ID="Panel5" runat="server" Visible="false" DefaultButton="LinkButton10">
          
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_empemail" runat="server" placeholder="User email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                                        <asp:Label ID="Lbl_empname" runat="server" Text="" Visible="false"></asp:Label>
                                         <asp:Label ID="lbl_emptype" runat="server" Text="" Visible="false"></asp:Label>
                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_emppass" runat="server" placeholder="Password" class="form-control" TextMode="Password" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                    
                  
                    <div class="form-group">
                         <div class="col-md-4">
                           
                         <asp:LinkButton ID="LinkButton9" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none;font-family:Cursive;font-size:14px;" onclick="LinkButton9_Click" >Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                         
                       
                                     <asp:Image ID="Image_emp" runat="server" ImageUrl="" Visible="false"/>
                                    <asp:LinkButton ID="LinkButton10" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton10_Click" style="font-family:Cursive;">Log In</asp:LinkButton>
                                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>
                     <asp:Panel ID="Panel6" runat="server" Visible="false" DefaultButton="LinkButton12">
          
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_hemail" runat="server" placeholder="User email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                                        <asp:Label ID="Label5" runat="server" Text="" Visible="false"></asp:Label>
                                         <asp:Label ID="Label7" runat="server" Text="" Visible="false"></asp:Label>
                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_hpass" runat="server" placeholder="Password" class="form-control" TextMode="Password" 
                        onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>
                                            <asp:Image ID="Image_lbl_incharge" runat="server" Visible="false" />
                        </div>
                    </div>
                                        <asp:Label ID="Lbl_inchargetype" runat="server" Text=""></asp:Label>
                    <div class="form-group">
                         <div class="col-md-4">
                          
                         <asp:LinkButton ID="LinkButton11" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none;font-family:Cursive;font-size:14px;" onclick="LinkButton9_Click" >Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                          
                       
                                     <asp:Image ID="Image1" runat="server" ImageUrl="" Visible="false"/>
                                    <asp:LinkButton ID="LinkButton12" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton12_Click" style="font-family:Cursive;">Log In</asp:LinkButton>
                                    <asp:Label ID="Lbl_inchargename" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>

                       <asp:Panel ID="Panel7" runat="server" Visible="false" DefaultButton="LinkButton14">
          
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_employee" runat="server" placeholder="Employee Email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>
                           <asp:Label ID="Lbl_etype" runat="server" Text=""></asp:Label>
                                       
                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_epass" runat="server" placeholder="Password" class="form-control" TextMode="Password" 
                        onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)" style="font-family:Cursive;"></asp:TextBox>
                                            <asp:Image ID="Image3" runat="server" Visible="false" />
                        </div>
                    </div>
                                        
                    <div class="form-group">
                         <div class="col-md-4">
                          
                         <asp:LinkButton ID="LinkButton13" runat="server" class="btn btn-link btn-block" 
                                 style="text-decoration:none;font-family:Cursive;font-size:14px;" 
                                 onclick="LinkButton13_Click"  >Forgot Password</asp:LinkButton>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Lbl_employeename" runat="server" Text="Label" Visible="false"></asp:Label>
                       
                                     <asp:Image ID="Image4" runat="server" ImageUrl="" Visible="false"/>
                                    <asp:LinkButton ID="LinkButton14" runat="server" 
                                class="btn btn-info btn-block"  style="font-family:Cursive;" 
                                         onclick="LinkButton14_Click">Log In</asp:LinkButton>
                                    <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>

                    </div>
                </div>
               
                <div class="login-footer">
                    <div class="pull-left">
                        &copy; 2015 
                    </div>
                    <div class="pull-right">
                      
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    
    </div>
       </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
