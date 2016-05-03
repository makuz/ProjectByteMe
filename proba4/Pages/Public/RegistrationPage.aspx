<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Layout/RegisterLoginMaster.Master" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="proba4.RegistrationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
        <strong>Registration Page
        </strong>
        <table>
            <br /><br />
            <tr class="tablewtbcg">
                <td class="boxTab">Name</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Please enter user name" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">Surname</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxSurname" runat="server" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" runat="server" ControlToValidate="TextBoxSurname" ErrorMessage="Please enter surname" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">Login</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxLogin" runat="server" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogin" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="Please enter login" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">E-mail</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Please enter e-mail" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">Password</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">Confirm password</td>
                <td class="boxTab2">
                    <asp:TextBox ID="TextBoxConfirmPassword" runat="server" TextMode="Password" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; padding: 10px; margin:2px;"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" runat="server" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Please confirm your password" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidatorConfirmPassword" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="Both paswords must be the same"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">Country</td>
                <td class="boxTab2">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="200px" style ="border-radius: 5px 5px 5px 5px; opacity:1; box-shadow: 3px 2px 12px 3px #acadad; width: 180px; height: 26px; margin:2px;">
                        <asp:ListItem>Select country</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>United Kingdom</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Italy</asp:ListItem>
                        <asp:ListItem Value="Poland"></asp:ListItem>
                        <asp:ListItem>Norway</asp:ListItem>
                        <asp:ListItem>Sweden</asp:ListItem>
                        <asp:ListItem>Canada</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCountry" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Enter country" style="text-align: right; color: white; text-shadow:2px 2px 2px #504e4e; padding-left:5px; font-size: medium; font-weight:bold; "></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="boxTab">&nbsp;</td>
                <td class="boxTab2">
                    <asp:Button ID="ButtonSubmit" runat="server" CssClass="buttonSubmit" OnClick="AddButton_click" Text="Submit" />
                    <input id="Reset1" class="buttonSubmit" type="reset" value="Reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="boxTab">&nbsp;</td>
                <td class="boxTab2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                
        </table>
    
    </div>
</asp:Content>
