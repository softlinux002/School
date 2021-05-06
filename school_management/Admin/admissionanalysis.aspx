<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="admissionanalysis.aspx.cs" Inherits="Admin_admissionanalysis" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
   table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    text-align:center;
}
th, td {
    padding: 5px;
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

    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student admission Analysis</strong></h3>
                                    <ul class="panel-controls">
                                
                                    </ul>
                                </div>
                                <div class="panel-body">      
                                       <div >
                                        <table style="width:100%">
                                          <tr style="color:Black;">
                                            <th>City</th>
                                            <th>No Of Student</th>		
                                          </tr>
                                            <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                          <tr>
                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("city") %>'></asp:Label>
                                                </td>
                                                <td> <asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                                            </tr>
                                          </ItemTemplate>
                                            </asp:Repeater>
                                        </table>
                                       </div>
                                </div>
                               

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            
                        </div>
                    </div>

                            </div>
                            </div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>



