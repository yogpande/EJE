<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_qll4lzns" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        #line
        {
            margin-top: -30px;
            text-align: right;
            width: 940px;
            height: 45px;
            background-color: Silver;
            margin-bottom: 30px;
        }
        .ajcls .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 12px;
            font-weight: bold;
            display: block;
            margin: 0 0 15px 0;
        }
        .ajcls .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #008cc4;
            padding-left: 10px;
            margin-right: 13px;
            border: solid 1px #d7d7d7;
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
            cursor: pointer;
        }
        .ajcls.ajax__tab_active .ajax__tab_outer
        {
            border-bottom-color: #ffffff;
            background-color: #d7d7d7;
        }
        .ajcls .ajax__tab_active .ajax__tab_inner
        {
            color: #000;
            border-color: #333;
        }
        .ajcls .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 10pt;
            background-color: #fff;
            border-top-width: 0;
            padding: 10px;
            border: solid 1px #d7d7d7;
            border-top-color: #ffffff;
        }
        .bgcls
        {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            z-index: 10000;
        }
        #fb
        {
            width: 630px;
            height: auto;
            border: 1px solid #ccc;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0px 0px 20px 1px black;
        }
        #fb1
        {
            width: 470px;
            height: 120px;
            border: 1px solid #ccc;
            margin-left: 10%;
            border-radius: 20px;
            padding: 10px;
            margin-bottom: 15px;
            box-shadow: inset 0px 0px 20px 1px black;
        }
        #uname
        {
            width: 80px;
            height: 15px;
            margin-left: 15px;
        }
        #lk
        {
            width: 90px;
            float: left;
            margin-left: 25px;
        }
        
        .imgcls
        {
            width: 75px;
            padding: 0px;
            height: 75px;
            float: left;
            margin-left: 0px;
            margin-top: 10px;
            border-radius: 30%;
            background-color: White;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <ul>
        <li><a href="AdminHome.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="line" style="text-align: right; color: #800000; vertical-align: middle;">
        <img src="../images/admin.png" width="40px" height="35px" style="vertical-align: middle;
            margin-top: 10px;" />&nbsp;Welcome Admin &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1"
                runat="server" Style="vertical-align: middle;" OnClick="LinkButton1_Click">&nbsp;&nbsp;Logout&nbsp;&nbsp;</asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div style="width: 800px; height: auto; margin-left: 10%; font-size: large;">
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="4" CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText=" Manage Country">
                <ContentTemplate>
                    Country Name:
                    <asp:TextBox ID="txtcname" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="btn" />
                    <br />
                    <br />
                    <asp:GridView ID="grdcountry" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="450px"
                        DataKeyNames="countryid" OnRowDeleting="grdcountry_RowDeleting" AllowPaging="True"
                        PageSize="5" OnPageIndexChanging="grdcountry_PageIndexChanging" Height="209px">
                        <Columns>
                            <asp:TemplateField HeaderText="Country Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("countryname") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" Height="30px"
                            VerticalAlign="Middle" />
                        <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Manage State">
                <ContentTemplate>
                    Select Country:
                    <asp:DropDownList ID="dcountry" runat="server" CssClass="select">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp; State Name:
                    <asp:TextBox ID="txtstatename" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Insert" OnClick="Button2_Click" CssClass="btn" />
                    <br />
                    <br />
                    <asp:GridView ID="grdstate" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="173px"
                        Width="579px" DataKeyNames="stateid" OnRowDeleting="grdstate_RowDeleting" AllowPaging="True"
                        PageSize="5" OnPageIndexChanging="grdstate_PageIndexChanging" OnRowCancelingEdit="grdstate_RowCancelingEdit"
                        OnRowEditing="grdstate_RowEditing" OnRowUpdating="grdstate_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Country Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# bind("countryname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="countryname" DataValueField="countryid"
                                        CssClass="select">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="State Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("statename") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" Height="30px"
                            VerticalAlign="Middle" />
                        <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="Manage City">
                <ContentTemplate>
                    Select State:
                    <asp:DropDownList ID="dpstate" runat="server" CssClass="select">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp; City Name:
                    <asp:TextBox ID="txtcityname" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Insert" OnClick="Button3_Click" CssClass="btn" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="167px"
                        Width="790px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                        PageSize="5" DataKeyNames="cityid" OnRowDeleting="GridView1_RowDeleting" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                        OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="State Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# bind("statename") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="select">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# bind("cityname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("cityname") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" Height="30px"
                            VerticalAlign="Middle" />
                        <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel4" runat="server" HeaderText="Change Password">
                <ContentTemplate>
                    &nbsp; Enter Old Password: &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtoldpass" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;Enter New Password: &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    <br />
                    <br />
                    Re-type New Password: &nbsp;<asp:TextBox ID="txtrnewpass" runat="server" TextMode="Password"
                        Width="250px"></asp:TextBox>
                    <br />
                    <br />
                    <center>
                        <asp:Button ID="btnPass" runat="server" Text="Change Password" CssClass="btn" Width="169px"
                            OnClick="btnPass_Click" /></center>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel5" runat="server" HeaderText="Feed Back">
                <ContentTemplate>
                    <div id="fb">
                        <asp:DataList ID="datafback" runat="server" BackColor="White" BorderColor="#3366CC"
                            BorderStyle="None" DataKeyField="fid" BorderWidth="1px" CellPadding="4" GridLines="Both"
                            OnItemCommand="datafb_ItemCommand">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <ItemStyle BackColor="White" ForeColor="#003399" />
                            <ItemTemplate>
                                <div id="fb1">
                                    <div id="uimg">
                                        <asp:Image ID="Image1" runat="server" CssClass="imgcls" ImageUrl='<%# bind("photo") %>' />
                                    </div>
                                    <div id="uname">
                                        <asp:Label ID="lblname" runat="server" Text='<%# bind("name") %>'></asp:Label>
                                    </div>
                                    <div style="width: 230px; height: 80px; margin-left: 15px; float: left; margin-top: 0px;">
                                        <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" CssClass="txtarea" Height="72px"
                                            Width="230" Text='<%# bind("message") %>'></asp:TextBox>
                                    </div>
                                    <div id="lk">
                                        <asp:LinkButton ID="lnkrply" runat="server" CommandName="Reply" CommandArgument='<%# bind("userid") %>'>Reply</asp:LinkButton>
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="lnkdel" runat="server" CommandName="Delfb" CommandArgument='<%# bind("fid") %>'>Delete</asp:LinkButton><br />
                                        <br />
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("msgdate") %>'></asp:Label>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        </asp:DataList>
                    </div>
                    <asp:Button ID="btnpopup" runat="server" Text="Button" Style="display: none;" />
                    <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnpopup"
                        PopupControlID="Panel1" CancelControlID="btncancel" BackgroundCssClass="bgcls"
                        DynamicServicePath="" Enabled="True">
                    </asp:ModalPopupExtender>
                    <asp:Panel ID="Panel1" runat="server" BackColor="White" Width="50%" Style="display: none;
                        margin-left: 10px;">
                        <div style="margin-left: 10px; margin-top: 10px; width: 500px; height: auto;">
                            Message:
                            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" CssClass="txtarea" Height="72px"
                                Width="230px" Text='<%# bind("message") %>'></asp:TextBox>
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp; Reply:<asp:TextBox ID="txtrply" runat="server" TextMode="MultiLine"
                                CssClass="txtarea" Height="100px"></asp:TextBox>
                            <br />
                            <br />
                            <div align="center">
                                <asp:Button ID="Send" runat="server" Text="Send" Width="80px" Height="30px" 
                                    onclick="Send_Click" /></div>
                        </div>
                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn" Style="margin-left: 82%;
                            width: 80px; margin-top: -40%;" />
                    </asp:Panel>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </div>
</asp:Content>
