<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="denemeson.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            background-color: #9999FF;
        }
        .auto-style22 {
            width: 25px;
            height: 44px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
            background-color: #A86DF8;
        }
        .auto-style23 {
            width: 21px;
            height: 44px;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" style="height:auto"  runat="server" CssClass="auto-style9" Height=500px>
        <table class="auto-style4">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="40px"  Text="+" Width="40px" OnClick="Button1_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="40px" Text="-" Width="40px" OnClick="Button2_Click"   />
                    </strong></td>
                <td class="auto-style24">Hakkımızda</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2"  runat="server">
            <table class="auto-style4">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="300px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Button ID="Button5" runat="server" Text="Güncelle" OnClick="Button5_Click" CssClass="button1" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
