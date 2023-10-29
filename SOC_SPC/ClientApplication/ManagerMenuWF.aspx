<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerMenuWF.aspx.cs" Inherits="ClientApplication.ManagerMenuWF" %>

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
            <h2 style="font-family:cursive; color:#100C50";>Welcome To Manager Menu..!</h2>
        <br />
        <br />
        <br />
        <br />
            <asp:Button ID="btnRegSuppliers" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Register Suppliers" OnClick="btnRegSuppliers_Click" />
        <br />
        <br />
            <asp:Button ID="btnRegWarehouseStaff" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Register Warehouse Staff" OnClick="btnRegWarehouseStaff_Click" />
        <br />
        <br />
            <asp:Button ID="btnRegPharmacyStaff" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Register Pharmacy Staff" OnClick="btnRegPharmacyStaff_Click" />
        <br />
        <br />
            <asp:Button ID="btnAddStock" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Add Stock" OnClick="btnAddStock_Click" />
        <br />
        <br />
            <asp:Button ID="btnUpdateStock" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="Update Stock" OnClick="btnUpdateStocks_Click" />
        <br />
        <br />
            <asp:Button ID="btnViewStockOrderTable" style=" width:355px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 40px; margin-right: 30px;" runat="server" Text="View Stocks And Orders" OnClick="btnViewStockTable_Click" />
        </div>
    </form>
</body>
</html>
