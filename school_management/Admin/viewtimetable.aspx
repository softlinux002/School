<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="viewtimetable.aspx.cs" Inherits="Admin_viewtimetable" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
    
                <div class="form-horizontal">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title"><strong>View Time Table</strong></h3>
                                    <ul class="panel-controls">
                                    </ul>
                                </div>
                                <asp:Panel ID="Panel1" runat="server">
                                <div class="panel-body">
                                   <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Batch</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="Batch_dll" class="form-control select" 
                                                runat="server"                                                                                                      
                                                AutoPostBack="true" 
                                                onselectedindexchanged="Batch_dll_SelectedIndexChanged"  >
                                        </asp:DropDownList>     
                                        </div>
                                    </div>     
                                    
                                      <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Stream</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="streamddl" class="form-control select" runat="server" >                                                                                                    
                                        </asp:DropDownList>     
                                        </div>
                                    </div>     
                                   
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Class</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="class_ddl" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="class_ddl_SelectedIndexChanged">
                                       
                                        </asp:DropDownList>     
                                        </div>
                                    </div>   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Section</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="section_ddl" class="form-control select" runat="server">
                                       
                                        </asp:DropDownList>     
                                        </div>
                                    </div>

                                   

                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-12 control-label">Day</label>
                                        <div class="col-md-6 col-xs-12"> 
                                        <asp:DropDownList ID="DropDownList2" class="form-control select" runat="server" AutoPostBack="true"
                                                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem Text="Select Day" Value="0"></asp:ListItem>
                                        <asp:ListItem Text="Sunday" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Monday" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="Tuesday" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="Wednesday" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="Thrusday" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="Friday" Value="6"></asp:ListItem>
                                        <asp:ListItem Text="Saturday" Value="7"></asp:ListItem>
                                        </asp:DropDownList>     
                                        </div>
                                    </div>

                                   
                                                                      

                                    </div>
                                   </asp:Panel>

                                <div class="panel-footer">
                                                                  
                                    
                                      
        <asp:GridView ID="GridView_sun" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridView_mon" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridView_tue" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridView_wed" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
        
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

     <asp:GridView ID="GridView_thru" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
        
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridView_fri" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
        
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
           <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:GridView ID="GridView_sat" runat="server" BackColor="White" AutoGenerateColumns="false"
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" width="100%" Visible="false"
            ForeColor="Black" GridLines="Horizontal">
        <Columns>
         <asp:TemplateField HeaderText="pk_id" Visible="false">
        <ItemTemplate>
            <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval("pk_id") %>'></asp:Label>
           
        </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Sunday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Monday">
        <ItemTemplate>
           
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Tuesday">
        <ItemTemplate>
        
            </ItemTemplate>
        </asp:TemplateField>
       

         <asp:TemplateField HeaderText="Wednesday">
        <ItemTemplate>
          
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Thrusday">
        <ItemTemplate>
            
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Friday">
        <ItemTemplate>
         
        </ItemTemplate>
        </asp:TemplateField>


         <asp:TemplateField HeaderText="Saturday">
        <ItemTemplate>
           <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
            <asp:Label ID="Label2" runat="server" Text='<%#Eval("startingtime") %>'></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%#Eval("endingtime") %>'></asp:Label>
        </ItemTemplate>
        </asp:TemplateField>

        </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
                                  

                                </div>
                            </div>
                    </div>
</ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

