<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo.aspx.cs" Inherits="demo" %>

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
      
        </div>
                    
       
                     <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_user" runat="server" placeholder="User Name" style="font-family:Cursive;"
                                class="form-control"></asp:TextBox>

                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                        
                        <asp:TextBox ID="Text_pass" runat="server" placeholder="Password" TextMode="Password" class="form-control"   style="font-family:Cursive;">
                        </asp:TextBox>

                        </div>
                    </div>
                    
            <asp:Label ID="Lbl_type" runat="server" Text="" Visible="false"></asp:Label>
                    
                    <div class="form-group">
                     <div class="col-md-4">
                         
                         
                        </div>
                        
                        <div class="col-md-8">
                            <asp:Label ID="lbl_id" runat="server" Text="Label" Visible="false"></asp:Label>
                       
                                    <asp:LinkButton ID="LinkButton3" runat="server" 
                                class="btn btn-info btn-block" onclick="LinkButton3_Click" style="font-family:Cursive;">Log In</asp:LinkButton>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
               
        <%--                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" 
                            BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">

                        <Columns>
                         <asp:TemplateField HeaderText="Pk_id" Visible="false" >
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Account">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Eval("Type") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="UserName">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("username") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("password") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                           <asp:TemplateField HeaderText="Copy">
                        <ItemTemplate>
                          
                            <asp:ImageButton ID="ImageButton1" runat="server"  src="copy-icon.png" Height="30px" Width="50px" OnClick="LinkButton1_click"/>
                        </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>

                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#e34724" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />

                        </asp:GridView>--%>
                        

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
