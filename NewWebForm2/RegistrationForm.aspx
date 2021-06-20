<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="NewWebForm2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <h1><u>Student Registration Form</u></h1>
        <div class="container">

            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Full Name : "></asp:Label>
                    <asp:TextBox ID="txtname" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                      <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="firstname" ForeColor="Red" runat="server" ErrorMessage="Please enter Full Name" ValidationExpression=""></asp:RegularExpressionValidator>--%>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" ForeColor="Red" runat="server" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="Email : "></asp:Label>
                    <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ForeColor="Red" runat="server" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredExpressionValidator1" ControlToValidate="txtemail" ForeColor="Red" runat="server" ErrorMessage="please enter mail"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="MOB NO : "></asp:Label>
                    <asp:TextBox ID="txtMobno" CssClass="form-control" placeholder="Mob No " runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtMobno" ForeColor="Red" runat="server" ErrorMessage="Please enter Valid Mob No." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMobno" ForeColor="Red" runat="server" ErrorMessage="Please Enter Mob NO"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="Gender : "></asp:Label>
                    <asp:RadioButton ID="male" Text=" Male" GroupName="gender" runat="server" />
                    <asp:RadioButton ID="female" Text=" Female" GroupName="gender" runat="server" />
                    <asp:RadioButton ID="other" Text=" Other" GroupName="gender" runat="server" />

                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label5" runat="server" Text="Address : "></asp:Label>
                    <asp:TextBox ID="Address" CssClass="form-control" placeholder=" Address" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Address" ForeColor="Red" runat="server" ErrorMessage="Please Enter Address"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="DOB : "></asp:Label>
                    <asp:TextBox ID="txtDOB" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="City : "></asp:Label>
                    <asp:DropDownList ID="city" runat="server">
                        <asp:ListItem Value="0">------Select------</asp:ListItem>
                        <asp:ListItem Value="1">Nagpur</asp:ListItem>
                        <asp:ListItem Value="2">Mumbai</asp:ListItem>
                        <asp:ListItem Value="3">Pune</asp:ListItem>
                        <asp:ListItem Value="4">Delhi</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label8" runat="server" Text="State : "></asp:Label>
                    <asp:DropDownList ID="State" runat="server">
                        <asp:ListItem Value="0">------Select------</asp:ListItem>
                        <asp:ListItem Value="1">Maharastra</asp:ListItem>
                        <asp:ListItem Value="2">Madhya Pradesh</asp:ListItem>
                        <asp:ListItem Value="3">Uttar Pradesh</asp:ListItem>
                        <asp:ListItem Value="4">Uttarakhand</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                    <asp:Label ID="Label13" for="pin_code" runat="server" Text="Pin Code : "></asp:Label>
                    <asp:TextBox ID="pin_code" CssClass="form-control " placeholder="Pin Code" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="pin_code" ForeColor="Red" runat="server" ErrorMessage="Please enter Valid Pin Code" ValidationExpression="[1-9]{6}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="pin_code" ForeColor="Red" runat="server" ErrorMessage="Please enter Pincode"></asp:RequiredFieldValidator>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label9" runat="server" Text="User Name : "></asp:Label>
                    <asp:TextBox ID="txtuser" CssClass="form-control" placeholder=" Username" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtuser" ForeColor="Red" runat="server" ErrorMessage="Please create Username"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-6">
                     <asp:Label ID="Label10" runat="server" Text="Password : "></asp:Label>
                    <asp:TextBox ID="txtpass" CssClass="form-control" TextMode="Password" placeholder=" Password " runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:Label ID="Label12" runat="server" Text="Conform Password : "></asp:Label>
                    <asp:TextBox ID="comfpass" CssClass="form-control" TextMode="Password" placeholder=" Conform Password " runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="comfpass" ForeColor="Red" ErrorMessage="Password Not Matching"></asp:CompareValidator>
                </div>
            </div>

            <div>
                <asp:Label ID="Label11" runat="server" Text=" Upload File : "></asp:Label>
                    <asp:Image ID="imgUser" runat="server" Height="30px" Width="30px" />
                    <asp:FileUpload ID="FileUpload1" text="File Upload : " placeholder="Uplaodfile" runat="server" />
            </div>

             <div class="row">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="    I Agree to submit this registration form " />
                <%-- <asp:CustomValidator ID="CustomValidator1" ControlToValidate="CheckBox1" ForeColor="Red" runat="server" ErrorMessage="Please select box"></asp:CustomValidator>--%>
            </div><br /><br />

          <div class="q">
              <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Submit " OnClick="Button1_Click" />
          </div>
        </div>
    </form>
</body>
</html>
