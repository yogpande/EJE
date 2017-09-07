<%@ page title="" language="C#" masterpagefile="~/visitor/Main.master" autoeventwireup="true" inherits="_Default, App_Web_0eg3bryl" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ajcls .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight: bolder;
            display: block;
            margin: 0 0 15px 0;
        }
        .ajcls .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #008cc4;
            padding-left: 10px;
            margin-right: 13px;
            font-size: 15px;
            font-weight: bold;
            border: 1px solid Silver;
            box-shadow: inset 0px 0px 10px silver;
        }
        .ajcls .ajax__tab_header .ajax__tab_inner
        {
            border-color: #666;
            color: #008cc4;
            padding: 7px 15px 10px 0px;
        }
        .ajcls .ajax__tab_hover .ajax__tab_outer
        {
            background-color: #0A6BE5;
        }
        .ajcls .ajax__tab_hover .ajax__tab_inner
        {
            color: #fff;
        }
        .ajcls.ajax__tab_active .ajax__tab_outer
        {
            border-bottom-color: #ffffff;
            background-color: #d7d7d7;
        }
        .ajcls .ajax__tab_active .ajax__tab_inner
        {
            color: Orange;
            border-color: #333;
        }
        .ajcls .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 10pt;
            background-color: transparent;
            padding: 10px;
            border: solid 1px Silver;
            border-radius: 10px;
            border-top-color: #ffffff;
            box-shadow: inset 0px 0px 10px silver;
        }
        .bgcls
        {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }
    </style>
    
    <!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PTRBQCB');</script>
