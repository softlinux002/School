<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<title>
Participation
</title>
<head>
</head>
<body>
<center>
    <asp:Label ID="lbl_pkid" runat="server" Text="" Visible="false"></asp:Label>
<div style="border:15px groove Red;height:600px;width:1000px;">
    <img src="../ribbon.png" height="100px" width="100px" style="margin-left:904px;margin-top:-6px;"/>
    <div style="margin-top:-26px;">
    <img src="../ribbonred.png" style="margin-left:0px;margin-top:-6px; height:250px;width:1014px"/>
<div style="margin-top:-197px;font-size:27px;font-family:Cursive; font-weight:bold;">
    <asp:Label ID="lbl_schoolname" runat="server" Text=""></asp:Label>
</div>
</div>
<div style="margin-top:112px;">
<h2>It is hereby certified that</h2>
</div>
<div style="font-size:24px;font-weight:bold;">

    <asp:Label ID="lbl_studentname" runat="server" Text=""></asp:Label>
</div>
<div style="font-size:24px;font-weight:bold;">
is
</div>
<div style="font-size:24px;font-weight:bold;">
A PARTICIPANT OF
</div>
<div style="font-size:24px;font-weight:bold;">

    <asp:Label ID="lbl_title" runat="server" Text=""></asp:Label>
</div><br />
<div style="font-size:30px;font-weight:bold;">

    <asp:Label ID="lbl_desc" runat="server" Text=""></asp:Label>
</div>

 <div style="font-size:20px;font-weight:bold; margin-top:50px; margin-left:-820px;">
    <h4>Date:-</h4>
    </div>
    <div style="font-size:20px;font-weight:bold; margin-top:-51px; margin-left:-672px;">
    <asp:Label ID="lbl_date" runat="server" Text=""></asp:Label>
</div>

</div>
</center>
 <SCRIPT LANGUAGE="JavaScript">
     if (window.print) {
         document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
     }
</script>
</body>
</html>