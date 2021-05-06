<%@ Page Title="" Language="C#" MasterPageFile="~/Library/MasterPage.master" AutoEventWireup="true" CodeFile="library_dashboard.aspx.cs" Inherits="Library_library_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- PAGE TITLE -->
    <div class="page-title">
        <h2 style="font-family:Cursive;">
            <span class="fa fa-arrow-circle-o-left"></span>Dashboard</h2>
    </div>
    <!-- END PAGE TITLE -->
    <!-- PAGE CONTENT WRAPPER -->
    <div class="page-content-wrap">
        <!-- TILES -->
        <asp:Panel ID="Panel1" runat="server">
            <div class="row">
                <div class="col-md-2">
                    <a href="librarycard_generate.aspx" class="tile tile-primary tile-valign">
                        <img src="../dash/Library card.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Generate Card</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-globe"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="createcupboard.aspx" class="tile tile-primary tile-valign">
                      <img src="../dash/cupboard.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Cupboard</p>
                        <div class="informer informer-default dir-bl">
                           <%-- <span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="book_vendor.aspx" class="tile tile-primary tile-valign">
                      <img src="../dash/man icon.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Vendor</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                <div class="col-md-2">
                    <a href="addbooks.aspx" class="tile tile-primary tile-valign">
                      <img src="../dash/book.jpg" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

                 <div class="col-md-2">
                    <a href="issuebook.aspx" class="tile tile-primary tile-valign">
                      <img src="../dash/Issue Book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Issue Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-laptop"></span>--%>
                        </div>
                    </a>
                </div>

               

            </div>
            <div class="row">
              <div class="col-md-2">
                    <a href="Cupboard_shelf.aspx" class="tile tile-primary tile-valign">
                    <img src="../dash/cupboard shelf.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                           Cupboard-Self</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="Return_book.aspx" class="tile tile-primary tile-valign">
                    <img src="../dash/Return Book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Return Books</p>
                        <div class="informer informer-default dir-bl">
                            <%--<span class="fa fa-calendar"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="SearchBook.aspx" class="tile tile-primary tile-valign">
                     <img src="../dash/search book.png" height="80px" width="90px" onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                    <p style="font-size: 20px;font-family:Cursive;">Search Book</p>
                        <div class="informer informer-danger dir-bl">
                            <%--<span class="fa fa-caret-down"></span>--%>
                        </div>
                    </a>
                </div>
                <div class="col-md-2">
                    <a href="changepass.aspx" class="tile tile-primary tile-valign">
                        <img src="../dash/pass.jpg" height="80px" width="90px"onkeydown="return DisableControlKey(event)" onmousedown="return DisableControlKey(event)"/>
                        <p style="font-size: 20px;font-family:Cursive;">
                            Password</p>
                        <div class="informer informer-danger dir-bl">
                        </div>
                    </a>
                </div>

               

            </div>
           
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-md-2">
                            <a href='<%#Eval("page_url")%>' class="tile tile-warning tile-valign">
                                <p style="font-size: 19px;">
                                    <%#Eval("page_name")%></p>
                                <div class="informer informer-default dir-bl">
                                    <span class="fa fa-globe"></span>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>
       
        <!-- END WIDGETS -->
    </div>
    <!-- END PAGE CONTENT WRAPPER -->
</asp:Content>

