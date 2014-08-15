<%@ page title="" language="C#" masterpagefile="~/visitor/Main.master" autoeventwireup="true" inherits="_Default, App_Web_yuqlxz4l" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        input[type='text']
        {
            width: 250px;
            height: 20px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
            font-size: large;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <h2>
            Our <span>Contacts</span></h2>
        <div class="address">
            <strong>Tops Technologies</storng><br />
                <address>
                    <p>
                        4th Floor Amruta Arcade,Nr Maninagar Station,Ahmedabad, GUJARAT-380008
                        <br />
                        Mobile:099 74 863333</p>
                </address>
                <div class="extra-wrap">
                    <iframe width="400" height="200" frameborder="0" scrolling="no" marginheight="0"
                        marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Tops+Technologies,+Maninagar,+Ahmedabad,+Gujarat&amp;aq=0&amp;oq=tops+maninagar&amp;sll=23.020346,72.579743&amp;sspn=0.391185,0.441513&amp;ie=UTF8&amp;hq=Tops+Technologies,&amp;hnear=Maninagar,+Ahmedabad,+Gujarat&amp;ll=22.997617,72.610058&amp;spn=0.007005,0.008386&amp;t=m&amp;output=embed">
                    </iframe>
                </div>
        </div>
        <h2>
            Contact <span>Form</span></h2>
        <div style="width: 500px; height: auto;  border-radius: 20px 10px 20px 10px;
            padding: 20px; margin-bottom: 5%; box-shadow: 0px 0px 10px black;">
            Your Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtvname" runat="server" Width="300px" required></asp:TextBox>
            <br />
            <br />
             Your Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtvmail" runat="server" Width="300px" required></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Your Message:&nbsp;
            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Columns="10" Rows="5"
               CssClass="txtarea" Width="300" Height="100" required></asp:TextBox>
        </div>
        <div class="alignright">
            <asp:Button ID="Button1" runat="server" Text="Send Your Message!!!" 
                CssClass="btn" Width=200 onclick="Button1_Click"/></div>
    </div>
    </strong>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="Default.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li class="current"><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
