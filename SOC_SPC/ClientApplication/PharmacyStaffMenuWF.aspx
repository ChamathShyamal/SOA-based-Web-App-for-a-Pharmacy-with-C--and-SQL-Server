<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacyStaffMenuWF.aspx.cs" Inherits="ClientApplication.PharmacyStaffMenu" %>

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
        <h2 style="font-family:cursive; color:#100C50";>Welcome To Pharmacy Staff Menu..!</h2>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:Button ID="btnOrderStock" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Click Here To Order Drugs" OnClick="btnOrderStock_Click" />        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:Button ID="btnSearchStock" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Click Here To Search Drugs" OnClick="btnSearchStock_Click" />        
    </div>
    </form>
</body>
</html>