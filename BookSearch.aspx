<%@ Page Title="" Language="C#" MasterPageFile="~/BPUBMasterPage.master" AutoEventWireup="true" CodeFile="BookSearch.aspx.cs" Inherits="BookSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/Main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
       <asp:DropDownList ID="ddlBook" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="ISBN" AutoPostBack="True"></asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="SSID,ISBN">
        <Columns>
            <asp:BoundField DataField="SSID" HeaderText="SSID" ReadOnly="True" SortExpression="SSID" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="AskingPrice" HeaderText="Asking Price" SortExpression="AskingPrice"  DataFormatString="{0:c}" />
            <asp:BoundField DataField="BookType" HeaderText="Book Type" SortExpression="BookType" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        </Columns>
       </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BPUBConnectionString %>" SelectCommand="SELECT [ISBN], [Title] FROM [Book] ORDER BY [Title]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BPUBConnectionString %>" SelectCommand="SELECT Book_Copy.SSID, Book_Copy.ISBN, Book_Copy.AskingPrice, Book_Copy.BookType, Book.Title FROM Book_Copy INNER JOIN Book ON Book_Copy.ISBN = Book.ISBN WHERE (Book_Copy.ISBN = @ISBN) ORDER BY Book_Copy.AskingPrice">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlBook" Name="ISBN" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>