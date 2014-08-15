<%@ page language="C#" autoeventwireup="true" inherits="visitor_rss, App_Web_2dbdqjna" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <div id="newsfeeds">
                    <br />
                </div>
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="http://zeenews.india.com/rss/india-national-news.xml"
                    XPath="rss/channel/item [position()<=10]" CacheDuration="60"></asp:XmlDataSource>
                <div style="width: 500px; height: auto; background-color: Black; padding: 1px; color: Red;">
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource1" BorderColor="#000000"
                        BackColor="#000000" BorderWidth="0px" CellPadding="10" Width="100%" CellSpacing="0">
                        <ItemTemplate>
                            <br />
                            <br />
                            <b>
                                <%#XPath("title") %></b>&nbsp; <a href="<%# XPath("link") %>">
                                    <asp:HyperLink ID="HyperLink1" runat="server" Text="[Read More...]" NavigateUrl='<%# XPath("link") %>'
                                        Target="_blank" Font-Names="Verdana" Font-Size="10px" CssClass="link" ToolTip='<%#XPath("title") %>'></asp:HyperLink></a>
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
                                    CssClass="link" ToolTip='<%#XPath("title") %>'></asp:HyperLink><br />
                            <asp:Label ID="Label3" runat="server" Text='<%# XPath("pubDate") %>' ForeColor="black"
                                Font-Bold="false" Font-Names="Tahoma" Font-Size="11px"></asp:Label><br />
                            <span>
                                <%# XPath("description") %></span>
                          <br />
                        </AlternatingItemTemplate>
                        <ItemStyle Font-Names="Tahoma" Font-Size="11px" BackColor="White" ForeColor="#565656"
                            HorizontalAlign="Justify"></ItemStyle>
                        <FooterStyle BackColor="White" />
                        <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle Font-Bold="True" />
                    </asp:DataList>
                </div>
                </div>
            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
