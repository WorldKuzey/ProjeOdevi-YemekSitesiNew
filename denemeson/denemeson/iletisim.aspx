<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="denemeson.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        height: 30px;
    }
    .auto-style6 {
        text-align: right;
        width: 158px;
    }
    .auto-style7 {
        height: 30px;
        text-align: right;
        width: 158px;
    }
    .auto-style8 {
        width: 158px;
    }
    .auto-style9 {
        height: 30px;
        font-size: large;
        text-align: center;
    }
        .auto-style10 {
            height: 20px;
            position: relative;
            border: 2px solid #cdcdcd;
            border-radius: 10px;
            background-color: AliceBlue;
            font-size: 14px;
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <span class="auto-style2">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7"><strong>Ad-Soyad:</strong></td>
        <td class="auto-style5">
            <asp:TextBox ID="txt_Mesaj_AdSoyad" runat="server" CssClass="auto-style10" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mail:</strong></td>
        <td>
            <asp:TextBox ID="Txt_Mesaj_Mail" runat="server" CssClass="textboxlarım" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesaj Konusu:</strong></td>
        <td>
            <asp:TextBox ID="Txt_Msj_Konu" runat="server" CssClass="textboxlarım" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Mesajınız:</strong></td>
        <td>
            <asp:TextBox ID="Txt_Mesaj_Icerik" runat="server" CssClass="textboxlarım" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="119px" CssClass="button1" OnClick="Button1_Click" />

        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
