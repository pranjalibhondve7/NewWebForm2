<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageUpload.aspx.cs" Inherits="NewWebForm2.ImageUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="imgUser" runat="server" Width="150px" Height="150px" />
            <asp:Label ID="Label1" runat="server" Text="Upload File : "></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server"  Text="Submit" onclick="Button1_Click" />
            <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Download" OnClick="Button2_Click"/>
            

        </div>
    </form>
</body>
</html>
