<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="denemeson.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            font-size: large;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style12 {
            text-align: right;
            width: 248px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style9 {
            text-align: right;
            width: 248px;
        }
        .auto-style10 {
            width: 248px;
            height: 33px;
        }
        .auto-style13 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="auto-style2">
    <div style="background-color: #B3C9CA">
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">Tarif Ad<strong>:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Malzeme:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Yapılış:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="120px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Resim:</td>
                <td class="auto-style13">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Tarif Öneren:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Öneren Mail:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Kategori:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="129px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13">
    <span class="auto-style2">
                    <asp:Button ID="Button1" runat="server"  Text="Onayla" Width="93px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
