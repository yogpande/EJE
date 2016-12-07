<%@ page title="" language="C#" masterpagefile="~/visitor/MasterPage.master" autoeventwireup="true" inherits="_Default, App_Web_irdxbhzs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .cls
        {
            border: 0px solid gray;
            width: 590px;
            height: auto;
            padding: 15px;
            margin-top: 30px;
            margin-left: 95px;
            border-radius: 10px 10px 10px 10px;
            box-shadow: 0px 0px 10px gray;
        }
        
        table
        {
            color: Purple;
            font-family: Verdana;
        }
        
        
        .select
        {
            width: 200px;
            height: 25px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
        }
        .txtarea
        {
            width: 200px;
            height: 100px;
            border-radius: 5px 5px 5px 5px;
            color: #663300;
            border: 2px solid silver;
            font-family: Verdana;
        }
        
        .btn
        {
            width: 100px;
            height: 50px;
            color: #ccc;
            border: 1px solid #ccc;
            background-color: #f7f7f7;
            margin-top: 35px;
        }
        .btn:hover
        {
            width: 100px;
            height: 50px;
            border-radius: 15px;
            color: #f7f7f7;
            margin-top: 35px;
            background-color: #ccc;
        }
        #reg
        {
            margin: 5px 0px 0px 295px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <ul>
        <li><a href="Default.aspx" class="m1">Home</a></li>
        <li><a href="AboutUs.aspx" class="m2">About Us</a></li>
        <li><a href="Blog.aspx" class="m3">BLOG</a></li>
        <li><a href="ContactUs.aspx" class="m4">Contact Us</a></li>
        <li class="last"><a href="Sitemap.aspx" class="m5">Site Map</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="registration" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset class="cls">
        <table>
            <tr>
                <th align="left" colspan="2" style="font-size: large; color: #008cc4;">
                    Personal Information
                </th>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="right">
                    Full Name:
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Width="200px" requierd></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    Gender:
                </td>
                <td>
                    <asp:RadioButtonList ID="radiogender" runat="server" RepeatDirection="Horizontal"
                        ForeColor="#658969" required>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    Date OF Birth:
                </td>
                <td>
                    <asp:TextBox ID="txtdate" runat="server" Width="200px" requierd></asp:TextBox>
                    <%--<asp:MaskedEditExtender id="MaskedEdit_dtFrom" runat="server" targetcontrolid="txtdate"
                        mask="99-99-9999" masktype="Date" acceptampm="True" displaymoney="Left" acceptnegative="Left"
                        errortooltipenabled="True" enabled="True" />
                    <asp:maskededitvalidator id="MaskedEditV_dtFrom" runat="server" controlextender="MaskedEdit_dtFrom"
                        controltovalidate="txtdate" emptyvaluemessage="Date is required" invalidvaluemessage="Date is invalid"
                        display="Dynamic" tooltipmessage="Input a date" emptyvalueblurredtext="Date is required"
                        invalidvalueblurredmessage="Date is invalid" isvalidempty="False" validationgroup="MKE" />--%>
                    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd-MM-yyyy" Enabled="true"
                        TargetControlID="txtdate">
                    </asp:CalendarExtender>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    Mobile:
                </td>
                <td>
                    <asp:TextBox ID="txtmob" runat="server" MaxLength="10" Width="200px" required></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtmob" ErrorMessage="Enter Mobile No." ForeColor="#FF3300" 
                        SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtmob" ErrorMessage="Please Enter Correct Mobile No." 
                        ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <tr>
                        <td align="right">
                            Country:
                        </td>
                        <td>
                            <asp:DropDownList ID="drpcountry" runat="server" class="select" AutoPostBack="True"
                                OnSelectedIndexChanged="drpcountry_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            State:
                        </td>
                        <td>
                            <asp:DropDownList ID="drpstate" runat="server" class="select" AutoPostBack="True"
                                OnSelectedIndexChanged="drpstate_SelectedIndexChanged">
                            </asp:DropDownList>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            City:
                        </td>
                        <td>
                            <asp:DropDownList ID="drpcity" runat="server" class="select">
                            </asp:DropDownList>
                            <br />
                            <br />
                        </td>
                    </tr>
                </ContentTemplate>
            </asp:UpdatePanel>
            <tr>
                <td>
                    Security Question:
                </td>
                <td>
                    <asp:DropDownList ID="drpsecq" runat="server" class="select" requierd>
                        <asp:ListItem>Who is your favorite Author?</asp:ListItem>
                        <asp:ListItem>Where is your birth place?</asp:ListItem>
                        <asp:ListItem>Who is favorite school Teacher?</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="right">
                    Answer:
                </td>
                <td>
                    <asp:TextBox ID="txtans" runat="server" Width="200px" required></asp:TextBox>
                    <br />
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="cls">
        <table>
            <tr>
                <th align="left" colspan="2" style="font-size: large; color: #008cc4;">
                    Employment Information
                </th>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    Education:
                </td>
                <td>
                    <asp:DropDownList ID="drpedu" runat="server" class="select" requierd>
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
                </td>
            </tr>
            <tr>
                <td>
                    Field of Interest:
                </td>
                <td>
                    <asp:DropDownList ID="drpint" runat="server" class="select" requierd>
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
                </td>
            </tr>
            <tr>
                <td>
                    Key-Skill:
                </td>
                <td>
                    <asp:TextBox ID="txtkskill" runat="server" TextMode="MultiLine" requierd class="txtarea"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Experience:
                </td>
                <td>
                    <asp:DropDownList ID="drpexp" runat="server" class="select" requierd>
                        <asp:ListItem>Fresher</asp:ListItem>
                        <asp:ListItem>less than 1 yr</asp:ListItem>
                        <asp:ListItem>1yr - 3 yr</asp:ListItem>
                        <asp:ListItem>3yr - 5 yr</asp:ListItem>
                        <asp:ListItem>More than 5 yr</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    CTC:
                </td>
                <td>
                    <asp:DropDownList ID="drpctc" runat="server" class="select" requierd>
                        <asp:ListItem>Less than 50,000</asp:ListItem>
                        <asp:ListItem>50,000 - 1,50,000</asp:ListItem>
                        <asp:ListItem>1,50,000 - 3,00,000</asp:ListItem>
                        <asp:ListItem>More than 3,00,000</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
            </tr>
        <tr>
                <td>
                    Upload Resume:
                </td>
                <td>
                    <asp:FileUpload ID="uresume" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    Profile Image:
                </td>
                <td>
                    <asp:FileUpload ID="Pimage" runat="server" />
                </td>
            </tr>
        </table>
    </fieldset>
    <fieldset class="cls">
        <table>
            <tr>
                <th align="left" colspan="2" style="font-size: large; color: #008cc4;">
                    Account Information
                </th>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    Email ID:
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Email ID" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Enter Correct Email ID" ForeColor="#FF3300" SetFocusOnError="True"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                        ErrorMessage="Enter Password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    Re-enter Password:
                </td>
                <td>
                    <asp:TextBox ID="txtrpass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <br />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtrpass"
                        ErrorMessage="Please Re-enter Password" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpass"
                        ControlToValidate="txtrpass" ErrorMessage="Please Re-enter Correct Password..."
                        ForeColor="#FF3300" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
        </table>
    </fieldset>
    <div id="reg">
        <table>
            <tr>
                <td>
                    <asp:Button class="btn" ID="txtreg" runat="server" Text="Register" OnClick="txtreg_Click" />
                </td>
                <td>
                    <asp:Button class="btn" ID="txtcan" runat="server" Text="Cancel" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
</asp:Content>
