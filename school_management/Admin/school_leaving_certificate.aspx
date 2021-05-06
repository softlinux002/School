<%@ Page Language="C#" AutoEventWireup="true" CodeFile="school_leaving_certificate.aspx.cs" Inherits="Admin_school_leaving_certificate" %>

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
            <span style="font-size: 50px; font-weight: bold">School Leaving Certificate</span>
            <br/>
            <span style="font-size: 30px; font-weight: bold">
                <asp:Label ID="lbl_schoolname" runat="server" Text=""></asp:Label></span>
            <br/>
            <br/>
            <div style="text-align:left; margin-left:20px; margin-right:20px;">
            <span style="font-size: 25px;"><i>1. Student Name</i></span>&nbsp;&nbsp;
            
            <span style="font-size: 25px;"><b><asp:Label ID="lbl_studentname" runat="server" Text=""></asp:Label></b>.</span><br />
            <span style="font-size: 25px;"><i>2. Father's/Guardian's Name <b><asp:Label ID="lbl_fathername" runat="server" Text=""></asp:Label></b>. </span><br />
            <%--<span style="font-size: 25px"><i><b> <asp:Label ID="lbl_schoolname1" runat="server" Text=""></asp:Label></b>.</i></span>--%>
            
            <span style="font-size: 25px; "><i>3. Date of first Admission in the school </i><b><asp:Label ID="lbl_firstadmisiondate" runat="server" Text=""></asp:Label></b>.</span><br />
            <span style="font-size: 25px; "><i>4. Date of Birth </i><b><asp:Label ID="lbl_dob" runat="server" Text=""></asp:Label></b>.</span><br />
            <span style="font-size: 25px;"><i>5. Class in which the student last studied </i><b><asp:Label ID="lbl_class" runat="server" Text=""></asp:Label></b>.</span><br />
            <span style="font-size: 25px; "><i>6. Date of Application for certificate </i><b><asp:Label ID="lbl_applydate" runat="server" Text=""></asp:Label></b>.</span><br />
            <span style="font-size: 25px; "><i>7. Reason for Leaving the school </i><b><asp:Label ID="lbl_reason" runat="server" Text=""></asp:Label></b>.</span><br />
            <br />
            <br />
            <%--<span style="font-size: 20px">with score of <b>$grade.getPoints()%</b></span>--%>
            <br />
            <span style="font-size: 25px; float:left; margin-left:30px;"><i>Issue Date:</i></span>
            <asp:Label ID="lbl_date" runat="server" Text="" style="font-size: 25px; float:left"></asp:Label>
            <br /><br /> <br /> <br /> 
            <span style="font-size: 30px; float:right; margin-right:50px;"><i>Principal</i></span>
            <span style="font-size: 30px"></span>
            </div>
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
