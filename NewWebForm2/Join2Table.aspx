<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Join2Table.aspx.cs" Inherits="NewWebForm2.Join2Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            Id : <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            Roll No : <asp:TextBox ID="txtrollno" runat="server"></asp:TextBox>
            Name : <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            Email : <asp:TextBox ID="txtemail" TextMode="Email" runat="server"></asp:TextBox>
            Address :<asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            Dept Name :<asp:TextBox ID="txtdept" runat="server"></asp:TextBox>
            Joining Date :<asp:TextBox ID="txtdate" TextMode="Date" runat="server"></asp:TextBox>
         <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />


        </div>--%>

        <h1>Join Two Table Using Join</h1>
        <div class="container">
            <div class="card">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />

                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" />
                        <asp:BoundField HeaderText="Roll No" DataField="Roll_No" />
                        <asp:BoundField HeaderText="Name" DataField="Name" />
                        <asp:BoundField HeaderText="Email" DataField="Email" />
                        <asp:BoundField HeaderText="Address" DataField="Address" />
                        <%--<asp:BoundField HeaderText="Department.Id" DataField="Department.Id"/>--%>
                        <asp:BoundField HeaderText="Dept Name" DataField="Dept_Name" />
                        <asp:BoundField HeaderText="Joining Date" DataField="Joining_Date" />

                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
