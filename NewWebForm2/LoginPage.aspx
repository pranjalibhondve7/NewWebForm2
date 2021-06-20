<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="NewWebForm2.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login Page</h1>
        <div class="container">

            <div class="row">
                <div class="col-6">
                    User Name : 
                 <asp:TextBox ID="txtuser" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtuser" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                </div>
                <div class="col-6">
                    Password :
                  <asp:TextBox ID="txtpass" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <%--<div class="row">
                <div class="col-6">
                    Confirm Password : 
            <asp:TextBox ID="txtcpass" CssClass="form-control" placeholder="Enter confirm Password" runat="server"></asp:TextBox>
                    
                    <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtcpass" ForeColor="Red" ErrorMessage="Password Not Matching"></asp:CompareValidator>--%>
                <%--</div>
                <div class="col-6"></div>--%>
            <%--</div>--%>--%>
            <div class="q">
            <asp:Button ID="btnlogin" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnlogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
