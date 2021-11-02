<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KayıtOl.aspx.cs" Inherits="WebApplication1.KayıtOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
        <link rel="stylesheet" href="assent/css/Login.css" />

</head>  
<body>  
    <form id="form1" runat="server">  
        <div>  
            <asp:Label ID="lblhata" ForeColor="Red" runat="server" Text=""></asp:Label>
            <table class="auto-style1">  
                <tr>  
                    <td>Ad Soyad :</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" ValidationGroup="T" runat="server"></asp:TextBox>  
                    </td>  
  
               </tr>  
                <tr>  
                    <td>Parola</td>  
                     <td> <asp:TextBox ID="TextBox2" TextMode="Password" ValidationGroup="T" runat="server"></asp:TextBox></td>  
                </tr>  
                <tr>  
                    <td>Parola Tekrar</td>  
                    <td>  
                        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="T" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Şehir</td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList1" ValidationGroup="T" runat="server">  
                            <asp:ListItem Text=""  Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="Konya" Value="Konya"></asp:ListItem>  
                            <asp:ListItem Text="Kahramanmaraş" Value="Kahramanmaraş"></asp:ListItem>  
                            <asp:ListItem Text="Gaziantep" Value="Gaziantep"></asp:ListItem>  
                        </asp:DropDownList>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Cinsiyet</td>  
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" ValidationGroup="T" runat="server">  
                            <asp:ListItem>Erkek</asp:ListItem>  
                            <asp:ListItem>Kadın</asp:ListItem>  
                        </asp:RadioButtonList>  
                    </td>  
               </tr>  
                <tr>  
                    <td>Email</td>  
                    <td>  
                        <asp:TextBox ID="TextBox4" ValidationGroup="T" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>  
                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Kayıt Ol" ValidationGroup="T" OnClick="Button1_Click" />  <br />
                        <asp:RegularExpressionValidator Font-Size="Small" ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Geçerli bir e-Mail giriniz!" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator0" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="*Lütfen Ad Soyad kısmını doldurunuz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator1" Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="*Lütfen parolanızı doldurunuz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator2" Display="Dynamic" ControlToValidate="TextBox3" ErrorMessage="*Lütfen parola tekrarı doldurunuz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator3" Display="Dynamic" ControlToValidate="TextBox4" ErrorMessage="*Lütfen Gmail giriniz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator4" Display="Dynamic" ControlToValidate="Dropdownlist1" ErrorMessage="*Lütfen şehir seçiniz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="RequiredFieldValidator5" Display="Dynamic" ControlToValidate="RadioButtonList1" ErrorMessage="*Lütfen cinsiyetinizi seçiniz!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
                    </td>  
                    <td>
                        <asp:Label ID="Lblbasarili" runat="server" Text=""></asp:Label>
                    </td>
                </tr>  
            </table>  
        </div>  
    </form>  
</body>  
</html>
