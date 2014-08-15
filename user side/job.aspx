<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_hvvays23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#slider1').tinycarousel();
        });

        $(function () {
            $("#tabs").tabs({
                collapsible: true
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-2">Job Search</a></li>
        </ul>
        <div id="tabs-2">
           <p>
                    <strong>Search Here From Your Dream Job...</strong></p>
                <asp:DropDownList ID="drpjtype" runat="server" CssClass="select">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Animation and Multimedia</asp:ListItem>
                    <asp:ListItem>Arts and Science</asp:ListItem>
                    <asp:ListItem>Banking and Finance</asp:ListItem>
                    <asp:ListItem>Certification Course</asp:ListItem>
                    <asp:ListItem>Computers and IT</asp:ListItem>
                    <asp:ListItem>Education, Teaching</asp:ListItem>
                    <asp:ListItem>Engineering and Technology</asp:ListItem>
                    <asp:ListItem>Fashion and Design</asp:ListItem>
                    <asp:ListItem>Hotel Management</asp:ListItem>
                    <asp:ListItem>Law, Legal</asp:ListItem>
                    <asp:ListItem>Management and Business</asp:ListItem>
                    <asp:ListItem>Media, Films and Mass Communication</asp:ListItem>
                    <asp:ListItem>Medical</asp:ListItem>
                    <asp:ListItem>Nursing</asp:ListItem>
                    <asp:ListItem>Travel, Tourism and Hospitality</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dpstate" runat="server" CssClass="select">
                </asp:DropDownList>
                <asp:Button ID="btnjob" runat="server" Text="Search" 
                onclick="btnjob_Click" />
                <br />
                <br />
                <asp:DataList ID="datalistjob" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="White" ForeColor="#003399" />
                    <ItemTemplate>
                         <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                            border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                            color: Green;">
                            Post:<asp:Label ID="Label2" runat="server" Text='<%# bind("jobname") %>' CssClass="lbl"></asp:Label><br />
                            <br />
                            Location:<asp:Label ID="Label6" runat="server" Text='<%# bind("jobLoc") %>' CssClass="lbl"></asp:Label><br /><br />
                            <%--<div style="width: 70px; height: 30px; margin-top:-28px; float: right;">
                                <asp:LinkButton ID="LinkButton2" runat="server">Apply</asp:LinkButton></div>--%>
                            Detail:
                            <asp:Label ID="Label4" runat="server" Text='<%# bind("jobdetail") %>' CssClass="lbl"></asp:Label>
                            <br />
                            <br />
                            Salary:
                            <asp:Label ID="Label5" runat="server" Text='<%# bind("salary") %>' CssClass="lbl"></asp:Label>
                            
                            <br />
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="Home.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
