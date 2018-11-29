<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddDonation.aspx.cs" Inherits="DonationWebsite.AddDonor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 22%;">
    <h1 style="padding-bottom:20px;">Add Donation</h1>

                    <table style="margin-left:39%;" >
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px;">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                    <asp:RequiredFieldValidator ID="rvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Provide First Name" SetFocusOnError="True" ToolTip="Please Provide First Name" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtLastName" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                    <asp:RequiredFieldValidator ID="rvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please Provide Last Name" SetFocusOnError="True" ToolTip="Please Provide Last Name" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="160px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label5" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtPhone" runat="server" Width="160px"></asp:TextBox>
                    
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label6" runat="server" Text="Donation Amount"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtDonationAmt" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="rvDonationAmt" runat="server" ControlToValidate="txtDonationAmt" ErrorMessage="Please Provide An Amount (Numbers only)" SetFocusOnError="True" ToolTip="Please Provide An Amount (Numbers only)" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label7" runat="server" Text="Donation Type"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtDonationType" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                    <asp:RequiredFieldValidator ID="rvDonationType" runat="server" ControlToValidate="txtDonationType" ErrorMessage="Please Select a Type" SetFocusOnError="True" ToolTip="Please Select a Type" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="padding-bottom: 10px;">
                    <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="auto-style2" style="padding-bottom: 10px; padding-left: 10px">
                    <asp:TextBox ID="txtDate" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="padding-bottom: 10px;">
                    <asp:RequiredFieldValidator ID="rvDate" runat="server" ControlToValidate="txtDate" ErrorMessage="Please Provide a Date (MM/DD/YYYY)" SetFocusOnError="True" ToolTip="Please Provide a Date (MM/DD/YYYY)" ForeColor="Red">Required</asp:RequiredFieldValidator>
                </td>
            </tr>
         </table>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DonationConnectionString %>"  SelectCommand="SELECT [Person_FName], [Person_LName], [Person_Email], [Person_Phone], [Donation_Amount], [Donation_Type], [Date] FROM [Donors]"></asp:SqlDataSource>
     </div>
    <br />
    <asp:Button ID="Button1" style="align-content: center" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
     <br />
     <br />
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
     <br />
     <br />
</asp:Content>