<%@ page title="" language="C#" masterpagefile="~/visitor/Main.master" autoeventwireup="true" inherits="Default2, App_Web_yuqlxz4l" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="inside">
        <h2>
            Articles</h2>
        <ul class="articles">
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://campustechnology.com/rss-feeds/all-articles.aspx"
                XPath="rss/channel/item [position()<=10]" CacheDuration="60"></asp:XmlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" BorderColor="gray"
                BorderWidth="0px" CellPadding="10">
                <ItemTemplate>
                    <br />
                    <br />
                    <%--http://zeenews.india.com/rss/india-national-news.xml --%>
                    <b style="color:Maroon;">
                        <%#XPath("title") %></b>&nbsp; <a href="<%# XPath("link") %>" style="font-size: large;
                            color: #800000">
                            <asp:HyperLink ID="HyperLink1" runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                                Target="_blank" Font-Names="Verdana" Font-Size="10px" ToolTip='<%#XPath("title") %>'></asp:HyperLink></a>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black"
                        Font-Bold="false" Font-Names="Tahoma" Font-Size="11px"></asp:Label>
                    <br />
                    <span>
                        <%# XPath("description") %></span><br />
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <br />
                    <br />
                    <b>
                        <%#XPath("title") %></b> &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Text="[Read More...]"
                            NavigateUrl='<%# XPath("link") %>' Target="_blank" Font-Names="Verdana" Font-Size="10px"
                            ToolTip='<%#XPath("title") %>'></asp:HyperLink><br />
                    <asp:Label ID="Label3" runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black"
                        Font-Bold="false" Font-Names="Tahoma" Font-Size="11px"></asp:Label><br />
                    <span>
                        <%# XPath("description") %></span>
                    <br />
                </AlternatingItemTemplate>
                <ItemStyle Font-Names="verdana" Font-Size="12px" BackColor="Transparent" ForeColor="black"
                    HorizontalAlign="Justify"></ItemStyle>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="Maroon" />
                <HeaderStyle Font-Bold="True" BackColor="#003399" ForeColor="#CCCCFF" />
            </asp:DataList>
      
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="Default.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li class="current"><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
