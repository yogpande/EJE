<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="visitor_Default2, App_Web_hzfj0omj" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"
        type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {
            $("#tabs").tabs({
                collapsible: true
            });
        });
    </script>
    <script type="text/javascript">
        function download(file) {
            window.location = file;

        }
    </script>
    
    

    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    
    
    <div id="tabs">
        <marquee behaviour="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">
        <img src="../images/cbs-oct-159x96.gif" />
        <img src="../images/isbm-june-159x96.gif" />
        <img src="../images/isbm-oct-159x96.gif" />
        <img src="../images/logo-sikkimmanipal.png" width="159" height="96" />
        <img src="../images/logo-sicoms.png" width="159" height="96"/>
        <img src="../images/logo-NIIT.gif" width="159" height="96"/>
        <img src="../images/logo-cadd.png" width="159" height="96" />
        <img src="../images/iipm-logo.png" width="159" height="96"/>
        <img src="../images/fostiima-logo.gif" width="159" height="96"/>
        </marquee>
    </div>
    <br />
    <br />
    <div id="clg">
        <h2>
            TOP<span> Colleges</span></h2>
        <ul class="col1">
            <asp:ListView ID="ListView1" runat="server" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="uclg" CommandArgument='<%#bind("streamname") %>'
                        Text='<%#bind("streamname") %>'></asp:LinkButton>
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
        <asp:Button ID="Button1" runat="server" Text="Button" Style="display: none;" />
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="Button1"
            PopupControlID="Panel1" CancelControlID="btncancell" BackgroundCssClass="bgcls"
            DynamicServicePath="" Enabled="True">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel1" runat="server" Width="570px" Height="200px" Style="display: none;
            padding: 1% 0 0 7%; height: 500px; overflow: scroll; background-color: White;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/closebtn.jpeg"
                Width="80" Height="40" Style="float: right;" /><br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC"
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
                        Job Detail:<asp:Label ID="Label6" runat="server" Text='<%# bind("jobdetail") %>'
                            CssClass="lbl"></asp:Label><br />
                        <br />
                        Location:
                        <asp:Label ID="Label4" runat="server" Text='<%# bind("jobLoc") %>' CssClass="lbl"></asp:Label>
                        <br />
                        <br />
                        Salary
                        <asp:Label ID="Label1" runat="server" Text='<%# bind("salary") %>' CssClass="lbl"></asp:Label>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
        </asp:Panel>
    </div>
    <div id="Div1">
        <h2>
            E<span> material</span></h2>
        <ul class="col2">
            <asp:ListView ID="ListView3" runat="server" OnItemCommand="ListView3_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="material" CommandArgument='<%#bind("subid") %>'
                        Text='<%#bind("subname") %>'></asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:ListView>
        </ul>
        <asp:Button ID="Button4" runat="server" Text="Button" Style="display: none;" />
        <asp:ModalPopupExtender ID="ModalPopupExtender4" runat="server" TargetControlID="Button4"
            PopupControlID="Panel5" CancelControlID="btncancell" BackgroundCssClass="bgcls"
            DynamicServicePath="" Enabled="True">
        </asp:ModalPopupExtender>
        <asp:Panel ID="Panel5" runat="server" Width="570px" Height="200px" Style="display: none;
            padding: 1% 0 0 7%; height: 500px; overflow: scroll; background-color: White;">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/closebtn.jpeg"
                Width="80" Height="40" Style="float: right;" /><br />
            <br />
            <asp:DataList ID="DataList4" runat="server" BackColor="White" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" OnItemDataBound="DataList4_ItemDataBound">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 500px; height: auto; border: 2px solid silver; padding: 10px;
                        border-radius: 10px; box-shadow: inset 0px 1px 10px black; margin-bottom: 7px;
                        color: Green;">
                        <%--<asp:Label ID="Label2" runat="server" Text='<%# bind("mname") %>' CssClass="lbl"></asp:Label><br />
                        <br />--%>
                        <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# bind("mname") %>' CommandArgument='<%#bind("material") %>'
                            CommandName="mmm"></asp:LinkButton>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li class="current"><a href="../user side/Home.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
