<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="NewWebForm2.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grid View</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name : <asp:TextBox ID="txtname" runat="server"></asp:TextBox><br />
            Email : <asp:TextBox ID="txtemail" TextMode="Email" runat="server"></asp:TextBox><br />
            Phone No : <asp:TextBox ID="txtphone" TextMode="Phone" runat="server"></asp:TextBox><br />
            Address : <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox><br />
            Pin Code : <asp:TextBox ID="txtpincode" TextMode="Number" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" /><br />

            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            


            <columns>

                <asp:BoundField HeaderText="Your Name" DataField="Name" />
                <asp:BoundField HeaderText="Your Email" DataField="Email" />
                <asp:BoundField HeaderText="Your Phone NO" DataField="Phone_No" />
                <asp:BoundField HeaderText="Your Address" DataField="Address" />
                <asp:BoundField HeaderText="Your Pincode" DataField="Pincode" />
                
            </columns>
            
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
