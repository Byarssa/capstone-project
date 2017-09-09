<%@ Page Title="" Language="C#" MasterPageFile="~/BPUBMasterPage.master" AutoEventWireup="true" CodeFile="Consignment.aspx.cs" Inherits="Consignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoGenerateEditButton="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Franklin Gothic Medium">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="true" />
            <asp:BoundField DataField="SSID" HeaderText="SSID" SortExpression="SSID" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="AskingPrice" HeaderText="AskingPrice" SortExpression="AskingPrice" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="SID" HeaderText="SID" SortExpression="SID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BPUBConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [ISBN] = @original_ISBN AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([AuthorFname] = @original_AuthorFname) OR ([AuthorFname] IS NULL AND @original_AuthorFname IS NULL)) AND (([AuthorLname] = @original_AuthorLname) OR ([AuthorLname] IS NULL AND @original_AuthorLname IS NULL)) AND (([AuthorSuffix] = @original_AuthorSuffix) OR ([AuthorSuffix] IS NULL AND @original_AuthorSuffix IS NULL)) AND (([CourseNum] = @original_CourseNum) OR ([CourseNum] IS NULL AND @original_CourseNum IS NULL))" InsertCommand="INSERT INTO [Book] ([ISBN], [Title], [Edition], [AuthorFname], [AuthorLname], [AuthorSuffix], [CourseNum]) VALUES (@ISBN, @Title, @Edition, @AuthorFname, @AuthorLname, @AuthorSuffix, @CourseNum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Book_Copy.SSID, Book_Copy.ISBN, Book_Copy.AskingPrice, Book_Copy.BookType, Book.Title, Student.SID, Student.Fname + ' ' + Student.Lname AS Name FROM Book INNER JOIN Book_Copy ON Book.ISBN = Book_Copy.ISBN INNER JOIN Student ON Book_Copy.SSID = Student.SID INNER JOIN Seller ON Book_Copy.SSID = Seller.SSID AND Student.SID = Seller.SSID ORDER BY Book.Title" UpdateCommand="UPDATE [Book] SET [Title] = @Title, [Edition] = @Edition, [AuthorFname] = @AuthorFname, [AuthorLname] = @AuthorLname, [AuthorSuffix] = @AuthorSuffix, [CourseNum] = @CourseNum WHERE [ISBN] = @original_ISBN AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([Edition] = @original_Edition) OR ([Edition] IS NULL AND @original_Edition IS NULL)) AND (([AuthorFname] = @original_AuthorFname) OR ([AuthorFname] IS NULL AND @original_AuthorFname IS NULL)) AND (([AuthorLname] = @original_AuthorLname) OR ([AuthorLname] IS NULL AND @original_AuthorLname IS NULL)) AND (([AuthorSuffix] = @original_AuthorSuffix) OR ([AuthorSuffix] IS NULL AND @original_AuthorSuffix IS NULL)) AND (([CourseNum] = @original_CourseNum) OR ([CourseNum] IS NULL AND @original_CourseNum IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Edition" Type="String" />
            <asp:Parameter Name="original_AuthorFname" Type="String" />
            <asp:Parameter Name="original_AuthorLname" Type="String" />
            <asp:Parameter Name="original_AuthorSuffix" Type="String" />
            <asp:Parameter Name="original_CourseNum" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Edition" Type="String" />
            <asp:Parameter Name="AuthorFname" Type="String" />
            <asp:Parameter Name="AuthorLname" Type="String" />
            <asp:Parameter Name="AuthorSuffix" Type="String" />
            <asp:Parameter Name="CourseNum" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Edition" Type="String" />
            <asp:Parameter Name="AuthorFname" Type="String" />
            <asp:Parameter Name="AuthorLname" Type="String" />
            <asp:Parameter Name="AuthorSuffix" Type="String" />
            <asp:Parameter Name="CourseNum" Type="String" />
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Edition" Type="String" />
            <asp:Parameter Name="original_AuthorFname" Type="String" />
            <asp:Parameter Name="original_AuthorLname" Type="String" />
            <asp:Parameter Name="original_AuthorSuffix" Type="String" />
            <asp:Parameter Name="original_CourseNum" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


