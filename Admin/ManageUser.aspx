<%@ page title="" language="C#" masterpagefile="~/Admin/MasterPage.master" autoeventwireup="true" inherits="Admin_ManageUser, App_Web_2k0jeec5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style>
        #line
        {
            margin-top: -30px;
            text-align: right;
            width: 940px;
            height: 45px;
            background-color: Silver;
            margin-bottom:30px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <ul>
        <li ><a href="AdminHome.aspx" class="m1">Home</a></li>
        
      
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="line" style="text-align: right; color: #800000; vertical-align: middle;">
        <img src="../images/admin.png" width="40px" height="35px" style="vertical-align: middle; margin-top:10px;" />&nbsp;Welcome
        Admin &nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            style="vertical-align: middle;" onclick="LinkButton1_Click">&nbsp;&nbsp;Logout&nbsp;&nbsp;</asp:LinkButton>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" Height="322px" 
        Width="940px" AllowPaging="True" BackColor="White" BorderColor="#3366CC" 
        BorderStyle="None" BorderWidth="1px" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        ondatabound="GridView1_DataBound" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="84px" 
                        ImageUrl='<%# bind("photo") %>' Width="104px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# bind("name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email ID">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# bind("email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# bind("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# bind("mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IsActive">
                <ItemTemplate>
                    
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# bind("userid") %>' CommandName="IsActiveF" Text='<%#bind("IsActive")%>'>True</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Registration Date">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# bind("regdate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                        CommandArgument='<%# bind("userid") %>' CommandName="More" Height="20px" 
                        Width="80px">More Info...</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
        <FooterStyle BackColor="Black" ForeColor="#003399" Height="30px" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" 
            Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#003399" ForeColor="White" HorizontalAlign="Center" 
            Height="30px" VerticalAlign="Middle" />
        <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Dotted" 
            BorderWidth="1px" ForeColor="#003399" HorizontalAlign="Center" 
            VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>

