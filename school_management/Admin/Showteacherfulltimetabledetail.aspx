<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="Showteacherfulltimetabledetail.aspx.cs" Inherits="Admin_Showteacherfulltimetabledetail" %>

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
                        AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging" OnDataBound="OnDataBound">
                        <Columns>
                         <%--   <asp:TemplateField>
                                <HeaderTemplate>
                                    S.No.</HeaderTemplate>
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                           <%-- <asp:TemplateField Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                           <%-- <asp:TemplateField HeaderText="Day">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_day" runat="server" Text='<%#Eval("day") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Teacher Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_tname" runat="server" Text='<%#Eval("teacher_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_subject" runat="server" Text='<%#Eval("a") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Timing">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_timing" runat="server" Text='<%#Eval("b") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                        <asp:BoundField DataField="day" HeaderText="Day"  />
        <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name"  />
        <asp:BoundField DataField="a" HeaderText="Subject"  />
        <asp:BoundField DataField="b" HeaderText="Timing"  />
                         
                        </Columns>
                        <PagerStyle HorizontalAlign="Left" CssClass="GridPager" />
                    </asp:GridView>
                </div>
            </div>
</asp:Content>

