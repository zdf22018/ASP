<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Checkoutpage.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .newStyle1 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .newStyle2 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .newStyle3 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .auto-style2 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            width: 143px;
        }
        .auto-style4 {
            height: 23px;
        }
        .newStyle4 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .newStyle5 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
        }
        .auto-style5 {
            width: 147px;
        }
        .auto-style7 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            width: 146px;
        }
        .auto-style8 {
            text-align: left;
        }
        .newStyle6 {
            font-family: "Calibri Light";
            font-size: medium;
            font-weight: lighter;
            color: #FF0000;
        }
        .newStyle7 {
            font-family: "Calibri Light";
            font-size: medium;
            font-weight: lighter;
            color: #FF0000;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style10 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            width: 147px;
        }
        .auto-style11 {
            font-family: Calibri;
            font-size: medium;
            font-weight: lighter;
            font-style: normal;
            font-variant: normal;
            text-transform: none;
            width: 146px;
            height: 27px;
        }
        .auto-style12 {
            height: 27px;
        }
        .newStyle8 {
            font-family: "Calibri Light";
            font-size: medium;
            font-weight: lighter;
            color: #FF0000;
        }
        .newStyle9 {
            font-family: "Calibri Light";
            font-size: medium;
            font-weight: lighter;
            color: #FF0000;
        }
        .newStyle10 {
            font-family: "Calibri Light";
            font-size: medium;
            font-weight: lighter;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <div id="wrap">
    <form id="form1" runat="server">
        <div>
            <h1>Check Out Page</h1>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="newStyle10" />
            <h2>Contact Information</h2>

            
                <table class="auto-style1" id ="contact">
                    <tr>
                        <td class="auto-style2"><p><strong class="newStyle3">Email Address:</strong></p></td>
                        <td>
                            <asp:TextBox ID="TbEmail" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Email address is required" CssClass="newStyle6" Display="Dynamic" ControlToValidate="TbEmail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TbEmail" CssClass="newStyle7" Display="Dynamic" ErrorMessage="Email is not valid" ValidateRequestMode="Disabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Email R-Entry:</td>
                        <td>
                            <asp:TextBox ID="TbEmailRetype" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmailRetype" runat="server" ErrorMessage="Re-type email address" CssClass="newStyle6" Display="Dynamic" ControlToValidate="TbEmailRetype"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TbEmail" ControlToValidate="TbEmailRetype" CssClass="newStyle7" Display="Dynamic" ErrorMessage="Email re-entry does not match"></asp:CompareValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">First Name:</td>
                        <td>
                            <asp:TextBox ID="TbFirst" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ErrorMessage="First Name is Required" 
                                CssClass="newStyle6" Display="Dynamic" ControlToValidate="TbFirst"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Last Name:</td>
                        <td>
                            <asp:TextBox ID="TbLast" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ErrorMessage="Last Name is Required" CssClass="newStyle6"
                                Display="Dynamic" ControlToValidate="TbLast"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Phone Number:</td>
                        <td>
                            <asp:TextBox ID="TbPhone" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ErrorMessage="Phone is Required" CssClass="newStyle6"
                                display="Dynamic" ControlToValidate="TbPhone"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TbPhone" CssClass="newStyle7" ErrorMessage="Phone format should be 123-456-7890" ValidationExpression="^[0-9]{3}\-[0-9]{3}\-[0-9]{4}$"></asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
            <h2>Billing Address</h2>
            
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">Address:</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="TbAddress" runat="server" Width="245px" CssClass="auto-style9"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbAddress" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style12"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">City:</td>
                        <td>
                            <asp:TextBox ID="TbCity" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TbCity" CssClass="newStyle8" Display="Dynamic" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Province:</td>
                        <td>
                            <asp:TextBox ID="TbState" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TbState" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Province is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Zip Code:</td>
                        <td>
                            <asp:TextBox ID="TbZipCode" runat="server" Width="245px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TbZipCode" CssClass="newStyle9" Display="Dynamic" ErrorMessage="Zip code format is not valid" ValidationExpression="[ABCEGHJKLMNPRSTVXYabceghjklmnprstvx][0-9][ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz] ?[0-9][ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz][0-9]"></asp:RegularExpressionValidator>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TbZipCode" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Zip code is Required"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
            <h2>Shipping Address</h2>
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:CheckBox ID="CbShipping" runat="server" text="Same as billing address" AutoPostBack="True" OnCheckedChanged="CbShipping_CheckedChanged"/>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Address:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TbShippingAddress" runat="server" Width="245px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TbShippingAddress" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style10">City:</td>
            <td>
                <asp:TextBox ID="TbShippingCity" runat="server" Width="245px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TbShippingCity" CssClass="newStyle8" Display="Dynamic" ErrorMessage="City is Required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Province:</td>
            <td>
                <asp:TextBox ID="TbShippingState" runat="server" Width="245px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TbShippingState" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Province  is Required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Zip code:</td>
            <td>
                <asp:TextBox ID="TbShippingZipCode" runat="server" Width="245px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TbShippingZipCode" CssClass="newStyle8" Display="Dynamic" ErrorMessage="Zip code is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TbShippingZipCode" CssClass="newStyle9" Display="Dynamic" ErrorMessage="Zip code format is not valid" ValidationExpression="[ABCEGHJKLMNPRSTVXYabceghjklmnprstvx][0-9][ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz] ?[0-9][ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvwxyz][0-9]"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <p class="auto-style8">
                <asp:Button ID="Button1" runat="server" Text="Check Out" OnClick="Button1_Click" Width="292px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Clear Form" Width="265px" />
&nbsp;&nbsp;
            </p>
    </form>
        </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </body>
</html>
