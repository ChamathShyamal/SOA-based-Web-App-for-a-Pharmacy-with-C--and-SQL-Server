<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersLoginWF.aspx.cs" Inherits="ClientApplication.UsersLoginWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 600px; height: 625px; border: 3px solid rgb(0, 0, 0);">        
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <h2 style="font-family:cursive; color:#100C50";>Login Interface</h2>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <br />
        <br />
                    <asp:RequiredFieldValidator ID="RFVUsername" runat="server" ErrorMessage="*Username Cannot Be Blank" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />                
                    <asp:Label ID="lblUsername" style=" width:110px; display:inline-block;" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtUsername" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br /><br />

                    <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="*Password Cannot Be Blank" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />                
                    <asp:Label ID="lblPassword" style=" width:110px; display:inline-block;" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server" type="password"></asp:TextBox>
                    <br /><br /><br /><br />

                    <asp:Label ID="lblUserType" style=" width:110px; display:inline-block;" runat="server" Text="User Type"></asp:Label>
                    <asp:DropDownList ID="dlUserType" style=" width:215px; height:33px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server">
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Warehouse Staff</asp:ListItem>
                        <asp:ListItem>Pharmacy Staff</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                   <asp:Button ID="btnLogin" style=" width:310px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 50px; margin-right: 30px;" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
