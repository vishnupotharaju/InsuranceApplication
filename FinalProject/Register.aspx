<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FinalProject.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table border="0" align="center"
            style="height: 496px; width: 629px">
            <tr>
                <td >Username</td>
                <td >
                    <asp:TextBox class="field" ID="txtName" runat="server" 
                        Width="263px"></asp:TextBox></td>
                <td class="style3">
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Mandatory Field" ForeColor="Red"
                ControlToValidate="txtName" ValidationGroup="v2"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Use a-zA-Z" ForeColor="Red"
                ControlToValidate="txtName" ValidationExpression="^([A-Za-z]*)$" 
                Display="None" ValidationGroup="v2"></asp:RegularExpressionValidator>
                </td>
            </tr>
           <tr>
               <td >Password</td>
                <td >
                    <asp:TextBox class="field" ID="txtPassword" runat="server" TextMode="Password" 
                        Width="263px"></asp:TextBox></td>
                <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mandatory Field" ForeColor="Red"
                ControlToValidate="txtPassword" ValidationGroup="v2"></asp:RequiredFieldValidator>
                </td>
           </tr>
            <tr>
                <td >Age</td>
                <td ]>
                    <asp:TextBox class="field" runat="server" ID="txtage" 
                        Width="263px"/></td>
                <td class="style3">
                    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ErrorMessage="Mandatory Field"
                    ForeColor="Red" ControlToValidate="txtAge" SetFocusOnError="true" ValidationGroup="v2"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvAge" runat="server" ErrorMessage="Enter Age Between 18 and 60"
                    MinimumValue="18" MaximumValue="60" ForeColor="Red" ControlToValidate="txtAge" SetFocusOnError="true" ValidationGroup="v2">
                    </asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">Gender</td>
                <td class="style10">
                    <asp:RadioButtonList ID="rbtnGender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
            <td class="style1"><asp:Button class="btn" ID="btnReset" Text="Reset" runat="server" 
                    onclick="btnReset_Click" /></td>
            <td class="style13"><asp:Button class="btn" ID="btnregister" Text="Register" runat="server" ValidationGroup="v2"
                    onclick="btnregister_Click" />
                </td>
            <td class="style1"><asp:Button class="btn" ID="btnLogin" Text="Login" runat="server" OnClick="btnLogin_Click" 
                     /></td>
            </tr>
        </table>
        </div>
</asp:Content>
