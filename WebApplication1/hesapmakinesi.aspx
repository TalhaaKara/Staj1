<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="hesapmakinesi.aspx.cs" Inherits="WebApplication1.hesapmakinesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="assent/css/Login.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblhata" runat="server" Text=""></asp:Label>
            <table class="auto-style1">
                 <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblisim" runat="server" Text="Hoşgeldiniz"></asp:Label>
               </td>  
           </tr>

            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="SAYI 1"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" ValidationGroup="T"  runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="islem" Text="TOPLA" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="SAYI 2"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="T"></asp:TextBox>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="islem" Text="ÇIKAR" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="rfvsayi1" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="*Sayı 1 boş geçilemez!" runat="server" ValidationGroup="T"> </asp:RequiredFieldValidator><br />
                   </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" ValidationGroup="T" OnClick="Button1_Click" Text="HESAPLA" Width="125px" />
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="islem" Text="ÇARP" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="rfvsayi2" Display="Dynamic" ControlToValidate="TextBox2" ErrorMessage="*Sayı 2 boş geçilemez!" runat="server" ValidationGroup="T"> </asp:RequiredFieldValidator>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                <td>
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="islem" Text="BÖL" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="SONUÇ="></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style6"> 
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="islem" Text="Sinüs Al" />(Lütfen Sayi1'e istediğiniz değeri, sayi2'ye 0 giriniz)
                    </td>
            </tr>
        </table>
        </div>
    </form>
</body>
</html>