<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parentMaster.master" AutoEventWireup="true" CodeFile="show_event.aspx.cs" Inherits="Parent_show_event" EnableEventValidation="false"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table,tr,td,th
{
text-align:center;    
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="form-horizontal">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Label ID="Label_id" runat="server" Text="Label" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Event View</strong></h3>
                                    <ul class="panel-controls">
                                      <%--  <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
         <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">

                               <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Subject Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="subject_txt" runat="server" class="form-control"></asp:TextBox>
                                              
                                            </div>                                            
                                          
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
                                    </div>--%>
                       
                                    <%--<div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Teacher Name</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="teacher_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                            </div>                                            
                                         
                                        </div>
                                    </div>--%>

                                    </div>
                                   </asp:Panel>

                                <div class="panel-footer">
                                            
                                            <asp:Button ID="export_excel" runat="server" class="btn btn-primary " 
                                                Text="Export to Excel" onclick="export_excel_Click"  />
                                           
                                </div>

                                <div class="panel-body panel-body-table">
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                             class="table table-bordered table-striped table-actions" 
                            AllowPaging="true" PageSize="10" 
                                onpageindexchanging="GridView1_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField>
                                        <HeaderTemplate>
                                            S.No.</HeaderTemplate>
                                        <ItemTemplate>  
                                            <%#Container.DataItemIndex + 1 %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("event_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subject Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_fname" runat="server" Text='<%#Eval("event_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Notice">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_lname" runat="server" Text='<%#Eval("description") %>' Height="85px" Width="160px"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                     <asp:TemplateField HeaderText="Image">
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server"  ImageUrl='<%#Eval("photo") %>' Height="50px" Width="50px"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sname" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                    </div>

</asp:Content>



