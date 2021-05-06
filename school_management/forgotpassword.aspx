<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="body-full-height">
<head id="Head1" runat="server">
  <title>Tour Package</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        
</head>
<body style="background-color:#33414e;" ondragstart="return false" draggable="false">
    <form id="form1" runat="server">
    
    
    <div>
    <div class="login-container">
        
            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                <div class="login-body">
                    <div class="login-title" style="font-family:Cursive;"><strong>Forgot</strong>Password</div>

                    <div action="index.html" class="form-horizontal" method="post">
                    <div class="form-group">
                        <div class="col-md-12">
        <br />
        </div>
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control " AutoPostBack="true" style="font-family:Cursive;">
                        <asp:ListItem Text="Select Category"></asp:ListItem>
                        <asp:ListItem Text="Teacher" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Student" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Parent" Value="3"></asp:ListItem>
                        <asp:ListItem Text="Library" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Hostel" Value="5"></asp:ListItem>
                          <asp:ListItem Text="Employee" Value="6"></asp:ListItem>
                        </asp:DropDownList>
                       </div>
                    </div>

                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_Email" runat="server" placeholder="Please Enter You Email" class="form-control" style="font-family:Cursive;"></asp:TextBox>

                        </div>
                    </div>

                   
                    
            <asp:Label ID="Lbl_type" runat="server" Text="" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                     
                        
                <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label>
                        <div class="col-md-12">
                           <%-- <button class="btn btn-info btn-block">Log In</button>--%>
                       
                                    <asp:LinkButton ID="LinkButton3" runat="server" 
                                class="btn btn-info btn-block" OnClick="LinkButton3_Click" style="font-family:Cursive;">Send</asp:LinkButton>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </asp:Panel>
                     
                    </div>
                </div>
               
                <div class="login-footer">
                    <div class="pull-left">
                                        <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration:none;font-family:Cursive;font-size:14px;" class="btn btn-link btn-block" 
                                            onclick="LinkButton1_Click" >Back</asp:LinkButton>
                    </div>
                    <div class="pull-right">
                       <%-- <a href="#">About</a> |
                        <a href="#">Privacy</a> |
                        <a href="#">Contact Us</a>--%>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    </asp:Panel>
    
    </form>
</body>
</html>
