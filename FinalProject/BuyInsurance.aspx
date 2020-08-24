<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="BuyInsurance.aspx.cs" Inherits="FinalProject.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="right">
        <asp:Button  class="button button2"  Text="Go To Home"  ID="btnHome" runat="server" 
            onclick="btnHome_Click"  />
        <asp:Button class="button0 button2" ID="btnLogOut" Text="Logout" runat="server" 
            onclick="btnLogOut_Click" />
    </div>
    <div>
        <asp:Label ID="lblusername" runat="server" Text="Welcome"></asp:Label><br />
    <br />
        <asp:Button ID="btnViewProfile" runat="server" Text="View your Profile" OnClick="btnViewProfile_Click" />
        <br/>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [UserDetails] WHERE ([username] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
        <asp:Wizard ID="Wizard1" runat="server" Width="500px" ActiveStepIndex="0"  OnFinishButtonClick="Wizard1_FinishButtonClick" >
            <HeaderTemplate>
                <asp:Label ID="lblHeader" runat="server" Text="Buy Insurance" Font-Bold="True"></asp:Label>
            </HeaderTemplate>
            <SideBarStyle BackColor="Yellow" />
                <StepNavigationTemplate>
                    <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" />
                    <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                </StepNavigationTemplate>
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Select Plan" StepType="Start">
                    <div>
                        
                        <br/>
                        Select Plan<br /> &nbsp;<asp:DropDownList ID="DropDownList4" runat="server" class="field" Width="280px">
                            <asp:ListItem Text="Term Life Insurance at $100/Month"></asp:ListItem>
                            <asp:ListItem Text="Universal Life Insurance at $150/Month"></asp:ListItem>
                            <asp:ListItem Text="Indexed Life Insurance at $200/Month"></asp:ListItem>
                            <asp:ListItem Text="Variable Universal Life Insurance at $300/Month"></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Payment">
                <br />
                Credit Card:<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                      <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ErrorMessage="Select Card Type" Display="Dynamic" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
                    <br />
                    Credit Card No. (no spaces/hyphens):<asp:TextBox ID="TextBox1" runat="server" MaxLength="16"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="TextBox1" ForeColor="Red"
     ValidationExpression="^[1-9][0-9]{15}$" ErrorMessage="16 digit Number is required"></asp:RegularExpressionValidator>
                                     
                <br />
                Credit Card Expiry: 
                <br />
                Month <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem>MM</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Must select a month" InitialValue="MM" ForeColor="Red" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                Year <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Selected="True">2019</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2021</asp:ListItem>
                        <asp:ListItem>2022</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Card Expires too soon" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    
                <br />
                Coupon Code: <asp:TextBox ID="TextBox2" runat="server" MaxLength="3"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ForeColor="Red" ErrorMessage="Must start with 1 or 2" ControlToValidate="TextBox2" ValidationExpression="^[1-2]..$" Display="Dynamic"></asp:RegularExpressionValidator>
                </asp:WizardStep>

                <asp:WizardStep ID="WizardStep5" runat="server" StepType="Complete" Title="Receipt">
                    <asp:Label ID="Label1" runat="server" Text="Receipt" Font-Bold="True"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><asp:Button ID="Button1" runat="server" Text="Email Receipt" />

                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        </div>
         <asp:ValidationSummary ID="ValidationSummary1" runat="server"  HeaderText="Note: *, if any, are required fields"  ShowMessageBox="True" ShowSummary="False" />
</asp:Content>
