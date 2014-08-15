<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_2k0jeec5" %>

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
    <script type="text/javascript">
        function download(file) {
            window.location = file;

        }
    </script>
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
    <div style="width: 930px; height: 500px;">
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="120px"
            Width="714px" CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Upload Material">
                <ContentTemplate>
                    Select Subject:<asp:DropDownList ID="DropDownList1" CssClass="select" runat="server"
                        Width="150px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Material Name:
                    <asp:TextBox ID="txtmname" runat="server"></asp:TextBox><br />
                    <br />
                    &nbsp;&nbsp; Select File For Upload:
                    <asp:FileUpload ID="material" runat="server" /><br />
                    <br />
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn" OnClick="Button1_Click" /></center>
                    <br />
                    <br />
                    <br />
                    <asp:GridView ID="grdmaterial" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="materialid"
                        Width="100%" OnRowDeleting="grdmaterial_RowDeleting" 
                        OnDataBound="grdmaterial_DataBound" AllowPaging="True" 
                        onpageindexchanging="grdmaterial_PageIndexChanging" PageSize="8">
                        <Columns>
                            <asp:TemplateField HeaderText="Material Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("mname") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# bind("material") %>'
                                        Text='<%# bind("mname") %>'></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" 
                            Height="25px" VerticalAlign="Middle" />
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
