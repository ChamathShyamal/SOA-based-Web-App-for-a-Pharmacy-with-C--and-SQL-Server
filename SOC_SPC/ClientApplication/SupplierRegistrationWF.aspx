<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupplierRegistrationWF.aspx.cs" Inherits="ClientApplication.SupplierRegistrationWF" %>

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
    <h2 style="font-family:cursive; color:#100C50";>Supplier Registration</h2>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    <br />
                    <asp:RequiredFieldValidator ID="RFVSupplierId" runat="server" ErrorMessage="*Supplier ID Cannot Be Blank" ControlToValidate="txtSupplierId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblSupplierId" style=" width:110px; display:inline-block; margin-right:30px;" runat="server" Text="Supplier ID"></asp:Label>
                    <asp:TextBox ID="txtSupplierId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:RequiredFieldValidator ID="RFVSupplierName" runat="server" ErrorMessage="*Supplier Name Cannot Be Blank" ControlToValidate="txtSupplierName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblSupplierName" style=" width:125px; display:inline-block; margin-right:15px;" runat="server" Text="Supplier Name"></asp:Label>
                    <asp:TextBox ID="txtSupplierName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:RequiredFieldValidator ID="RFVSupCompanyName" runat="server" ErrorMessage="*Company Name Cannot Be Blank" ControlToValidate="txtSupCompanyName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblSupCompanyName" style=" width:140px; display:inline-block;" runat="server" Text="Company Name"></asp:Label>
                    <asp:TextBox ID="txtSupCompanyName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:RequiredFieldValidator ID="RFVSupEmail" runat="server" ErrorMessage="*Email Cannot Be Blank" ControlToValidate="txtSupEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <asp:RegularExpressionValidator ID="REVSupEmail" runat="server" ErrorMessage="Enter a Valid Email Address" ControlToValidate="txtSupEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lblSupEmail" style=" width:80px; display:inline-block;  margin-right:60px;" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtSupEmail" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:RequiredFieldValidator ID="RFVSupTelephone" runat="server" ErrorMessage="*Telephone Cannot Be Blank" ControlToValidate="txtSupTelephone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblSupTelephone" style=" width:100px; display:inline-block; margin-right:40px;" runat="server" Text="Telephone"></asp:Label>
                    <asp:TextBox ID="txtSupTelephone" type="number" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnRegisterSupplier" style=" width:345px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 50px; margin-right: 30px;"  runat="server" Text="Register" OnClick="btnRegisterSupplier_Click" />                

                    <asp:Button ID="btnClear" style=" width:345px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 50px; margin-right: 30px;"  runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
