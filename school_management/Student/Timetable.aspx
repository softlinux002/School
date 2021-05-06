<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Timetable.aspx.cs" Inherits="Student_Timetable" %>

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
        color:white;
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
      <div class="panel-body panel-body-table">
                <div >
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" class="table table-bordered table-striped table-actions"
                        AllowPaging="true" PageSize="30" OnPageIndexChanging="GridView1_PageIndexChanging" OnDataBound="OnDataBound">
                        <Columns>
        <asp:BoundField DataField="day" HeaderText="Day"/>
        <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name"/>
        <asp:BoundField DataField="subject" HeaderText="Subject"/>
        <asp:BoundField DataField="b" HeaderText="Timing"/>
                        </Columns>
                        <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                    </asp:GridView>
                </div>
            </div>
</asp:Content>