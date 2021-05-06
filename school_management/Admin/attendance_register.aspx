<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="attendance_register.aspx.cs" Inherits="Admin_attendance_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Student Attandence</strong></h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">
                                
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
                                        <label class="col-md-3 col-xs-12 control-label">Student ID</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:DropDownList ID="sid_ddl" class="form-control select" runat="server">
                                        
                                        </asp:DropDownList>
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                     <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Student Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="name_txt" runat="server" class="form-control"></asp:TextBox>
                                              
                                            </div>                                            
                                           
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Roll Number</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="rollno_txt" runat="server" class="form-control"></asp:TextBox>
                                              
                                            </div>                                            
                                          
                                        </div>
                                    </div>

                                    <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Attandence Date</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                
                                                <div style="font-size:medium; color:Blue; text-align:center;">Today’s Date : <%=strCurrntMonthYear %></div>
                                                 <asp:GridView ID="gvCalander"  Font-Size="Smaller" Font-Names="verdana, arial" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center"
                                                 RowStyle-BackColor="gray" AlternatingRowStyle-BackColor="Aqua" CellPadding="5"  CellSpacing="5" runat="server" ShowHeader="false" AutoGenerateColumns="false" OnRowDataBound="gvCalander_RowDataBound">
                                                 <Columns>
                                                 <asp:BoundField DataField="AutoID" HeaderText="Days" />
                                                 <asp:BoundField DataField="DaysName" HeaderText="Name" />
                                                 <asp:BoundField DataField="Date" HeaderText="Name" />
                                                 <asp:TemplateField>
                                                 <ItemTemplate>
                                                 <asp:TextBox ID="txtRemarks" runat="server" Text="Remarks" Font-Size="8" onfocus="if(this.value=='Remarks'){this.value=''}" onblur="if(this.value==''){this.value='Remarks'}" ></asp:TextBox>
                                                 </ItemTemplate>
                                                 </asp:TemplateField>
                                                 <asp:TemplateField>
                                                 <ItemTemplate>
                                                 <asp:CheckBox ID="chkMark" runat="server" />
                                                 </ItemTemplate>
                                                 </asp:TemplateField>
                                                 </Columns>
                                                     <RowStyle BackColor="Gray" HorizontalAlign="Center" ForeColor="White" />
                                                     <HeaderStyle HorizontalAlign="Center" />
                                                     <AlternatingRowStyle BackColor="Aqua" ForeColor="White" />
                                                 </asp:GridView>
                                                 <div>
                                                 <div style="text-align:center;">
                                                 <asp:Button ID="btnAddAttendence" runat="server" Text="Add" OnClick="btnAddAttendence_Click" /> 
                                                 <asp:Button ID="btnReset" runat="server" Text="Reset" />
                                                 </div>
                                                 </div>
                                            </div>
                                            
                                    </div>

                                   
                                    </div>

                                   </asp:Panel>
                                 
                                <asp:Panel ID="Panel2" runat="server" Visible="false">
                                    <asp:GridView ID="GridView1" runat="server">
                                    </asp:GridView>

                                </asp:Panel>

                                <div class="panel-footer">
                                    <button class="btn btn-default">Clear Form</button>                                    
                                    <button class="btn btn-primary pull-right">Submit</button>
                                </div>
                            </div>
                    </div>

</asp:Content>

