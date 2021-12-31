<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="denemeson.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 105%;
            height: 297px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txt_ad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail:</td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                <asp:TextBox ID="txt_icerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="textboxlarım"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek:</td>
            <td>
                <asp:TextBox ID="txt_yemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_onayla" runat="server" Text="Onayla" Width="114px" OnClick="btn_onayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
