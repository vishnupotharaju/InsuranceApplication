<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <table  class="content" style="height: 260px; width: 459px" >
            <tr>
            <td colspan="2">
                <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                  <h3>Please Login/Register to buy Insurance</h3>
            </AnonymousTemplate>
            <LoggedInTemplate>
                Hi
                <asp:LoginName ID="LoginName1" runat="server" />
            </LoggedInTemplate>
        </asp:LoginView> 
            </td>
            </tr>
            <tr>
                <td  > Username</td>
                <td><asp:TextBox class="field" ID="UserName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
            <td  > Password</td>
            <td><asp:TextBox class="field" ID="Password" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
            <td ><asp:Button class="btn"  ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" /></td>
             <td><asp:Button class="btn"  ID="Login" Text="Login" runat="server" 
                     onclick="Login_Click" /></td>  
            </tr>
            <tr>
            <td align="center"colspan="2">
             <br />
                <asp:Literal ID="Literal1" runat="server" />   
            </td>
            </tr>
        </table>
    </div>
    
</asp:Content>
