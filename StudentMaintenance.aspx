<%@ Page Title="" Language="C#" MasterPageFile="~/BPUBMasterPage.master" AutoEventWireup="true" CodeFile="StudentMaintenance.aspx.cs" Inherits="StudentMaintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
        }

        .auto-style5 {
            width: 200px;
        }

        .auto-style6 {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <asp:ValidationSummary
        ID="vsMaintenance"
        runat="server"
        ForeColor="Red"
        HeaderText="Please correct the following errors:"
        BorderWidth="2px"
        BorderColor="Red"
        BorderStyle="Solid" />
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">Customer ID:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCustomerID" runat="server" Width="92px" />&nbsp;<asp:Button ID="btnGetCustomer" runat="server" Text="Get Customer" Width="92px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCustomerID"
                    runat="server"
                    ErrorMessage="Please enter a customer ID."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtCustomerID"></asp:RequiredFieldValidator>
                <asp:CompareValidator
                    ID="cvCustomerID"
                    runat="server"
                    ErrorMessage="Make sure customer ID is an integer value."
                    ControlToValidate="txtCustomerID"
                    Text="*"
                    ForeColor="Red"
                    Operator="DataTypeCheck"
                    Type="Integer"></asp:CompareValidator>
                <asp:RegularExpressionValidator
                    ID="revCustomerID"
                    runat="server"
                    ErrorMessage="Make sure Customer ID is in a valid format (###-##-####)."
                    Text="*"
                    ForeColor="Red"
                    ControlToValidate="txtCustomerID"
                    ValidationExpression="^\d{3}-?\d{2}-?\d{4}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Address:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAddress" runat="server" ReadOnly="True" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">City:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCity" runat="server" ReadOnly="True" Width="303px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">State:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtState" runat="server" ReadOnly="True" Width="39px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Zip Code:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtZipCode" runat="server" ReadOnly="True" Width="79px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="72px" />
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnModify" runat="server" Text="Modify" Width="72px" />
            </td>
        </tr>
    </table>
</asp:Content>
