<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacyStaffRegistrationWF.aspx.cs" Inherits="ClientApplication.PharmacyStaffRegistrationWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 600px; height: 720px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>Pharmacy Staff Registration</h2>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

                    <asp:RequiredFieldValidator ID="RFVPharmacyStaffId" runat="server" ErrorMessage="*Pharmacy Staff ID Cannot Be Blank" ControlToValidate="txtPharmacyStaffId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblPharmacyStaffId" style=" width:120px; display:inline-block;" runat="server" Text="Pharmacy Staff ID"></asp:Label>
                    <asp:TextBox ID="txtPharmacyStaffId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyEmployeeName" runat="server" ErrorMessage="*Employee Name Cannot Be Blank" ControlToValidate="txtPharmacyEmployeeName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                   
                    <br />
                    <asp:Label ID="lblPharmacyEmployeeName" style=" width:110px; display:inline-block; margin-right:10px;" runat="server" Text="Employee Name"></asp:Label>
                    <asp:TextBox ID="txtPharmacyEmployeeName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />
 
                    <asp:RequiredFieldValidator ID="RFVPharmacyUsername" runat="server" ErrorMessage="*Username Cannot Be Blank" ControlToValidate="txtPharmacyUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblPharmacyUsername" style=" width:70px; display:inline-block; margin-right:50px;" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtPharmacyUsername" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyPassword" runat="server" ErrorMessage="*Password Cannot Be Blank" ControlToValidate="txtPharmacyPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblPharmacyPassword" style=" width:70px; display:inline-block; margin-right:50px;" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPharmacyPassword"  type="password" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyConPassword" runat="server" ErrorMessage="*Confirm Password Cannot Be Blank" ControlToValidate="txtPharmacyConPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <asp:CompareValidator ID="CVPharmacyConPassword" runat="server" ErrorMessage="*Password and Confirm Password Should Match" ControlToCompare="txtPharmacyPassword" ControlToValidate="txtPharmacyConPassword" ForeColor="Red"></asp:CompareValidator>
                    <br /
                    <asp:Label ID="lblPharmacyConPassword" style=" width:120px; display:inline-block;" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="txtPharmacyConPassword" type="password" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblPharmacyUserType" style=" width:70px; display:inline-block; margin-right:50px;" runat="server" Text="User Type"></asp:Label>
                    <asp:DropDownList ID="dlPharmacyUserType" style=" width:220px; height:30px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server">
                        <asp:ListItem>Pharmacy Staff</asp:ListItem>
                        <asp:ListItem>Warehouse Staff</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyName" runat="server" ErrorMessage="*Pharmacy Name Cannot Be Blank" ControlToValidate="txtPharmacyName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblPharmacyName" style=" width:110px; display:inline-block; margin-right:10px;" runat="server" Text="Pharmacy Name"></asp:Label>
                    <asp:TextBox ID="txtPharmacyName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVBranch" runat="server" ErrorMessage="*Branch Cannot Be Blank" ControlToValidate="txtBranch" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                   
                    <br />
                    <asp:Label ID="lblBranch" style=" width:50px; display:inline-block; margin-right:70px;" runat="server" Text="Branch"></asp:Label>
                    <asp:TextBox ID="txtBranch" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyEmail" runat="server" ErrorMessage="*Email Cannot Be Blank" ControlToValidate="txtPharmacyEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <asp:RegularExpressionValidator ID="REVPharmacyEmail" runat="server" ErrorMessage="*Enter a Valid Email Address" ControlToValidate="txtPharmacyEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                    <br />
                    <asp:Label ID="lblPharmacyEmail" style=" width:40px; display:inline-block; margin-right:80px;" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtPharmacyEmail" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyTelephone" runat="server" ErrorMessage="*Telephone Cannot Be Blank" ControlToValidate="txtPharmacyTelephone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                                    
                    <br />
                    <asp:Label ID="lblPharmacyTelephone" style=" width:65px; display:inline-block; margin-right:55px;" runat="server" Text="Telephone"></asp:Label>
                    <asp:TextBox ID="txtPharmacyTelephone" type="number" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnRegisterPharmacyStaff" style=" width:340px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 30px; margin-right: 30px;" runat="server" Text="Register" OnClick="btnRegisterPharmacyStaff_Click" />                

                    <asp:Button ID="btnClear" style=" width:340px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 30px; margin-right: 30px;" runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
