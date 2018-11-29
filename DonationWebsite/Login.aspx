<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DonationWebsite.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-top: 40%;">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DonationConnectionString %>" SelectCommand="SELECT [Admin_Username], [Admin_Password] FROM [Users]"></asp:SqlDataSource>
        
        <table style="margin-left: 28%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblUsername" runat="server" Text="Please enter your username:" Visible="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtUsername" runat="server" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Please Provide a Valid Username" SetFocusOnError="True" ToolTip="Please Provide a Valid Username" Display="Dynamic" ForeColor="Red">&nbsp; Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td> &nbsp;</td>
                <td> &nbsp;</td>
                <td> &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblPassword" runat="server" Text="Please enter your password:" Visible="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="175px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Provide Password" SetFocusOnError="True" ToolTip="Please Enter Password" Display="Dynamic" ForeColor="Red">&nbsp; Required</asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:Button class="buttons" ID="btnLogin" style="align-content: center" runat="server" Text="Submit" OnClick="btnLogin_Click"/>
    </div>
</asp:Content>
