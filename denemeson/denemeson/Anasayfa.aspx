<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="denemeson.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            text-align: center;
            background-color: #669999;
        }
        .auto-style7 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7">
        <ItemTemplate>    
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"><strong>

                       <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>"> <asp:Label ID="Label7" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label></a> <%--? işareti web sayfalarında kullanılan web formları(geçişlerde) arası veri taşıma işlemleri için kullanılır)--%> <%--tıkladığımız yemeğin id sinive verilerini eval sayesinde alıyoruz--%>
                       
                        </strong></td>

                </tr>
                <tr>
                    <td><strong>Malzemeler</strong>:<asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong><asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <strong>-Puan:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-width: thick; border-bottom-color: #000000">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
