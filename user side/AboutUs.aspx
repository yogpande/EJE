<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_ovx4q203" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <h2>
            About <span>Website</span></h2>
        <div class="img-box">
            <span class="txt1">'E' for Education</span><br />
            We provide college searching facility to the users with different searching criteria.
            Anyone can search colleges easily according to field of education. Search can also
            provide according to city.
        </div>
        <p class="p0">
            <span class="txt1">'J' for Job</span>
            <br />
            We provide Job searching facility to the users with different searching criteria.Anyone
            can search his dream job here...</p>
        <br />
        <br />
        <p class="p0">
            <span class="txt1">'E' for Exams</span><br />
            We provide latest exam materials for our users in diffrent subjects...
        </p>
    </div>
    <br />
    <br />
    <br />
    <h2>
        If you Think Some improvements in our service, please send your feedback to us....</h2>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="../user side/Home.aspx" class="m1">Home</a></li>
        <li class="current"><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
