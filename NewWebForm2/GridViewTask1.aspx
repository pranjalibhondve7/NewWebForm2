<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewTask1.aspx.cs" Inherits="NewWebForm2.GridViewTask1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grid View Task</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>

<body>
    <form id="form1" runat="server">
        <div class="container">

            <h1><u>Grid View</u></h1>

            <div class="card" style="background-color: aquamarine">
                <div style="background-color: antiquewhite">
                    <h1><u>Register</u></h1>
                </div>
                <div class="row form-group">
                    <div class="col-md-6">
                        Roll No :
                        <asp:TextBox ID="txtrollno" CssClass="form-control" runat="server"></asp:TextBox>
              <%--<asp:DropDownList ID="ddlRollNo" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlRollNo_SelectedIndexChanged"></asp:DropDownList>--%>
                    </div>
                    <div class="col-md-6"></div>
                </div>
                <div class="row form-group">
                    <div class="col-md-6">
                        Name :
                    <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        Email :
                    <asp:TextBox ID="txtemail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-6">
                        Phone No :
                    <asp:TextBox ID="txtphone" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        Address :
                    <asp:TextBox ID="txtaddress" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-md-6">
                        Pin Code :
                    <asp:TextBox ID="txtpincode" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <%-- <asp:Image ID="imgUser" runat="server" Width="30px" Height="30px" />--%>
                    Upload Photo :  
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                        <%--<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />--%>
                    </div>
                </div>

                <div class="q">
                    <asp:Button ID="btnsubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    <%--<asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-dark" Text="Update" OnClick="btnUpdate_Click" />--%>
                    <%--<asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Delete" OnClick="btnDelete_Click" />--%>
                </div>
                <br />
                <br />
            </div>

            <asp:GridView ID="GridView1" AutoGenerateColumns="false" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />


                <%--  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">

                <EditRowStyle BackColor="#7C6F57" />
                <HeaderStyle CssClass="bg" />
                <EmptyDataTemplate>No Records Found...</EmptyDataTemplate>
                <AlternatingRowStyle BackColor="White" />--%>




                <Columns>
                    <asp:BoundField HeaderText="Roll No" DataField="Roll_No" />
                    <asp:BoundField HeaderText="Your Name" DataField="Name" />
                    <asp:BoundField HeaderText="Your Phone No" DataField="Phone_No" />
                    <asp:BoundField HeaderText="Your Email" DataField="Email" />
                    <asp:BoundField HeaderText="Your Address" DataField="Address" />
                    <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo" ControlStyle-Height="100" ControlStyle-Width="100"></asp:ImageField>

                    <%--<asp:BoundField HeaderText="Your Pincode" DataField="Pincode" />--%>
                </Columns>

            </asp:GridView>

        </div>
    </form>
</body>
</html>
