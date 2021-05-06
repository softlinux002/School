<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bonafied_certficate.aspx.cs" Inherits="Admin_bonafied_certficate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="lbl_pkid" runat="server" Text="" Visible="false"></asp:Label>
    <center>
    <div style="width: 800px; height: 600px; padding: 20px; text-align: center; border: 10px solid #787878">
        <div style="width: 750px; height: 550px; padding: 20px; text-align: center; border: 5px solid #787878">
            <span style="font-size: 50px; font-weight: bold">Bonafied Certificate</span>
            <br/>
            <span style="font-size: 30px; font-weight: bold">
                <asp:Label ID="lbl_schoolname" runat="server" Text=""></asp:Label></span>
            <br/>
            <br/>
            <span style="font-size: 25px"><i>This is to certify that</i></span>&nbsp;&nbsp;
            
            <span style="font-size: 30px"><b><asp:Label ID="lbl_studentname" runat="server" Text=""></asp:Label>
            S/o/D/o Sh. <asp:Label ID="lbl_fathername" runat="server" Text=""></asp:Label></b> is bonafide student </span>
            <span style="font-size: 25px"><i>of<b> <asp:Label ID="lbl_schoolname1" runat="server" Text=""></asp:Label></b>.</i></span>
            
            <span style="font-size: 25px">He/She is studying in class <b><asp:Label ID="lbl_class" runat="server" Text=""></asp:Label></b> in our school.</span>
            <span style="font-size: 25px">His/Her annual fees is Rs.<asp:Label ID="lbl_fee" runat="server" Text=""></asp:Label>.</span>
            <span style="font-size: 25px">This certificate is issued against the request of student vide.</span>
            <span style="font-size: 25px">His/Her application dated <b><asp:Label ID="lbl_date1" runat="server" Text=""></asp:Label></b> for the documentation work purpose.</span>
            <br />
            <br />
            <%--<span style="font-size: 20px">with score of <b>$grade.getPoints()%</b></span>--%>
            <br />
            <span style="font-size: 25px; float:left; margin-left:30px;"><i>Issue Date:</i></span>
            <asp:Label ID="lbl_date" runat="server" Text="" style="font-size: 25px; float:left"></asp:Label>
            <br /><br /> <br /> <br /> <br /> <br /><br /> <br /> <br /><br />
            <span style="font-size: 30px; float:right; margin-right:50px;"><i>Principle</i></span>
            <span style="font-size: 30px"></span>
        </div>
    </div>
    <br />
    
    <SCRIPT LANGUAGE="JavaScript">
        if (window.print) {
            document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
        }
</script>
</center>
    </form>
</body>
</html>
