<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ddlcountryTask.aspx.cs" Inherits="NewWebForm2.ddlcountryTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="card">
                <h1>DropDown List</h1>
                <div class="row form-group">
                    Country:
                    <asp:DropDownList ID="ddlcountry" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList><br />

                </div>
                <div class="row form-group">
                    State :
                    <asp:DropDownList ID="ddlstate" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList><br />
                </div>
                <div class="row form-group">
                    City :
                    <asp:DropDownList ID="ddlcity" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlcity_SelectedIndexChanged"></asp:DropDownList><br />
                </div>
                <div>
                    <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-primary" OnClick="btnsubmit_Click" Text="Submit" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
