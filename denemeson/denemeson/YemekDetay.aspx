<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="denemeson.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-size: x-small;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            margin-right: 0px;
        }
        .auto-style9 {
            text-align: right;
            width: 168px;
        }
        .auto-style10 {
            width: 168px;
            height: 33px;
        }
        .auto-style11 {
            height: 30px;
        }
        .auto-style12 {
            text-align: right;
            width: 168px;
            height: 29px;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            color: black;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition-duration: 0.4s;
            cursor: pointer;
            border: 2px solid #4CAF50;
            margin: 4px 2px;
            padding: 16px 32px;
            background-color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    </strong>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style8" Width="438px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("yorumadsoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                        -<asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("yorumatarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #000000; border-bottom-style: double; border-right-style: inherit; border-left-style: hidden; border-width: thick">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div style="background-color: #B3C9CA">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yorum Yapma Paneli</strong><table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong>Ad-Soyad:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail Adresiniz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="120px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="164px" CssClass="auto-style14" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
