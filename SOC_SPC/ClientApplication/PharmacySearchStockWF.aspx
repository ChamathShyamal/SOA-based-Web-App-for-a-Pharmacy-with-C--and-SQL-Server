<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacySearchStockWF.aspx.cs" Inherits="ClientApplication.PharmacySearchOrderStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 690px; height: 635px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>Pahramcy Search/Order Drugs</h2>
        <br />
                    <asp:Label ID="lblStockId"  style=" width:65px; display:inline-block; margin-right:85px;" runat="server" Text="Stock Id"></asp:Label>
                    <asp:TextBox ID="txtStockId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />
     
                    <asp:Label ID="lblDrugName"  style=" width:85px; display:inline-block; margin-right:65px;" runat="server" Text="Drug Name"></asp:Label>
                    <asp:TextBox ID="txtDrugName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblDrugCategory"  style=" width:105px; display:inline-block; margin-right:45px;" runat="server" Text="Drug Category"></asp:Label>
                    <asp:TextBox ID="txtDrugCategory" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />
  
                    <asp:Label ID="lblDrugBrand"  style=" width:90px; display:inline-block; margin-right:60px;" runat="server" Text="Drug Brand"></asp:Label>
                    <asp:TextBox ID="txtDrugBrand" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />
 
                    <asp:Label ID="lblQuantity"  style=" width:70px; display:inline-block; margin-right:80px;" runat="server" Text="Quantity"></asp:Label>
                    <asp:TextBox ID="txtQuantity" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblSuitability"  style=" width:150px; display:inline-block;" runat="server" Text="Name Of The Illness"></asp:Label>
                    <asp:TextBox ID="txtSuitability" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblSupplierName"  style=" width:110px; display:inline-block; margin-right:40px;" runat="server" Text="Supplier Name"></asp:Label>
                    <asp:TextBox ID="txtSupplierName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblSupplierID"  style=" width:90px; display:inline-block; margin-right:60px;" runat="server" Text="Supplier ID"></asp:Label>
                    <asp:TextBox ID="txtSupplierID" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br /><br /><br />
    
                    <asp:Button ID="btnPharmacySearchStock" style=" width:365px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;" runat="server" Text="Search Drugs (Check Below For The Results)" OnClick="btnPharmacySearchStock_Click" />               
                    <br />
                    <asp:Button ID="btnClear" style=" width:365px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <h3 style="font-family:sans-serif; color:#100C50";>Searched Results</h3>
                    <asp:GridView ID="GVPharmacySearchStock" runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="No Results Found For The Searched Value!"></asp:GridView>
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
