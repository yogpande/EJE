<%@ page title="" language="C#" masterpagefile="~/visitor/MasterPage.master" autoeventwireup="true" inherits="visitor_Default2, App_Web_goky2i3w" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <ul>
        <li><a href="Default.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="frm1" runat="server">
    <div class="inside">
        <h2>
            Forgot Password</h2>
        <br />
        <br />
        <asp:Panel ID="panel1" runat="server" Visible="true">
            <table>
                <tr>
                    <td>
                        <h4>
                            Enter Your Email ID:</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" Width="250px" Height="30px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Enter" Style="width: 100px; height: 30px;
                            margin-top: -15px;" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="panel2" runat="server" Visible="false">
            <table>
                <tr>
                    <td>
                        <h4>
                            Security Question:</h4>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpsecq" runat="server" CssClass="select">
                            <asp:ListItem>Who is your favorite Author?</asp:ListItem>
                            <asp:ListItem>Where is your birth place?</asp:ListItem>
                            <asp:ListItem>Who is favorite school Teacher?</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <h4>
                            Answer:</h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtans" runat="server" Width="250px" Height="30px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
</asp:Content>
