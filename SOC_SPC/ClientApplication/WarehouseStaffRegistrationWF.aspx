<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WarehouseStaffRegistrationWF.aspx.cs" Inherits="ClientApplication.WarehouseStaffRegistrationWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 600px; height: 625px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>Warehouse Staff Registration</h2>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <br />
                    <asp:RequiredFieldValidator ID="RFVWarehouseStaffId" runat="server" ErrorMessage="*Warehouse Staff ID Cannot Be Blank" ControlToValidate="txtWarehouseStaffId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblWarehouseStaffId" style=" width:150px; display:inline-block;" runat="server" Text="Warehouse Staff ID"></asp:Label>
                    <asp:TextBox ID="txtWarehouseStaffId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                     <br />

                    <asp:RequiredFieldValidator ID="RFVWareHouseEmployeeName" runat="server" ErrorMessage="*Employee Name Cannot Be Blank" ControlToValidate="txtWareHouseEmployeeName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblWareHouseEmployeeName" style=" width:140px; display:inline-block;  margin-right:10px;" runat="server" Text="Employee Name"></asp:Label>
                    <asp:TextBox ID="txtWareHouseEmployeeName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVWareHouseUsername" runat="server" ErrorMessage="*Username Cannot Be Blank" ControlToValidate="txtWareHouseUsername" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblWareHouseUsername" style=" width:100px; display:inline-block; margin-right:50px;" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtWareHouseUsername" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVWareHousePassword" runat="server" ErrorMessage="*Password Cannot Be Blank" ControlToValidate="txtWareHousePassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblWareHousePassword" style=" width:100px; display:inline-block;  margin-right:50px;" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtWareHousePassword"  type="password" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVWareHouseConPassword" runat="server" ErrorMessage="*Confirm Password Cannot Be Blank" ControlToValidate="txtWareHouseConPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <asp:CompareValidator ID="CVWareHouseConPassword" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server" ErrorMessage="*Password and Confirm Password Should Match" ControlToCompare="txtWareHousePassword" ControlToValidate="txtWareHouseConPassword" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:Label ID="lblWareHouseConPassword" style=" width:150px; display:inline-block;" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="txtWareHouseConPassword"  type="password" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblWareHouseUserType" style=" width:100px; display:inline-block; margin-right:50px;" runat="server" Text="User Type"></asp:Label>
                    <asp:DropDownList ID="dlWareHouseUserType" style=" width:220px; height:30px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server">
                        <asp:ListItem>Warehouse Staff</asp:ListItem>
                        <asp:ListItem>Pharmacy Staff</asp:ListItem>
                    </asp:DropDownList>                
                    <br />

                    <asp:RequiredFieldValidator ID="RFVWareHouseEmail" runat="server" ErrorMessage="*Email Cannot Be Blank" ControlToValidate="txtWareHouseEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <asp:RegularExpressionValidator ID="REVWareHouseEmail" runat="server" ErrorMessage="*Enter a Valid Email Address" ControlToValidate="txtWareHouseEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>            
                    <br />           
                    <asp:Label ID="lblWareHouseEmail" style=" width:75px; display:inline-block; margin-right:75px;" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtWareHouseEmail" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVWareHouseTelephone" runat="server" ErrorMessage="*Telephone Cannot Be Blank" ControlToValidate="txtWareHouseTelephone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />            
                    <asp:Label ID="lblWareHouseTelephone" style=" width:100px; display:inline-block; margin-right:50px;" runat="server" Text="Telephone"></asp:Label>
                    <asp:TextBox ID="txtWareHouseTelephone" type="number" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnRegisterWareHouseStaff" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Register" OnClick="btnRegisterWareHouseStaff_Click" />                

                    <asp:Button ID="btnClear" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
