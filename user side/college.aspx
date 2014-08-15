<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_hzfj0omj" %>

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
            <li><a href="#tabs-1">College Search</a></li>
        </ul>
        <div id="tabs-1">
            <p>
                <strong>Search Here From Different Colleges...</strong></p>
            <asp:DropDownList ID="drpclg" runat="server" CssClass="select">
            </asp:DropDownList>
            <asp:DropDownList ID="drpcity" runat="server" CssClass="select">
            </asp:DropDownList>
            <asp:Button ID="btnclg" runat="server" Text="Search" OnClick="btnclg_Click" />
            <br />
            <br />
            <asp:DataList ID="datalistcol" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 400px; height: auto; border: 2px solid silver; padding: 10px;
                        border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 8px;
                        color: Green; margin-right: 25px; margin-top: 5%; margin-left: 10%; background-color: transparent;">
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="Home.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
