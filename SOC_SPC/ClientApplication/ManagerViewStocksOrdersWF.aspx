<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerViewStocksOrdersWF.aspx.cs" Inherits="ClientApplication.ManagerViewStocksOrdersWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 700px; height: 625px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>View Added Stocks & Placed Pharmacy Orders</h2>
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        <br />
                 <asp:Label ID="lblOrderId" style=" width:60px; display:inline-block; margin-right:65px;" runat="server" Text="Oder ID"></asp:Label>
                 <asp:TextBox ID="txtOrderId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br /><br />

                 <asp:Label ID="lblDrugName" style=" width:80px; display:inline-block; margin-right:45px;" runat="server" Text="Drug Name"></asp:Label>
                 <asp:TextBox ID="txtDrugName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br /><br />

                 <asp:Label ID="lblDrugBrand" style=" width:80px; display:inline-block; margin-right:45px;" runat="server" Text="Drug Brand"></asp:Label>
                 <asp:TextBox ID="txtDrugBrand" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br /><br />

                 <asp:Label ID="lblPharmacyName" style=" width:110px; display:inline-block; margin-right:15px;" runat="server" Text="Pharmacy Name"></asp:Label>
                 <asp:TextBox ID="txtPharmacyName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br /><br />

                 <asp:Label ID="lblBranch" style=" width:50px; display:inline-block; margin-right:75px;" runat="server" Text="Branch"></asp:Label>
                 <asp:TextBox ID="txtBranch" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br /><br />

                 <asp:Label ID="lblPharmacyStaffId" style=" width:125px; display:inline-block;" runat="server" Text="Pharmacy Staff ID"></asp:Label>
                 <asp:TextBox ID="txtPharmacyStaffId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 <br />
                 <asp:Button ID="btnViewStock" style=" width:350px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;"  runat="server" Text="View Stock" OnClick="btnViewStock_Click" />
                 
                 <asp:Button ID="btnViewOrders" style=" width:350px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;"  runat="server" Text="View Orders" OnClick="btnViewOrders_Click" />            
                 
                 <asp:Button ID="btnSearchOrders" style=" width:350px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;" runat="server" Text="Search Orders" OnClick="btnSearchOrders_Click" />
       
                 <asp:Button ID="btnClear" style=" width:350px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;" runat="server" Text="Clear" OnClick="btnClear_Click" />
                 <br />
                 <br />
                 <br />
                 <br />
                 <h3 style="font-family:sans-serif; color:#100C50";>Results</h3>
                 <asp:GridView ID="GVStockOrdersView" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="No Results Found For The Searched Value!"></asp:GridView>
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
                 <br />
         </div>
    </form>
</body>
</html>
