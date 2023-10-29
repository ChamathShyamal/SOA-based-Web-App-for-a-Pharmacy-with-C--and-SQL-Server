<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacyOrderStockWF.aspx.cs" Inherits="ClientApplication.PharmacyOrderStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style=" background-color:darkgray; text-align:center; margin:43px; margin-left:450px; border-radius:20px; width: 600px; height: 625px; border: 3px solid rgb(0, 0, 0);">
    <form id="form1" runat="server">
    <div>
        <br />
    <h2 style="font-family:cursive; color:#100C50";>Order Drugs</h2>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <br />
                    <asp:RequiredFieldValidator ID="RFVOrderId" runat="server" ErrorMessage="*Order ID Cannot Be Blank" ControlToValidate="txtOrderId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblOrderId" style=" width:60px; display:inline-block; margin-right:113px;" runat="server" Text="Order Id"></asp:Label>
                    <asp:TextBox ID="txtOrderId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVDrugName" runat="server" ErrorMessage="*Drug Name Cannot Be Blank" ControlToValidate="txtDrugName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblDrugName" style=" width:80px; display:inline-block; margin-right:90px;" runat="server" Text="Drug Name"></asp:Label>
                    <asp:TextBox ID="txtDrugName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVDrugBrand" runat="server" ErrorMessage="*Drug Brand Cannot Be Blank" ControlToValidate="txtDrugBrand" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblDrugBrand" style=" width:80px; display:inline-block; margin-right:90px;" runat="server" Text="Drug Brand"></asp:Label>
                    <asp:TextBox ID="txtDrugBrand" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVQuantity" runat="server" ErrorMessage="*Quantity Cannot Be Blank" ControlToValidate="txtQuantity" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                    
                    <br />
                    <asp:Label ID="lblQuantity" style=" width:60px; display:inline-block; margin-right:110px;" runat="server" Text="Quantity"></asp:Label>
                    <asp:TextBox ID="txtQuantity" type="number" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br />

                    <asp:RequiredFieldValidator ID="RFVPharmacyName" runat="server" ErrorMessage="*Pharmacy Name Cannot Be Blank" ControlToValidate="txtPharmacyName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>                
                    <br />
                    <asp:Label ID="lblPharmacyName" style=" width:110px; display:inline-block; margin-right:60px;" runat="server" Text="Pharmacy Name"></asp:Label>
                    <asp:TextBox ID="txtPharmacyName" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                    <br /><br />
       
                    <asp:Label ID="lblBranch" style=" width:50px; display:inline-block; margin-right:120px;" runat="server" Text="Branch"></asp:Label>
                    <asp:TextBox ID="txtBranch" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                 <!--<asp:RequiredFieldValidator ID="RFVBranch" runat="server" ErrorMessage="Branch Cannot Be Blank" ControlToValidate="txtBranch" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>-->
                    <br /><br />

                    <asp:Label ID="lblPharmacyStaffId" style=" width:120px; display:inline-block; margin-right:50px;" runat="server" Text="Pharmacy Staff Id"></asp:Label>
                    <asp:TextBox ID="txtPharmacyStaffId" style=" width:210px; height:25px; border: 2px solid #FFFFFF; color: #fff; border-radius: 5px; background-color: #4E4E4A;" runat="server"></asp:TextBox>
                <!--<asp:RequiredFieldValidator ID="RFVPharmacyStaffId" runat="server" ErrorMessage="Pharmacy Staff Id Cannot Be Blank" ControlToValidate="txtPharmacyStaffId" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>-->
                    <br />
                    <br />
                    <br />
                     <asp:Button ID="btnGetPharmacyStaffId" style=" width:400px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 30px; margin-right: 30px;"  runat="server" Text="Enter Pharmacy Name & Click Here To Get Branch And P Staff ID" OnClick="btnGetPharmacyStaffId_Click" />
     
                     <asp:Button ID="btnPlaceOrder" style=" width:400px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 30px; margin-right: 30px;"  runat="server" Text="Place An Order" OnClick="btnPlaceOrder_Click" />                

                     <asp:Button ID="btnClear" style=" width:400px; height:40px; background-color: #100C50; color: #fff; border-radius: 8px; cursor: pointer; margin-left: 30px; margin-right: 30px;"  runat="server" Text="Clear" OnClick="btnClear_Click" />
    </div>
    </form>
</body>
</html>
