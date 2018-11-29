<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="DonationWebsite.Donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 22%;">
    <h1 style="padding-bottom:20px;">Donations</h1>

                     <asp:GridView ID="GridView1" onselectedindexchanged="GridView1_SelectedIndexChanged" runat="server" DataSourceID="SqlDataSource1" ItemStyle-HorizontalAlign="Center" AutoGenerateColumns="False" HorizontalAlign="Center" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" Font-Size="Larger" BorderStyle="Solid" BorderWidth="2px" CellPadding="10">
                         <AlternatingRowStyle HorizontalAlign="Center" />
                         <Columns>
                             <asp:BoundField HeaderText="First Name" DataField="Person_FName" SortExpression="Person_FName" />
                             <asp:BoundField HeaderText="Last Name" DataField="Person_LName" SortExpression="Person_LName" />
                             <asp:BoundField HeaderText="Email Address" DataField="Person_Email" SortExpression="Person_Email" />
                             <asp:BoundField HeaderText="Phone Number" DataField="Person_Phone" SortExpression="Person_Phone" />
                             <asp:BoundField HeaderText="Amount" DataField="Donation_Amount" SortExpression="Donation_Amount" />
                             <asp:BoundField HeaderText="Type" DataField="Donation_Type" SortExpression="Donation_Type" />
                             <asp:BoundField HeaderText="Date" DataField="Date" DataFormatString="{0:MM/dd/yy}" SortExpression="Date" />
                         </Columns>
                         <EditRowStyle HorizontalAlign="Center" />
                         <EmptyDataRowStyle HorizontalAlign="Center" />
                         <FooterStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />

<HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"></HeaderStyle>

<PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center"></PagerStyle>

<RowStyle ForeColor="#000066" HorizontalAlign="Center"></RowStyle>
                         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                         <SortedAscendingCellStyle BackColor="#F1F1F1" HorizontalAlign="Center" />
                         <SortedAscendingHeaderStyle BackColor="#007DBB" HorizontalAlign="Center" />
                         <SortedDescendingCellStyle BackColor="#CAC9C9" HorizontalAlign="Center" />
                         <SortedDescendingHeaderStyle BackColor="#00547E" HorizontalAlign="Center" />
                     </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DonationConnectionString %>"  SelectCommand="SELECT [Person_FName], [Person_LName], [Person_Email], [Person_Phone], [Donation_Amount], [Donation_Type], [Date] FROM [Donors]"></asp:SqlDataSource>
     </div>
    <br />
     <br />
     <br />
     <br />
     <br />
</asp:Content>
