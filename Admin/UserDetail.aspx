<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default, App_Web_lovtmxnx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #line
        {
            margin-top: -30px;
            text-align: right;
            width: 940px;
            height: 45px;
            background-color: Silver;
            margin-bottom: 30px;
        }
        
        .imgcls
        {
            width: 200px;
            padding: 10px;
            box-shadow: inset 0px 0px 20px 5px black;
            height: 200px;
            float: left;
            margin-left: 10%;
            margin-top: 1%;
            border-radius: 0px 30px 0px 30px;
            background-color: White;
        }
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <ul>
        <li class="current"><a href="AdminHome.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="line" style="text-align: right; color: #800000; vertical-align: middle;">
        <img src="../images/admin.png" width="40px" height="35px" style="vertical-align: middle;
            margin-top: 5px;" />&nbsp;Welcome Admin &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1"
                runat="server" Style="vertical-align: middle;" OnClick="LinkButton1_Click">&nbsp;&nbsp;Logout&nbsp;&nbsp; </asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="91px" Width="342px" CellPadding="4"
        AutoGenerateRows="False">
        <Fields>
            <asp:TemplateField>
                <ItemTemplate>
                    <div style="width: 930px; height: 500px;">
                        <div>
                            <asp:Image ID="Image1" runat="server" Width="180px" Height="200px" ImageUrl='<%# bind("photo") %>'
                                CssClass="imgcls" />
                        </div>
                        <div style="width: 500px; height: 500px; margin-left: 50px;
                            float: left;">
                            <table style="width: 450px; height: 500px; font-family: Verdana; font-size: large;
                                color: #B15501;">
                                <tr class="cls">
                                    <td>
                                      Name
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label1" runat="server" Text='<%# bind("name") %>'></asp:Label>
                                    </td>
                                </tr>
                               
                                <tr class="cls">
                                    <td>
                                        Email
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label2" runat="server" Text='<%# bind("email") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Gender
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label3" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Date Of Birth
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label4" runat="server" Text='<%# bind("dob") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Mobile
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label5" runat="server" Text='<%# bind("mobile") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Education
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label7" runat="server" Text='<%# bind("education") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Interest
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label8" runat="server" Text='<%# bind("interest") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        KeySkills
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label9" runat="server" Text='<%# bind("keyskill") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Experience
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label10" runat="server" Text='<%# bind("experience") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        CTC
                                    </td><td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label11" runat="server" Text='<%# bind("ctc") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        IsActive
                                    </td>
                                    <td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label12" runat="server" Text='<%# bind("IsActive") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr class="cls">
                                    <td>
                                        Registration Date
                                    </td>
                                    <td>:</td>
                                    <td style="padding-left: 10px;">
                                        <asp:Label ID="Label6" runat="server" Text='<%# bind("regdate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="3">
                                        <a href="ManageUser.aspx">Back</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
