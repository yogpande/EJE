<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_4u15tkpc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/css/ui-lightness/jquery-ui-1.10.3.custom.css"
        rel="stylesheet" type="text/css" />
    <script src="../jquery-ui-1.10.3.custom/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.js"
        type="text/javascript"></script>
    <script type="text/javascript">

        $(function () 
        {
            $("#tabs").tabs({
                collapsible: true
            });
        });
    </script>
    <style type="text/css">
        .items
        {
            color: black;
        }
        .items:hover
        {
            color: orange;
        }
    </style>
    <script type="text/javascript">
        function download(file) 
        {
            window.location = file;

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-3">E-Material Search</a></li>
        </ul>
        <div id="tabs-3">
            <p>
                <strong>Search Here From Different E-Materials...</strong></p>
            <asp:DropDownList ID="drpsub" runat="server" CssClass="select">
            </asp:DropDownList>
            <asp:Button ID="btnmaterial" runat="server" Text="Search" OnClick="btnmaterial_Click" />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="silver" BorderColor="#3366CC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" 
                onitemdatabound="DataList1_ItemDataBound" RepeatColumns="3">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <ItemStyle BackColor="silver" ForeColor="#003399" />
                <ItemTemplate>
                    <div style="width: 187px; height: 101px; margin-bottom: 7px; background-color:White; margin-left:5%; margin-top:5%; margin-right:5%; border-radius:15px; ">
                        <div style="width:100px; height:100px; float:left; vertical-align:middle;"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/dwnlad.png" Width="100" Height="100"
                            Style="margin-left: 5px; margin-top: 5px; vertical-align: middle;" /></div>&nbsp;&nbsp;
                       <div style="width:85px; height:80px; float:left; margin-top:7%;"> <asp:LinkButton ID="LinkButton1" runat="server" CssClass="items" CommandArgument='<%# bind("material") %>'
                            Text='<%# bind("mname") %>'></asp:LinkButton></div>
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
