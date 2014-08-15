<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_mjplrfqp" %>

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
    <div style="width: 930px; height: auto; font-size: large;">
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText=" Enter Here Subjects...">
                <ContentTemplate>
                    <br />
                    Subject Name<asp:TextBox ID="txtsubname" runat="server" Width="160px"></asp:TextBox>
                    <asp:Button ID="btnsub" runat="server" Text="Insert" CssClass="btn" OnClick="btnsub_Click" />
                    <br />
                    <br />
                    <asp:GridView ID="grdsub" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="163px"
                        Width="451px" DataKeyNames="subid" OnPageIndexChanging="grdsub_PageIndexChanging"
                        OnRowDeleting="grdsub_RowDeleting" AllowPaging="True" PageSize="5">
                        <Columns>
                            <asp:TemplateField HeaderText="Subject Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# bind("subname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" Height="25px"
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
    </div>
    <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Enter Here Question Paper...">
        <ContentTemplate>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Subject:<asp:DropDownList
                ID="drpsub" runat="server" CssClass="select" Width="160px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Enter Question:
            <asp:TextBox ID="txtque" runat="server" CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>
            <br />
            &nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Option A)<asp:TextBox ID="txta" runat="server" CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Option B)<asp:TextBox ID="txtb" runat="server" CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Option C)<asp:TextBox ID="txtc" runat="server" CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Option D)<asp:TextBox ID="txtd" runat="server" CssClass="txtarea" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Answer:<asp:DropDownList ID="drpans" runat="server" CssClass="select" Width="160px">
                <asp:ListItem>--Select--</asp:ListItem>
                <asp:ListItem>Option A</asp:ListItem>
                <asp:ListItem>Option B</asp:ListItem>
                <asp:ListItem>Option C</asp:ListItem>
                <asp:ListItem>Option D</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnQue" runat="server" Text="Insert" CssClass="btn" Width="160px"
                OnClick="btnQue_Click" />
            <br>
            <br>
            <br></br>
            <asp:GridView ID="grdque" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="queid" 
                OnPageIndexChanging="grdque_PageIndexChanging" 
                OnRowCancelingEdit="grdque_RowCancelingEdit" OnRowDeleting="grdque_RowDeleting" 
                OnRowEditing="grdque_RowEditing" OnRowUpdating="grdque_RowUpdating" 
                PageSize="5" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Subject">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select" 
                                Width="80">
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bind("subname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Question">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("question") %>' 
                                TextMode="MultiLine" Width="100"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# bind("question") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Option A">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# bind("opA") %>' 
                                TextMode="MultiLine" Width="100"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# bind("opA") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Option B">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# bind("opB") %>' 
                                TextMode="MultiLine" Width="100"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# bind("opB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Option C">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# bind("opC") %>' 
                                TextMode="MultiLine" Width="100"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# bind("opC") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Option D">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# bind("opD") %>' 
                                TextMode="MultiLine" Width="100"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# bind("opD") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Answer">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select" 
                                Width="80">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Option A</asp:ListItem>
                                <asp:ListItem>Option B</asp:ListItem>
                                <asp:ListItem>Option C</asp:ListItem>
                                <asp:ListItem>Option D</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# bind("ans") %>'>  </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" Height="20px" 
                    HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
            </br>
            </ContentTemplate>
    </asp:TabPanel>
    </asp:TabContainer>
</asp:Content>
