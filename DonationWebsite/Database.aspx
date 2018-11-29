<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="DonationWebsite.Database" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="">
    <table style="margin-left: 25%; margin-top: 25%;">
            <tr>
                <td class="auto-style1" style="padding-left: 1px; width: 12em; height: 2em; font-size: 24px;">
                    <asp:Label ID="lblAdd" runat="server" Text="Choose an option:" Visible="True"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-left: 1px; width: 10em; height: 3em; font-size: 24px;">
                    <asp:DropDownList ID="dropList" runat="server">
                        <asp:ListItem>Make Selection</asp:ListItem>
                        <asp:ListItem>Add Donation</asp:ListItem>
                        <asp:ListItem>Modify Donor</asp:ListItem>
                        <asp:ListItem>Modify Donation</asp:ListItem>
                        <asp:ListItem>View Donations</asp:ListItem>
                        <asp:ListItem>Generate Report</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td> &nbsp;</td>
                <td> &nbsp;</td>
                <td> &nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button class="buttons" ID="btnSubmit" style="align-content: center; width: 10em; height: 2em; font-size: 24px;" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Visible="False" Font-Size="Large" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>