<%@ Page Title="" Language="C#" MasterPageFile="~/Student/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Student_Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
  <%--<DayPilot:DayPilotCalendar
  ID="DayPilotCalendar1" 
  runat="server" 
  DataEndField="AssignmentEnd"
  DataStartField="AssignmentStart" 
  DataTextField="AssignmentNote" 
  DataValueField="AssignmentId" 
  DataRecurrenceField="AssignmentRecurrence"
  />--%>
      

  <DayPilot:DayPilotCalendar
        ID="DayPilotCalendar1" 
        runat="server" 
        ClientObjectName="dp"
        DataEndField="AssignmentEnd"
        DataStartField="AssignmentStart" 
        DataTextField="AssignmentNote" 
        DataValueField="AssignmentId" 
        CssOnly="true"
        CssClassPrefix="calendar_green"

        HeaderHeight="30"
        HeaderDateFormat="D"
        CellDuration="60"
        CellHeight="70"
        DayBeginsHour="1"
        DayEndsHour="8"
        HeightSpec="Full"
        HourWidth="100"
        OnBeforeTimeHeaderRender="DayPilotCalendar1_OnBeforeTimeHeaderRender"
        TimeRangeSelectedHandling="JavaScript"
        TimeRangeSelectedJavaScript="create(start, end, resource);"
        EventMoveHandling="CallBack"
        EventResizeHandling="CallBack"
        OnCommand="DayPilotCalendar1_OnCommand"
        EventClickHandling="JavaScript"
        EventClickJavaScript="edit(e)"
        ColumnMarginRight="0" 
        oneventmove="DayPilotCalendar1_EventMove" 
        oneventresize="DayPilotCalendar1_EventResize"
        MoveBy="Top" 
        onbeforeeventrender="DayPilotCalendar1_BeforeEventRender"
    />
       <DayPilot:DayPilotScheduler 
  ID="DayPilotScheduler1" 
  runat="server" 
  
  DataStartField="eventstart" 
  DataEndField="eventend" 
  DataTextField="name" 
  DataIdField="id" 
  DataResourceField="resource_id" 
  
  CellGroupBy="Month"
  Scale="Day"
  
  EventMoveHandling="CallBack" 
  OnEventMove="DayPilotScheduler1_EventMove" 
  >
</DayPilot:DayPilotScheduler>
        
</ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

