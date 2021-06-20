<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TemplateEvil.aspx.cs" Inherits="NewWebForm2.TemplateEvil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="StyleSheet1.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="card">
                <h1>Register</h1>
                <div class="form-group">Emp_Id :
                    <asp:TextBox ID="txtid" runat="server"></asp:TextBox></div>
                <div class="form-group">Name :
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox></div>
                <div class="form-group">Email :
                    <asp:TextBox ID="txtemail" TextMode="Email" runat="server"></asp:TextBox></div>
                <div class="form-group">Phone No :
                    <asp:TextBox ID="txtphone" TextMode="Phone" runat="server"></asp:TextBox></div>
                <div class="form-group">Photo :
                    <asp:FileUpload ID="FileUpload1" runat="server" /></div>
                <div class="form-group">
                    <asp:Button ID="btnsubmit" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnsubmit_Click" /></div>
            </div>
            <asp:GridView ID="GV_List" CssClass="r" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999"
                BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">

                <%--<asp:GridView ID="GV_List" runat="server"  
                        AutoGenerateColumns="False">

                        <EditRowStyle BackColor="#7C6F57" />
                         <HeaderStyle CssClass="bg" />--%>
                <%--<EmptyDataTemplate>No Records Found...</EmptyDataTemplate>--%>

                <%--Emp_Id : <asp:TextBox runat="server"></asp:TextBox>
                Name : <asp:TextBox runat="server"></asp:TextBox>
                Email : <asp:TextBox runat="server"></asp:TextBox>
                Phone No : <asp:TextBox runat="server"></asp:TextBox>
                Photo : <asp:TextBox runat="server"></asp:TextBox>--%>

                <%--<AlternatingRowStyle BackColor="White" />--%>

                <Columns>

                    <asp:TemplateField HeaderText="EMP ID">
                        <ItemTemplate>
                            <%# Eval("EmpId") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Emp Name">
                        <ItemTemplate>
                            <%# Eval("Emp_Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <%# Eval("Emp_Email") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Phone No">
                        <ItemTemplate>
                            <%# Eval("Emp_Mob_No") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="EmpImage" runat="server" ImageUrl='<%# Eval("Emp_Image") %>' Height="100" Width="100" />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />

            </asp:GridView>

        </div>
    </form>
</body>
</html>
