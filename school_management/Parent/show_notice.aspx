<%@ Page Title="" Language="C#" MasterPageFile="~/Parent/parentMaster.master" AutoEventWireup="true" CodeFile="show_notice.aspx.cs" Inherits="Parent_show_notice" EnableEventValidation="false"%>

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

    
    <asp:Label ID="Label_id" runat="server" Text="" Visible="false"></asp:Label>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>Noticeboard</strong></h3>
                                    <ul class="panel-controls">
                                       <%-- <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>--%>
                                    </ul>
                                </div>
                                <div class="panel-body">
                                
                                    
                                   <%--
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Subject</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="subject_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                                
                                            </div>                                            
                                           
                                        </div>
                                    </div>--%>

                                   <%-- <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Notice</label>
                                        <div class="col-md-6 col-xs-12">                                            
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                <asp:TextBox ID="notice_txt" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                              
                                            </div>                                            
                                            
                                        </div>
                                    </div>--%>

                                   <%--   <div class="form-group">                                        
                                        <label class="col-md-3 col-xs-12 control-label">Date of Notice</label>
                                        <div class="col-md-6 col-xs-12">
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                <asp:TextBox ID="noticedate_txt" runat="server" class="form-control"></asp:TextBox>
                                                
                                                
                                                                                           
                                            </div>
                                          
                                        </div>
                                    </div>--%>
                                  

                                </div>
                                   <%--<div class="panel-footer">
                                        
                                        <asp:Button ID="submit_btn" runat="server" class="btn btn-primary pull-right" Text="Submit"  />
                                        <asp:Button ID="upd_btn" runat="server" class="btn btn-primary pull-right" Text="Update" Visible="false" />
                                  
                                </div>--%>
                                <div class="panel-footer">
                                       
                                        <asp:Button ID="Export_excel" runat="server" class="btn btn-primary " 
                                            Text="Export to Excel" onclick="Export_excel_Click" />
                                        
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
                                            <asp:Label ID="Lbl_id" Visible="false" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_subject" runat="server"  Text='<%#Eval("subject") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Notice">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_notice" runat="server" Text='<%#Eval("notice") %>' Height="50px"  ></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                   <%-- <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btn_edit" runat="server" class="btn btn-default btn-rounded btn-sm" 
                                                Style="visibility: visible;"><span class="fa fa-pencil"></span></asp:LinkButton>
                                            <asp:LinkButton ID="btn_delete" runat="server" class="btn btn-danger btn-rounded btn-sm" Style="visibility: visible;" OnClientClick="return confirm('Are you sure you want to delete this record?');" ><span class="fa fa-times"></span></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>--%>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                            </div>
                            </div>

</asp:Content>



