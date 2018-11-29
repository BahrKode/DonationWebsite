<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModifyDonation.aspx.cs" Inherits="DonationWebsite.ModifyDonation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 22%;">
    <link rel="stylesheet" type="text/css" href="../Content/GridViewEdit.css" runat="server" />
    <h1 style="padding-bottom:20px;">Modify Donation</h1>

                     <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" ItemStyle-HorizontalAlign="Center" AutoGenerateColumns="False" HorizontalAlign="Center" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" Font-Size="Larger" BorderStyle="Solid" BorderWidth="2px" CellPadding="10" DataKeyNames="Person_ID">
                         <AlternatingRowStyle HorizontalAlign="Center" />
                         <Columns>
                             <asp:CommandField ShowEditButton="True"></asp:CommandField>
                             <asp:BoundField HeaderText="Person" DataField="Person_ID" SortExpression="Person_ID" InsertVisible="False" ReadOnly="True" />
                             <asp:BoundField HeaderText="First Name" DataField="Person_FName" SortExpression="Person_FName"></asp:BoundField>
                             <asp:BoundField HeaderText="Last Name" DataField="Person_LName" SortExpression="Person_LName" />
                             <asp:BoundField HeaderText="Email Address" DataField="Person_Email" SortExpression="Person_Email" />
                             <asp:BoundField HeaderText="Phone Number" DataField="Person_Phone" SortExpression="Person_Phone" />
                             <asp:BoundField HeaderText="Amount" DataField="Donation_Amount" SortExpression="Donation_Amount" />
                             <asp:BoundField HeaderText="Type" DataField="Donation_Type" SortExpression="Donation_Type" />
                             <asp:BoundField HeaderText="Date" DataField="Date" DataFormatString="{0:MM/dd/yy}" SortExpression="Date" />
                         </Columns>
                         <EditRowStyle HorizontalAlign="Center" CssClass="GridViewEdit" />
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DonationConnectionString %>"  SelectCommand="SELECT [Person_FName], [Person_LName], [Person_Email], [Person_Phone], [Person_ID], [Donation_Amount], [Donation_Type], [Date] FROM [Donors]" UpdateCommand="UPDATE [Donors] SET [Person_FName] = @Person_FName, [Person_LName] = @Person_LName, [Person_Email] = @Person_Email, [Person_Phone] = @Person_Phone, [Donation_Amount] = @Donation_Amount, [Donation_Type] = @Donation_Type, [Date] = @Date WHERE [Person_ID] = @Person_ID" DeleteCommand="DELETE FROM [Donors] WHERE [Person_ID] = @Person_ID" InsertCommand="INSERT INTO [Donors] ([Person_FName], [Person_LName], [Person_Email], [Person_Phone], [Donation_Amount], [Donation_Type], [Date]) VALUES (@Person_FName, @Person_LName, @Person_Email, @Person_Phone, @Donation_Amount, @Donation_Type, @Date)">
            <DeleteParameters>
                <asp:Parameter Name="Person_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Person_FName" Type="String" />
                <asp:Parameter Name="Person_LName" Type="String" />
                <asp:Parameter Name="Person_Email" Type="String" />
                <asp:Parameter Name="Person_Phone" Type="String" />
                <asp:Parameter Name="Donation_Amount" Type="Decimal" />
                <asp:Parameter Name="Donation_Type" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Type="String" 
                  Name="Person_FName"></asp:Parameter>
                <asp:Parameter Type="String" 
                  Name="Person_LName"></asp:Parameter>
                <asp:Parameter Type="String" 
                  Name="Person_Email"></asp:Parameter>
                <asp:Parameter Type="String" 
                  Name="Person_Phone"></asp:Parameter>
                <asp:Parameter Type="Decimal" Name="Donation_Amount"></asp:Parameter>
                <asp:Parameter Name="Donation_Type" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Person_ID" Type="Int32" />
            </UpdateParameters></asp:SqlDataSource>
     </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button class="buttons" ID="btnHome" style="align-content: center; width: 10em; height: 2em; font-size: 24px;" runat="server" Text="Go Home" OnClick="btnHome_Click"/>
    <br />
</asp:Content>