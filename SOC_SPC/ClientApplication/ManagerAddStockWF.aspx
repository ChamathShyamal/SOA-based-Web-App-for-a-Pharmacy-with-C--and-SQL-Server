<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagerAddStockWF.aspx.cs" Inherits="ClientApplication.ManagerAddUpdateStockWF" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 600px; height: 690px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>Add Stocks</h2>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <br />
                    <asp:RequiredFieldValidator ID="RFVStockId" runat="server" ErrorMessage="*Stock ID Cannot Be Blank" ControlToValidate="txtStockId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblStockId" style=" width:65px; display:inline-block; margin-right:80px;" runat="server" Text="Stock Id"></asp:Label>
                    <asp:TextBox ID="txtStockId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVDrugName" runat="server" ErrorMessage="*Drug Name Cannot Be Blank" ControlToValidate="txtDrugName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblDrugName" style=" width:85px; display:inline-block; margin-right:60px;" runat="server" Text="Drug Name"></asp:Label>
                    <asp:TextBox ID="txtDrugName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVDrugCategory" runat="server" ErrorMessage="*Drug Category Cannot Be Blank" ControlToValidate="txtDrugCategory" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                   
                    <br />
                    <asp:Label ID="lblDrugCategory" style=" width:105px; display:inline-block; margin-right:40px;" runat="server" Text="Drug Category"></asp:Label>
                    <asp:TextBox ID="txtDrugCategory" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVDrugBrand" runat="server" ErrorMessage="*Drug Brand Cannot Be Blank" ControlToValidate="txtDrugBrand" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                       
                    <br />    
                    <asp:Label ID="lblDrugBrand" style=" width:87px; display:inline-block; margin-right:60px;" runat="server" Text="Drug Brand"></asp:Label>
                    <asp:TextBox ID="txtDrugBrand" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVQuantity" runat="server" ErrorMessage="*Quantity Cannot Be Blank" ControlToValidate="txtQuantity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                             
                    <br />
                    <asp:Label ID="lblQuantity" style=" width:70px; display:inline-block; margin-right:80px;" runat="server" Text="Quantity"></asp:Label>
                    <asp:TextBox ID="txtQuantity" type="number" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVSuitability" runat="server" ErrorMessage="*Name Of The Illness Cannot Be Blank" ControlToValidate="txtSuitability" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblSuitability" style=" width:150px; display:inline-block;" runat="server" Text="Name Of The Illness"></asp:Label>
                    <asp:TextBox ID="txtSuitability" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />

                    <asp:Label ID="lblSupplierName" style=" width:112px; display:inline-block; margin-right:40px;" runat="server" Text="Supplier Name"></asp:Label>
                    <asp:TextBox ID="txtSupplierName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                <!--<asp:RequiredFieldValidator ID="RFVSupplierNamey" runat="server" ErrorMessage="Supplier Name Cannot Be Blank" ControlToValidate="txtSupplierName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>-->
                    <br /><br />

                    <asp:Label ID="lblSupplierID" style=" width:92px; display:inline-block; margin-right:60px;" runat="server" Text="Supplier ID"></asp:Label>
                    <asp:TextBox ID="txtSupplierID" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                <!--<asp:RequiredFieldValidator ID="RFVSupplierID" runat="server" ErrorMessage="Supplier ID Cannot Be Blank" ControlToValidate="txtSupplierID" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btnGetSupplierId" style=" width:365px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;"  runat="server" Text="Enter Supplier Name & Click Here To Get Supplier ID" OnClick="btnGetSupplierId_Click" />

                    <asp:Button ID="btnAddStock" style=" width:365px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;"  runat="server" Text="Add To Stock" OnClick="btnAddStock_Click" />
               
                    <asp:Button ID="btnClear" style=" width:365px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 35px; margin-right: 30px;"  runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