<!-- End Google Tag Manager -->
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PTRBQCB"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
    
    
    
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" CssClass="ajcls">
        <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="College Search">
            <ContentTemplate>
                <p>
                    <strong>Search Here From Different Colleges...</strong></p>
                <asp:DropDownList ID="drpclg" runat="server" CssClass="select">
                </asp:DropDownList>
                <asp:DropDownList ID="drpcity" runat="server" CssClass="select">
                </asp:DropDownList>
                <asp:Button ID="btnclg" runat="server" Text="Search" OnClick="btnclg_Click" />
                <br />
                <br />
                <asp:DataList ID="datalistcol" runat="server" BackColor="Silver" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                    <ItemTemplate>
                        <div style="width: 400px; height: auto; border: 2px solid silver; padding: 10px;
                            border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 8px;
                            color: Green; margin-right: 25px; margin-left: 10%; background-color: transparent;">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Building_icon_by_Artdesigner.lv_.png"
                                CssClass="Imgcls" />
                            College:<asp:Label ID="Label1" runat="server" Text='<%# bind("collegename") %>' CssClass="lbl"></asp:Label>
                            <br />
                            <br />
                            Address:
                            <asp:Label ID="Label3" runat="server" Text='<%# bind("colAdd") %>' CssClass="lbl"></asp:Label>
                            <br />
                            <br />
                            Website:<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# bind("colWebsite") %>'
                                Target="_blank">Go Official Site</asp:HyperLink>
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
            </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Job Search">
            <ContentTemplate>
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
                <asp:Button ID="btnjob" runat="server" Text="Search" OnClick="btnjob_Click" />
                <br />
                <br />
                <asp:DataList ID="datalistjob" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnItemCommand="datalistjob_ItemCommand">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                    <ItemTemplate>
                        <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                            border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                            color: Green;">
                            Post:<asp:Label ID="Label2" runat="server" Text='<%# bind("jobname") %>' CssClass="lbl"></asp:Label><br />
                            <br />
                            Location:<asp:Label ID="Label6" runat="server" Text='<%# bind("jobLoc") %>' CssClass="lbl"></asp:Label>
                            <div style="width: 70px; height: 30px; margin-top: -28px; float: right;">
                                <asp:LinkButton ID="btnpopup" runat="server" CommandName="Apply" CommandArgument='<%# bind("jobid") %>'>More Info</asp:LinkButton></div>
                            <br />
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
                <asp:Button ID="Button1" runat="server" Text="Button" Style="display: none;" />
                <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" TargetControlID="Button1"
                    PopupControlID="Panel2" CancelControlID="btncancel" BackgroundCssClass="bgcls"
                    DynamicServicePath="" Enabled="True">
                </asp:ModalPopupExtender>
                <asp:Panel ID="Panel2" runat="server" Width="55%" Height="200px" Style="display: none;
                    margin-left: 10%;">
                    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC"
                        BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                        <ItemTemplate>
                            <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                                border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                                color: Green;">
                                Post:<asp:Label ID="Label2" runat="server" Text='<%# bind("jobname") %>' CssClass="lbl"></asp:Label><br />
                                <br />
                                Location:<asp:Label ID="Label6" runat="server" Text='<%# bind("jobLoc") %>' CssClass="lbl"></asp:Label><br />
                                <br />
                                Detail:
                                <asp:Label ID="Label4" runat="server" Text='<%# bind("jobdetail") %>' CssClass="lbl"></asp:Label>
                                <br />
                                <br />
                                Salary:
                                <asp:Label ID="Label5" runat="server" Text='<%# bind("salary") %>' CssClass="lbl"></asp:Label>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    </asp:DataList>
                    <center>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" /></center>
                </asp:Panel>
            </ContentTemplate>
        </asp:TabPanel>
    </asp:TabContainer>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div id="clg">
        <h2>
            TOP<span> Colleges</span></h2>
        <ul class="col1">
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#bind("streamname") %>' CommandArgument='<%#bind("streamname") %>'
                        CommandName="college"></asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:ListView>
        </ul>
        <asp:Button ID="Button3" runat="server" Text="Button" Style="display: none;" />
        <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" TargetControlID="Button3"
            PopupControlID="Panel3" CancelControlID="btncancell" BackgroundCssClass="bgcls"
            DynamicServicePath="" Enabled="True">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel3" runat="server" Width="570px" Height="200px" Style="display: none;
            padding: 1% 0 0 7%; height: 500px; overflow: scroll;" BackColor="White">
            <asp:ImageButton ID="btncancell" runat="server" ImageUrl="~/images/closebtn.jpeg"
                Width="80" Height="40" Style="float: right;" /><br />
            <br />
            <asp:DataList ID="DataList3" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                        border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                        color: Green;">
                        College Name:<asp:Label ID="Label2" runat="server" Text='<%# bind("collegename") %>'
                            CssClass="lbl"></asp:Label><br />
                        <br />
                        Locatio:<asp:Label ID="Label6" runat="server" Text='<%# bind("colAdd") %>' CssClass="lbl"></asp:Label><br />
                        <br />
                        Website:
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("colWebsite") %>' CssClass="lbl"></asp:Label>
                        <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
        </asp:Panel>
    </div>
    <div id="job">
        <h2>
            Jobs<span> In India</span></h2>
        <ul class="col2">
            <asp:ListView ID="ListView2" runat="server" OnItemCommand="ListView2_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="ujob" CommandArgument='<%#bind("jobtype") %>'
                        Text='<%#bind("jobtype") %>'></asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:ListView>
        </ul>
        <asp:Button ID="Button2" runat="server" Text="Button" Style="display: none;" />
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button2"
            PopupControlID="Panel1" CancelControlID="btncancell" BackgroundCssClass="bgcls"
            DynamicServicePath="" Enabled="True">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" Width="570px" Height="200px" Style="display: none;
            padding: 1% 0 0 7%; height: 500px; overflow: scroll; background-color: White;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/closebtn.jpeg"
                Width="80" Height="40" Style="float: right;" /><br />
            <br />
            <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                        border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                        color: Green;">
                        Job Name:<asp:Label ID="Label2" runat="server" Text='<%# bind("jobname") %>' CssClass="lbl"></asp:Label><br />
                        <br />
                        <%-- Job Detail:<asp:Label ID="Label6" runat="server" Text='<%# bind("jobdetail") %>' CssClass="lbl"></asp:Label><br />
                        <br />--%>
                        Location:
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("jobLoc") %>' CssClass="lbl"></asp:Label>
                        <br />
                        <br />
                        <%--  Salary
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("salary") %>' CssClass="lbl"></asp:Label>--%>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
        </asp:Panel>
    </div>
    <div id="Div1">
        <h3>
            E<span> materials</span></h3>
         <ul class="col2">
            <asp:ListView ID="ListView3" runat="server" 
                 onitemcommand="ListView3_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="material" CommandArgument='<%#bind("subid") %>'
                        Text='<%#bind("subname") %>'></asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:ListView>
        </ul>
        <asp:Button ID="Button4" runat="server" Text="Button" Style="display: none;" />
        <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="Button2"
            PopupControlID="Panel4" CancelControlID="btncancell" BackgroundCssClass="bgcls"
            DynamicServicePath="" Enabled="True">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel4" runat="server" Width="570px" Height="200px" Style="display: none;
            padding: 1% 0 0 7%; height: 500px; overflow: scroll; background-color: White;">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/closebtn.jpeg"
                Width="80" Height="40" Style="float: right;" /><br />
            <br />
            <asp:DataList ID="DataList4" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                        border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                        color: Green;">
                        Material<asp:Label ID="Label2" runat="server" Text='<%# bind("material") %>' CssClass="lbl"></asp:Label><br />
                        <br />
                        </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li class="current"><a href="Default.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="member">
        <label style="color: #128965">
            User Name:</label>
        <asp:TextBox ID="txtname" runat="server" Width="150"></asp:TextBox>
        <br />
        <label style="color: #128965">
            Password:</label>
        <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <center>
            <asp:Button ID="btnlogin" runat="server" CssClass="btn" Text="Login" OnClick="btnlogin_Click"
                Width="70"></asp:Button>
        </center>
        <br />
        <a href="forgotpassword.aspx">Forgot Password???</a>
        <br />
        Free Account <a href="register.aspx">Register</a> Here
    </div>
</asp:Content>
