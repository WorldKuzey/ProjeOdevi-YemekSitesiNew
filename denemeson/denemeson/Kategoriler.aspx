<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="denemeson.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            background-color: #9999FF;
        }
        .auto-style14 {
            text-align: left;
            width: 136px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            width: 25px;
        }
        .auto-style19 {
            width: 21px;
        }
        .auto-style20 {
            font-weight: bold;
            font-size: large;
            background-color: #A86DF8;
        }
        .auto-style21 {
            height: 29px;
        }
        .auto-style22 {
            width: 25px;
            height: 44px;
        }
        .auto-style23 {
            width: 21px;
            height: 44px;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
            width: 9px;
        }
        .auto-style11 {
            background-color: #6699FF;
        }
        .auto-style26 {
            height: 29px;
            text-align: right;
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
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="40px" Text="-" Width="40px" Onclick="Button2_Click"/>
                    </strong></td>
                <td class="auto-style24">Kategoriler Listesi</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2"  runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                                
                                  <a href="KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId") %>"> <asp:Image ID="Image2" runat="server" CssClass="auto-style11" Height="40px" ImageUrl="~/İkon/pngtree-vector-refresh-icon-png-image_4258180.jpg" Width="40px" /></a> 
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

        <asp:Panel ID="Panel3"  runat="server"  >
            <table class="auto-style4">
                <tr>
                    <td class="auto-style17"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="40px"  Text="+" Width="40px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style19"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="40px"  Text="-" Width="40px" OnClick="Button4_Click" />
                        </strong></td>
                    <td>Kategoriler Ekleme</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Height="119px" Width="447px">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style26"><strong>Kategori Ad:</strong></td>
                    <td class="auto-style21">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><strong>Kategori İkon:</strong></td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_ekle" runat="server" Text="Ekle" Width="176px" OnClick="btn_ekle_Click" />
                    </td>
                
                    <td class="auto-style25">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>

    </asp:Panel>

</asp:Content>
