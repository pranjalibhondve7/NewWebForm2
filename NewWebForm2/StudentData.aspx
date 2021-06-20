<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentData.aspx.cs" Inherits="NewWebForm2.StudentData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title> Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">

        <h1><u>Student Registration Form</u></h1>
        <div class="container">
            <div class="row form-group">
                <div class="col-md-6">
                    Roll_No :
                    <%--<asp:TextBox ID="txtRollNo" CssClass="form-control" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlrollno" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlrollno_SelectedIndexChanged"></asp:DropDownList>
                    
                </div>
                <div class="col-md-6">
                    St_Name :
                    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" ForeColor="Red" runat="server" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>--%>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    S_Class :
                    <asp:TextBox ID="txtclass" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    S_Fees :
                    <asp:TextBox ID="txtfees" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    S_DOB :
                    <asp:TextBox ID="txtDOB" placeholder="DOB"  CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    S_Courses :
                    <asp:TextBox ID="txtcourse" placeholder="Courses"  CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <%--<div class="row form-group">
                <div class="col-md-6">
                    Username :
                    <asp:TextBox ID="txtuser" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    Password: :
                    <asp:TextBox ID="txtpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col">
                    Confirm Password :

                    <asp:TextBox ID="txtcpass" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtcpass" ControlToCompare="txtpass" runat="server" ErrorMessage="Password Incorrect"></asp:CompareValidator>
                </div>--%>

            <div class="q">
            <asp:Button ID="btnSubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:Button ID="btnUpdate" CssClass="btn btn-danger" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <%--<asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"--%>
                    
            </div>
        </div>
    </form>
</body>

</html>
