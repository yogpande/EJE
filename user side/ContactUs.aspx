<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_t2xvarqo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <h2>
            Our <span>Contacts</span></h2>
        <div class="address">
            <strong>Yogesh Pande</storng><br />
                <address>
                    <p>
                       Yogesh Pande</p>
                </address>
                <div class="extra-wrap">
                   
                </div>
        </div>
        <h2>
            Contact <span>Form</span></h2>
        <div style="width: 500px; height: auto; border: 1px solid Black; border-radius: 20px 10px 20px 10px;
            padding: 20px; margin-bottom: 15px; box-shadow: 10px 10px 20px black;">
            Your Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtuname" runat="server" Width="300px" ReadOnly="true"></asp:TextBox>
            <br />
            <br />
             <%--Your Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtvemail" runat="server" Width="300px"></asp:TextBox>
            <br />
            <br />--%>
            Your Message:
            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" CssClass="txtarea" Columns="10"
                Rows="5" Width="300px" required></asp:TextBox>
        </div>
         <div class="alignright">
            <asp:Button ID="Button1" runat="server" Text="Send Your Message!!!" 
                CssClass="btn" Width=200 onclick="Button1_Click" /></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="../user side/Home.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li class="current"><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
