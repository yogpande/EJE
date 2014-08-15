<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_jmdvmjwr" %>

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
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="222px"
            Width="918px" CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText=" Enter Here Job...">
                <ContentTemplate>
                    <br />
                    Job Name:<asp:TextBox ID="txtjobname" runat="server" Width="160px"></asp:TextBox>
                    &nbsp;&nbsp; 
                    Job Type:<asp:DropDownList ID="drpjtype" runat="server" Width="150px" CssClass="select">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Animation and Multimedia</asp:ListItem>
                        <asp:ListItem>Arts and Science</asp:ListItem>
                        <asp:ListItem>Banking and Finance</asp:ListItem>
                        <asp:ListItem>Certification Course</asp:ListItem>
                        <asp:ListItem>Computers and IT</asp:ListItem>
                        <asp:ListItem>Education, Teaching</asp:ListItem>
                        <asp:ListItem>Engineering and Technology</asp:ListItem>
                        <asp:ListItem>Fashion and Design</asp:ListItem>
                        <asp:ListItem>Hotel Management</asp:ListItem>
                        <asp:ListItem>Law, Legal</asp:ListItem>
                        <asp:ListItem>Management and Business</asp:ListItem>
                        <asp:ListItem>Media, Films and Mass Communication</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Nursing</asp:ListItem>
                        <asp:ListItem>Travel, Tourism and Hospitality</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp; Job Location:<asp:DropDownList ID="drplocation" runat="server" CssClass="select">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Job Detail:<asp:TextBox ID="txtdetail"  runat="server" TextMode="MultiLine" CssClass="txtarea"
                        Height="68px"></asp:TextBox>&nbsp;&nbsp; 
                        Salary:<asp:DropDownList ID="drpsalary"
                            runat="server" Width="130px" CssClass="select">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Less than 50,000</asp:ListItem>
                            <asp:ListItem>50,000 - 1,50,000</asp:ListItem>
                            <asp:ListItem>1,50,000 - 3,00,000</asp:ListItem>
                            <asp:ListItem>More than 3,00,000</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Job ExpireDate:<asp:TextBox ID="txtedate" runat="server"></asp:TextBox><asp:CalendarExtender
                        ID="CalendarExtender1" runat="server" TargetControlID="txtedate" 
                        Enabled="True">
                    </asp:CalendarExtender>
                    <br />
                    <br />
                    <center>
                        <asp:Button ID="Button1" runat="server" Text="Insert" CssClass="btn" OnClick="Button1_Click" /></center>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
        <br />
        <br />
        <br />
    </div>
    <asp:GridView ID="grdjob" runat="server" AutoGenerateColumns="False" BackColor="White"
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="242px"
        Width="930px" AllowPaging="True" OnPageIndexChanging="grdjob_PageIndexChanging"
        OnRowCancelingEdit="grdjob_RowCancelingEdit" OnRowDeleting="grdjob_RowDeleting"
        OnRowEditing="grdjob_RowEditing" OnRowUpdating="grdjob_RowUpdating" DataKeyNames="jobid">
        <Columns>
            <asp:TemplateField HeaderText="Job Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# bind("jobname") %>' Width="80"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# bind("jobname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Job Type">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" Text='<%# bind("jobtype") %>'>
                        <asp:ListItem>  --Select--</asp:ListItem>
                        <asp:ListItem>Animation and Multimedia</asp:ListItem>
                        <asp:ListItem>Arts and Science</asp:ListItem>
                        <asp:ListItem>Banking and Finance</asp:ListItem>
                        <asp:ListItem>Certification Course</asp:ListItem>
                        <asp:ListItem>Computers and IT</asp:ListItem>
                        <asp:ListItem>Education, Teaching</asp:ListItem>
                        <asp:ListItem>Engineering and Technology</asp:ListItem>
                        <asp:ListItem>Fashion and Design</asp:ListItem>
                        <asp:ListItem>Hotel Management</asp:ListItem>
                        <asp:ListItem>Law, Legal</asp:ListItem>
                        <asp:ListItem>Management and Business</asp:ListItem>
                        <asp:ListItem>Media, Films and Mass Communication</asp:ListItem>
                        <asp:ListItem>Medical</asp:ListItem>
                        <asp:ListItem>Nursing</asp:ListItem>
                        <asp:ListItem>Travel, Tourism and Hospitality</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("jobtype") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="60">
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("jobLoc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txtarea" Text='<%# bind("jobDetail") %>'
                        TextMode="MultiLine" Width="110"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("jobDetail") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Salary">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Less than 50,000</asp:ListItem>
                        <asp:ListItem>50,000 - 1,50,000</asp:ListItem>
                        <asp:ListItem>1,50,000 - 3,00,000</asp:ListItem>
                        <asp:ListItem>More than 3,00,000</asp:ListItem>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("salary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Job ExpireDate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# bind("jobExpdate") %>' Width="70"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" TargetControlID="TextBox7">
                    </asp:CalendarExtender>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# bind("jobExpdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" Height="15px" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" Height="30px" />
        <RowStyle BackColor="White" ForeColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle"
            Height="20px" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>
