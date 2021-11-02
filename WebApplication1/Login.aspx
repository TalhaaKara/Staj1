<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Con tent-Type" content="text/html; charset=utf-8" />

    <title>TalhaSTJ | Login</title>

    <link rel="stylesheet" href="assent/css/Login.css" />
    <link rel="shortcut icon" href="assent/imgs/besiktas.ico" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="login-box">
            <h1>Giriş Yap</h1>
            
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <asp:TextBox ID="txtkuladi" runat="server" CssClass="textbox" ValidationGroup="T" Placeholder="E-mail"></asp:TextBox>

            </div>

            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <asp:TextBox ID="txtpas" runat="server" CssClass="textbox" ValidationGroup="T" TextMode="Password" Placeholder="Parola"></asp:TextBox>

            </div>
            
            <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="rfv2" Display="Dynamic" ControlToValidate="txtkuladi" ErrorMessage="*Kullanıcı adı boş geçilemez!</br>" runat="server" ValidationGroup="T"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator Font-Size="Small" ForeColor="Red" ID="rfv" Display="Dynamic" ControlToValidate="txtpas" ErrorMessage="*Parola boş geçilemez!" runat="server" ValidationGroup="T"> </asp:RequiredFieldValidator><br />
            <asp:Label ID="lblhata" ForeColor="Red" runat="server" Text=""></asp:Label>
            <asp:Button ID="giris" runat="server" CssClass="btn" Text="Giris Yap" OnClick="giris_Click" ValidationGroup="T" />
            <asp:Button ID="kaydol" runat="server" CssClass="btn" Text="Kaydol" OnClick="kaydol_Click" />
         
        </div>

    </form>
</body>
</html>
