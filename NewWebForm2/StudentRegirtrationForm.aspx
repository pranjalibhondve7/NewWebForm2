<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegirtrationForm.aspx.cs" Inherits="NewWebForm2.StudentRegirtrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <h1><u>Student Registration Form</u></h1>
        <div class="container">
            <div class="row form-group">
                <div class="col-6">
                    Roll_No :
                    <asp:TextBox ID="txtrollno" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    Name :
                    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row form-group">
                <div class="col-6">
                    Email :
                    <asp:TextBox ID="txtemail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    DOB :
                    <asp:TextBox ID="txtDOB"  CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox><br />
                </div>
            </div>

            <div class="row form-group">
                <div class="col-6">
                    Class :
                    <asp:TextBox ID="txtclass" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    Mobile No. :
                    <asp:TextBox ID="txtmob" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
            </div>

            <%--<asp:Label ID="Label4" runat="server" Text="Gender : "></asp:Label>
            <asp:RadioButton ID="rbgender" runat="server" />
                    <asp:RadioButton ID="male" Text=" Male" GroupName="gender" runat="server" />
                    <asp:RadioButton ID="female" Text=" Female" GroupName="gender" runat="server" />
                    <asp:RadioButton ID="other" Text=" Other" GroupName="gender" runat="server" /><br />--%>
            <div class="row form-group">
                <div class="col-6">
                    Address :
                    <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    <asp:Label ID="Label7"  runat="server" Text="City : "></asp:Label>
                    <asp:DropDownList ID="city" CssClass="form-control"  runat="server">
                        <asp:ListItem>------Select------</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                    </asp:DropDownList><br />
                </div>
            </div>

            <div class="row form-group">
                <div class="col-6">
                    <asp:Label ID="Label8"  runat="server" Text="State : "></asp:Label>
                    <asp:DropDownList ID="State" CssClass="form-control"  runat="server">
                        <asp:ListItem>------Select------</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                    </asp:DropDownList><br />
                </div>
                <div class="col-6">
                    Pin Code : 
                     <asp:TextBox ID="txtpincode" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                </div>
            </div>

            <div class="row form-group">
                <div class="col-6">
                    Fees :
                    <asp:TextBox ID="txtfees" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    Cources :
                    <asp:TextBox ID="txtcourse" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row form-group">
                <div class="col-6">
                    User Name :
                    <asp:TextBox ID="txtusename" CssClass="form-control" runat="server"></asp:TextBox><br />
                </div>
                <div class="col-6">
                    Password :
                     <asp:TextBox ID="txtpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox><br />
                </div>
            </div>
            <div class="row form-group">
                <div class="col-6"></div>

                <div class="col-6">
                    Confirm Password :
                    <asp:TextBox ID="txtcpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox><br />
                </div>
            </div>

            <div class="q">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click1" />
            </div>
        </div>
    </form>
</body>

</html>
