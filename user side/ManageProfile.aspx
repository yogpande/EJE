<%@ page title="" language="C#" masterpagefile="~/user side/2.master" autoeventwireup="true" inherits="user_side_Default, App_Web_n1zlkqcs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .ajcls .ajax__tab_header
        {
            font-family: "Helvetica Neue" , Arial, Sans-Serif;
            font-size: 14px;
            font-weight: bolder;
            display: block;
            margin: 0 0 15px 0;
        }
        .ajcls .ajax__tab_header .ajax__tab_outer
        {
            border-color: #222;
            color: #008cc4;
            padding-left: 10px;
            margin-right: 13px;
            font-size: 15px;
            font-weight: bold;
            border: 1px solid Silver;
            box-shadow: inset 0px 0px 10px silver;
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
            color: Orange;
            border-color: #333;
        }
        .ajcls .ajax__tab_body
        {
            font-family: verdana,tahoma,helvetica;
            font-size: 10pt;
            background-color: transparent;
            padding: 10px;
            border: solid 1px Silver;
            border-radius: 10px;
            border-top-color: #ffffff;
            box-shadow: inset 0px 0px 10px silver;
        }
        .cpass
        {
            padding-top: 3%;
            margin-left: 10%;
            border-radius: 10px;
        }
        .imgcls
        {
            width: 200px;
            box-shadow: 0px 0px 10px black;
            height: 200px;
            margin-left: 2%;
            margin-top: 1%;
            border-radius: 25px;
        }
        .lbel
        {
            width: 50px;
            height: 25px;
            padding: 3px;
            color: #666;
            font-size: large;
        }
        .rbtn
        {
            width: 50px;
            height: 25px;
            padding: 3px;
            color: #ccc;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="Server">
    <ul>
        <li class="current"><a href="../user side/Home.aspx" class="m1">Home</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="width: 680px; height: auto;">
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
            CssClass="ajcls">
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Edit Profile">
                <ContentTemplate>
                    <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand"
                        OnEditCommand="DataList1_EditCommand" 
                        OnUpdateCommand="DataList1_UpdateCommand" DataKeyField="userid">
                        <ItemTemplate>
                            <div style="width: 670px; height: 600px;">
                                <div>
                                    <asp:Image ID="Image1" runat="server" Width="180px" Height="200px" ImageUrl='<%# bind("photo") %>'
                                        CssClass="imgcls" />
                                </div>
                                <div style="width: 430px; height: auto; margin-top: -170px; float: right; margin-bottom: 5px;">
                                    <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblname" runat="server" Width="215px" Height="25px" Text='<%# bind("name") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblemail" runat="server" Width="215px" Height="25px" Text='<%# bind("email") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Gender:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblgen" runat="server" Width="215px" Height="25px" Text='<%# bind("gender") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Mobile:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblmob" runat="server" Width="215px" Height="25px" Text='<%# bind("mobile") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Birth Date:" CssClass="lbel"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="lbldob" runat="server" Width="215px" Height="25px" Text='<%# bind("dob") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="State:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblstate" runat="server" Width="215px" Height="25px" Text='<%# bind("statename") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="City:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                    <asp:Label ID="lblcity" runat="server" Width="215px" Height="25px" Text='<%# bind("cityname") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Education:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lbledu" runat="server" Width="215px" Height="25px" Text='<%# bind("education") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="CTC:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblctc" runat="server" Width="215px" Height="25px" Text='<%# bind("ctc") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label10" runat="server" Text="Experience:" CssClass="lbel"></asp:Label>&nbsp;&nbsp;
                                    <asp:Label ID="lblexp" runat="server" Width="215px" Height="25px" Text='<%# bind("experience") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label11" runat="server" Text="Interest:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblint" runat="server" Width="215px" Height="25px" Text='<%# bind("interest") %>' />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="KeySkill:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="lblks" runat="server" Width="215px" Height="25px" Text='<%# bind("keyskill") %>' />
                                    <br />
                                    <br />
                                    <br />
                                    <div style="margin-left: 35%;">
                                        <asp:Button ID="btnedit" CssClass="btn" Width="80" runat="server" Text="Edit" 
                                            CommandName="edit"/>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <div style="width: 670px; height: 600px;">
                                <div>
                                    <asp:Image ID="Image1" runat="server" Width="180px" Height="200px" ImageUrl='<%# bind("photo") %>'
                                        CssClass="imgcls" />
                                    <br />
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </div>
                                <div style="width: 430px; height: auto; margin-top: -200px; float: right; margin-bottom: 5px;">
                                    <asp:Label ID="Label1" runat="server" Text="Name:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox30" runat="server" Width="215px" Height="25px" Text='<%# bind("name") %>'></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Width="215px" Height="25px" Text='<%# bind("email") %>'></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Gender:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="215px" Height="25px"
                                        CssClass="rbtn" RepeatDirection="Horizontal" RepeatLayout="Flow" SelectedValue='<%# bind("gender") %>'>
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Mobile:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Width="215px" Height="25px" Text='<%# bind("mobile") %>'></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Birth Date:" CssClass="lbel"></asp:Label>
                                    &nbsp;
                                    <asp:TextBox ID="txtdate" runat="server" Width="215px" Height="25px" Text='<%# bind("dob") %>'></asp:TextBox>
                                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdate"
                                        Enabled="True">
                                    </asp:CalendarExtender>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="State:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="select" 
                                        Width="221px" AutoPostBack="true" 
                                        onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="City:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="select" Width="220">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Education:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="select" Width="221px">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>12th</asp:ListItem>
                                        <asp:ListItem>B.A</asp:ListItem>
                                        <asp:ListItem>B.Com</asp:ListItem>
                                        <asp:ListItem>B.Sc</asp:ListItem>
                                        <asp:ListItem>B.E/B.Tech</asp:ListItem>
                                        <asp:ListItem>B.Pharm</asp:ListItem>
                                        <asp:ListItem>BBA/BBM/BBS</asp:ListItem>
                                        <asp:ListItem>BCA</asp:ListItem>
                                        <asp:ListItem>BDS</asp:ListItem>
                                        <asp:ListItem>Diploma</asp:ListItem>
                                        <asp:ListItem>LLB</asp:ListItem>
                                        <asp:ListItem>MA</asp:ListItem>
                                        <asp:ListItem>MBA</asp:ListItem>
                                        <asp:ListItem>MCA</asp:ListItem>
                                        <asp:ListItem>M.Sc</asp:ListItem>
                                        <asp:ListItem>PG Degree</asp:ListItem>
                                        <asp:ListItem>PG Diploma</asp:ListItem>
                                        <asp:ListItem>PhD</asp:ListItem>
                                        <asp:ListItem>Others</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="CTC:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="select" Width="221px">
                                        <asp:ListItem>Less than 50,000</asp:ListItem>
                                        <asp:ListItem>50,000 - 1,50,000</asp:ListItem>
                                        <asp:ListItem>1,50,000 - 3,00,000</asp:ListItem>
                                        <asp:ListItem>More than 3,00,000</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label10" runat="server" Text="Experience:" CssClass="lbel"></asp:Label>&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select" Width="221px">
                                        <asp:ListItem>Fresher</asp:ListItem>
                                        <asp:ListItem>less than 1 yr</asp:ListItem>
                                        <asp:ListItem>1yr - 3 yr</asp:ListItem>
                                        <asp:ListItem>3yr - 5 yr</asp:ListItem>
                                        <asp:ListItem>More than 5 yr</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label11" runat="server" Text="Interest:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="select" Width="221px">
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
                                    <br />
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="KeySkill:" CssClass="lbel"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="txtarea"
                                        Width="215px" Text='<%# bind("keyskill") %>'></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <div style="margin-left: 35%;">
                                        <asp:Button ID="btnup" CssClass="btn" Width="80" runat="server" Text="Update" CommandName="update" />
                                        <asp:Button ID="btncan" CssClass="btn" Width="80" runat="server" Text="Cancel" CommandName="cancel" />
                                    </div>
                                </div>
                            </div>
                        </EditItemTemplate>
                    </asp:DataList>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Change Password">
                <ContentTemplate>
                    <div class="cpass">
                        Old Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtoldpass"
                            Height="30px" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <br />
                        New Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtpass" Height="30px"
                            runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <br />
                        Re-enter Password:<asp:TextBox ID="txtrepass" runat="server" Width="200px" 
                            Height="30px"></asp:TextBox>
                        <br />
                        <br />
                        <br>
                        <center>
                            <asp:Button ID="btncpass" runat="server" Text="Change Password" CssClass="btn" 
                                Width="160px" onclick="btncpass_Click" /></center>
                        <br />
                    </div>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </div>
</asp:Content>
