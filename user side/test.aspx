<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default2, App_Web_4u15tkpc" %>

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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Select Test</a></li>
        </ul>
        <div id="tabs-1">
            <p>
                <strong>Search Here Test Subject...</strong></p>
            <asp:DropDownList ID="drpSub" runat="server" CssClass="select">
            </asp:DropDownList>
            <asp:Button ID="btnsub" runat="server" Text="Search" OnClick="btnsub_Click" />
        </div>
    </div>
    <div style="width: 680px; height: auto; border: 1px solid white; margin-top: 20px;">
        <asp:Panel ID="Panel1" runat="server">
            <div style="width: 650px; height: auto; margin-top: 8px; margin-left: 5px; color: #008000;
                font-size: large;">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both" DataKeyField="queid"
                    OnItemDataBound="DataList1_ItemDataBound">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <ItemStyle BackColor="#F7F7F7" ForeColor="#003399" />
                    <ItemTemplate>
                        Q:<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# bind("question") %>' Style="color: Green;
                            font-size: large;"></asp:Label>
                        <br />
                        </div>
                        <div style="margin-bottom: 15px; width: 650px; height: auto; margin-top: 20px; margin-left: 30px;
                            font-size: initial;">
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="option" Height="20px"
                                            Text='<%# bind("opA") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="option" Height="20px"
                                            Text='<%# bind("opB") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="option" Height="20px"
                                            Text='<%# bind("opC") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="option" Height="20px"
                                            Text='<%# bind("opD") %>' />
                                    </td>
                                </tr>
                                <asp:Label ID="Label3" runat="server" Text='<%# bind("ans") %>' Visible="false"></asp:Label>
                            </table>
                        </div>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DataList>
                <center>
                    <asp:Button ID="Button1" runat="server" Text="Show Result" CssClass="btn" Visible="false"
                        OnClick="Button1_Click" /></center>
        </asp:Panel>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="menu">
    <ul>
        <li><a href="Home.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
