<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_0jcyvcma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <h2>
            Site <span>Map</span></h2>
        
        <ul class="sitemap">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="AboutUs.aspx">About Us</a></li>
            <li><a href="Blog.aspx">Blog</a> </li>
            <li><a href="ContactUs.aspx">Contact Us</a></li>
            <li><a href="Sitemap.aspx">Site Map</a></li>
        </ul>
       
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="../user side/Home.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last current"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
