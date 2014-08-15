<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_w52ijoqo" %>

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
    <div style="width: 900px; height: auto; margin-left: 10%; font-size: large;">
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="College Streams">
                <ContentTemplate>
                    Stream Name:
                    <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" CssClass="btn" />
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="grstream" runat="server" AutoGenerateColumns="False" Height="204px"
                        Width="378px" DataKeyNames="streamid" OnRowCancelingEdit="grstream_RowCancelingEdit"
                        OnRowDeleting="grstream_RowDeleting" OnRowEditing="grstream_RowEditing" OnRowUpdating="grstream_RowUpdating"
                        AllowPaging="True" OnPageIndexChanging="grstream_PageIndexChanging" PageSize="5">
                        <Columns>
                            <asp:TemplateField HeaderText="Stream ID">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# bind("streamid") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# bind("streamid") %>'></asp:Label>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stream Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# bind("streamname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("streamname") %>'></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Edit Colleges">
                <ContentTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Stream:
                    <asp:DropDownList ID="drpstream" runat="server" Width="100px" CssClass="select">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; College Name:
                    <asp:TextBox ID="txtcolname" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;City:<asp:DropDownList ID="drpcity" runat="server" CssClass="select">
                    </asp:DropDownList>
                    <br />
                    <br />
                    College Address:
                    <asp:TextBox ID="txtcadd" runat="server" TextMode="MultiLine" CssClass="select"></asp:TextBox>
                    &nbsp;&nbsp;College Website:
                    <asp:TextBox ID="txtweb" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Insert" OnClick="Button2_Click" CssClass="btn" />
                    <br />
                    <br />
                    <asp:GridView ID="grdcol" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="283px"
                        Width="845px" AllowPaging="True" DataKeyNames="collegeid" OnPageIndexChanging="grdcol_PageIndexChanging"
                        OnRowCancelingEdit="grdcol_RowCancelingEdit" OnRowDeleting="grdcol_RowDeleting"
                        OnRowUpdating="grdcol_RowUpdating" PageSize="5" OnRowEditing="grdcol_RowEditing">
                        <Columns>
                            <asp:TemplateField HeaderText="Stream Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# bind("streamname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="streamname" DataValueField="streamname"
                                        CssClass="select" Width="100">
                                    </asp:DropDownList>
                                    <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>"
                                        SelectCommand="SELECT [streamname] FROM [Stream]"></asp:SqlDataSource>--%>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="College Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# bind("collegename") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("collegename") %>' Width="90"></asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# bind("cityname") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select" Width="80">
                                    </asp:DropDownList>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("colAdd") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# bind("colAdd") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Website">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("colWebsite") %>' Width="110"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# bind("colWebsite") %>'></asp:Label>
                                </ItemTemplate>
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
        </asp:TabContainer>
    </div>
</asp:Content>
