<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="teacher_review.aspx.cs" Inherits="Admin_teacher_review" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Teacher Review</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">

                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="teachername_txt" runat="server" class="form-control"></asp:TextBox>
                                                <%--<input type="text" class="form-control"/>--%>
                                            </div>                                            
                                            <%--<span class="help-block">This is sample of text field</span>--%>
                                        </div>
                                    </div>

                                <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="stuname_txt" runat="server" class="form-control"></asp:TextBox>
                                                <%--<input type="text" class="form-control"/>--%>
                                            </div>                                            
                                            <%--<span class="help-block">This is sample of text field</span>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll Number</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="rollno_txt" runat="server" class="form-control"></asp:TextBox>
                                                <%--<input type="text" class="form-control"/>--%>
                                            </div>                                            
                                            <%--<span class="help-block">This is sample of text field</span>--%>
                                        </div>
                                    </div>
                                
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="1st" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2nd" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3rd" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Fourth" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Fifth" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="Sixth" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="Seventh" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="Eighth" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="Nineth" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="Tenth" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="+One" Value="11"></asp:ListItem>
                                        <asp:ListItem Text="+Two" Value="12"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server">
                                        <asp:ListItem Text="A" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="C" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="D" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="E" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="F" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="G" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="H" Value="8"></asp:ListItem>
                                        <asp:ListItem Text="I" Value="9"></asp:ListItem>
                                        <asp:ListItem Text="J" Value="10"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                    </div>

                                     

                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Review Date</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                <asp:TextBox ID="reviewdate_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="reviewdate_txt" />
                                                <%--<input type="text" class="form-control datepicker" value="2014-11-01">--%>                                            
                                            </div>
                                            <%--<span class="help-block">Click on input field to get datepicker</span>--%>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Review</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="review_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                <%--<input type="text" class="form-control"/>--%>
                                            </div>                                            
                                            <%--<span class="help-block">This is sample of text field</span>--%>
                                        </div>
                                    </div>

                                    <asp:GridView ID="GridView2" runat="server" 
                                        onpageindexchanging="GridView2_PageIndexChanging">
                                    </asp:GridView>

                                    </div>
                                   </asp:Panel>

                                <div class="panel-footer">
                                    <button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>
                                </div>
                            </div>
                    </div>

</asp:Content>

