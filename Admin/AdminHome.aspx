<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_Default2, App_Web_mjplrfqp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        #line
        {
            margin-top: -30px;
            text-align: right;
            width: 940px;
            height: 45px;
            background-color: Silver;
        }
        p
        {
            margin-left: 21%;
            color: blue;
            font-size: x-large;
        }
        table
        {
            width: 940px;
            height: auto;
        }
        .imgmenu
        {
            width: 100px;
            height: 100px;
            margin: 10% 0 0 15%;
            border-radius: 50%;
            -moz-box-shadow: 0px 0px 0px 0px rgb(69,58,75);
            box-shadow: 0px 0px 0px 0px rgb(69,58,75);
            transition: all 1s ease;
        }
        .imgmenu:hover
        {
            width: 90px;
            height: 90px;
            margin: 10% 0 0 15%;
            border-radius: 50%;
            -moz-box-shadow: 1px 3px 15px 7px rgb(69,58,75);
            box-shadow: 10px 10px 5px #666;
            -moz-box-shadow: 10px 10px 5px #666;
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
        <img src="../images/admin.png" width="40px" height="35px" style="vertical-align: middle; margin-top:10px;" />&nbsp;Welcome
        Admin &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Style="vertical-align: middle;"
            OnClick="LinkButton1_Click">&nbsp;&nbsp;Logout&nbsp;&nbsp; </asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <div class="conarea">
        <table>
            <tr>
                <td>
                    <a href="ManageClg.aspx">
                        <img src="../images/college.PNG" width="300px" height="250px" class="imgmenu" /></a><p>
                            Manage College</p>
                </td>
                <td>
                    <a href="ManageExam.aspx">
                        <img src="../images/examm.PNG" class="imgmenu" width="300px" height="250px" /></a><p>
                            Manage Exam</p>
                </td>
                <td>
                    <a href="ManageJob.aspx">
                        <img src="../images/job.PNG" class="imgmenu" width="300px" height="250px" /></a><p>
                            &nbsp;Manage Job</p>
                </td>
                <td>
                    <a href="ManageMaterial.aspx">
                        <img src="../images/material.PNG" class="imgmenu" width="300px" height="250px" /></a><p>
                            Manage Material</p>
                </td>
                <td>
                    <a href="ManageUser.aspx">
                        <img src="../images/manageuser.PNG" class="imgmenu" width="300px" height="250px" /></a><p>
                            Manage User</p>
                </td>
                <td>
                    <a href="setting.aspx">
                        <img src="../images/setting.PNG" class="imgmenu" width="300px" height="250px" /></a><p>
                            &nbsp; &nbsp; &nbsp; &nbsp;Setting</p>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
