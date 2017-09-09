<%@ Page Title="" Language="C#" MasterPageFile="~/BPUBMasterPage.master" AutoEventWireup="true" CodeFile="AddModifyStudent.aspx.cs" Inherits="AddModifyStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <%--<table>
        <tr>
            <td class="auto-style3">Name:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModName" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModName"
                    runat="server"
                    ErrorMessage="Please enter a name."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModName"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td class="auto-style3">Address:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModAddress" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvAddress"
                    runat="server"
                    ErrorMessage="Please enter an address."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModAddress"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style3">City:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModCity" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModCity"
                    runat="server"
                    ErrorMessage="Please enter a city."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModCity"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style3">State:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModState" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModState"
                    runat="server"
                    ErrorMessage="Please enter a state."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModState"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style3">Zip Code:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModZip" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModZip"
                    runat="server"
                    ErrorMessage="Please enter a zip code."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModZip"></asp:RequiredFieldValidator>
                <asp:CompareValidator
                    ID="cvModZip"
                    runat="server"
                    ErrorMessage="Ensure that zip code is an integer value."
                    ControlToValidate="txtModZip"
                    Operator="DataTypeCheck"
                    Type="Integer"
                    Text="*"
                    ForeColor="Red"></asp:CompareValidator>
                <asp:RegularExpressionValidator
                    ID="revModZip"
                    runat="server"
                    ErrorMessage="Ensure that zip code is either 5 or 9 digits."
                    ControlToValidate="txtModZip"
                    ValidationExpression="^\d{5}(\d{4})?$"
                    Text="*"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Phone Number:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModPhone" runat="server" Width="150px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModPhone"
                    runat="server"
                    ErrorMessage="Please enter a phone number."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModPhone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="revModPhone"
                    runat="server"
                    ErrorMessage="Ensure that phone number is in the correct format."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModPhone"
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Email:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtModEmail" runat="server" Width="150px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator
                    ID="rfvModEmail"
                    runat="server"
                    ErrorMessage="Please enter an email address."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator
                    ID="revModEmail"
                    runat="server"
                    ErrorMessage="Ensure that email is in the correct format."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtModEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnAccept" runat="server" Text="Accept" Width="50px" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="50px" />
            </td>
        </tr>
    </table>--%>
</asp:Content>
