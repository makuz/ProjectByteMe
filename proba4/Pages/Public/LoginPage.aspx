<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Layout/RegisterLoginMaster.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="proba4.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!DOCTYPE html>

    <div class="auto-style1">
    
        <strong>Login Page<br />
        </strong>
        <table class="tablewtbcg">
            <tr>
                <td class="auto-style3">Login</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxLogin" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLogin" runat="server" ControlToValidate="TextBoxLogin" ErrorMessage="Please enter your login" style="text-align: right"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonLogin" cssClass="buttonSubmit" runat="server" OnClick="ButtonLogin_Click" Text="Login" style="height: 26px" />
                <br />
            <br />
            <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
            <br />
            <br />
            <br />
                <td class="auto-style3">Please click here if you don&#39;t have username and password</td>
                <td class="auto-style4">
                    <a class="buttonSubmit" href="Registration/RegistrationPage.aspx">Register</a>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>
