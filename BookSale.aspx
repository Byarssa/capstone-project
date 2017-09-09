<%@ Page Title="" Language="C#" MasterPageFile="~/BPUBMasterPage.master" AutoEventWireup="true" CodeFile="BookSale.aspx.cs" Inherits="BookSale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">



    <asp:DropDownList ID="ddlCourses" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="ISBN">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BPUBConnectionString %>" SelectCommand="SELECT [Title], [ISBN] FROM [Book] ORDER BY [Title]"></asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ISBN,SSID" DataSourceID="SqlDataSource2">
        <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <Fields>
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="AskingPrice" HeaderText="AskingPrice" SortExpression="AskingPrice" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" />
            <asp:BoundField DataField="SSID" HeaderText="SSID" ReadOnly="True" SortExpression="SSID" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BPUBConnectionString %>" DeleteCommand="DELETE FROM [Book_Copy] WHERE [ISBN] = @original_ISBN AND [SSID] = @original_SSID AND (([AskingPrice] = @original_AskingPrice) OR ([AskingPrice] IS NULL AND @original_AskingPrice IS NULL)) AND (([BookType] = @original_BookType) OR ([BookType] IS NULL AND @original_BookType IS NULL))" InsertCommand="INSERT INTO [Book_Copy] ([ISBN], [AskingPrice], [BookType], [SSID]) VALUES (@ISBN, @AskingPrice, @BookType, @SSID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ISBN], [AskingPrice], [BookType], [SSID] FROM [Book_Copy] ORDER BY [AskingPrice], [BookType]" UpdateCommand="UPDATE [Book_Copy] SET [AskingPrice] = @AskingPrice, [BookType] = @BookType WHERE [ISBN] = @original_ISBN AND [SSID] = @original_SSID AND (([AskingPrice] = @original_AskingPrice) OR ([AskingPrice] IS NULL AND @original_AskingPrice IS NULL)) AND (([BookType] = @original_BookType) OR ([BookType] IS NULL AND @original_BookType IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_SSID" Type="String" />
            <asp:Parameter Name="original_AskingPrice" Type="Decimal" />
            <asp:Parameter Name="original_BookType" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="AskingPrice" Type="Decimal" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="SSID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="AskingPrice" Type="Decimal" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_SSID" Type="String" />
            <asp:Parameter Name="original_AskingPrice" Type="Decimal" />
            <asp:Parameter Name="original_BookType" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>