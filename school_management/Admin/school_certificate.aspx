<%@ Page Language="C#" AutoEventWireup="true" CodeFile="school_certificate.aspx.cs"
    Inherits="Admin_school_certificate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Character Certificate</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="lbl_pkid" runat="server" Text="" Visible="false"></asp:Label>
    <center>
    <div style="width: 800px; height: 600px; padding: 20px; text-align: center; border: 10px solid #787878">
        <div style="width: 750px; height: 550px; padding: 20px; text-align: center; border: 5px solid #787878">
            <span style="font-size: 50px; font-weight: bold">Character Certificate</span>
            <br/>
            <span style="font-size: 30px; font-weight: bold">
                <asp:Label ID="lbl_schoolname" runat="server" Text=""></asp:Label></span>
            <br/>
            <br/>
            <span style="font-size: 25px"><i>This is to certify that the character of</i></span>&nbsp;&nbsp;
            
            <span style="font-size: 30px"><b><asp:Label ID="lbl_studentname" runat="server" Text=""></asp:Label>
            S/o <asp:Label ID="lbl_fathername" runat="server" Text=""></asp:Label></b> was <b><asp:Label ID="lbl_status" runat="server" Text=""></asp:Label></b>.</span>
            <span style="font-size: 25px"><i>He/she has completed the class <b><asp:Label ID="lbl_class" runat="server" Text=""></asp:Label></b> from this school.</i></span>
            
            <span style="font-size: 25px">This certificate is issued to <asp:Label ID="lbl_student_name1" runat="server" Text=""></asp:Label> from <br /><b><asp:Label ID="lbl_schoolname1" runat="server" Text=""></asp:Label></b>.</span>
            <span style="font-size: 25px">His/Her conduct and behaviour was <asp:Label ID="lbl_status1" runat="server" Text=""></asp:Label>.</span>
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
    </center>
    <SCRIPT LANGUAGE="JavaScript">
        if (window.print) {
            document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
        }
</script>
    </form>
</body>
</html>
