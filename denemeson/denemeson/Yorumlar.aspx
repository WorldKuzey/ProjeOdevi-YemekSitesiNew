<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="denemeson.Yorumlar" %>
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
        .auto-style14 {
            text-align: left;
            width: 136px;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style11 {
            background-color: #6699FF;
        }
        .auto-style26 {
            height: 44px;
            width: 359px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" style="height:auto"  runat="server" CssClass="auto-style9" Height=500px>
        <table class="auto-style4">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="40px"  Text="+" Width="40px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="40px" Text="-" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style24">Onaylanan Yorum Listesi</td>
            </tr>
        </table>

        
        <asp:Panel ID="Panel2"  runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                                &nbsp;</td>
                            <td class="auto-style16">
                                &nbsp;</td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color:#A86DF8;margin-top:15px;"> <table class="auto-style9">
            <tr>
                <td class="auto-style22"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="40px"  Text="+" Width="40px" OnClick="Button3_Click"   />
                    </strong></td>
                <td class="auto-style23"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="40px" Text="-" Width="40px" OnClick="Button4_Click"  />
                    </strong></td>
                <td class="auto-style26">Onaysız Yorum Listesi</td>
            </tr>
        </table></asp:Panel>
    <asp:Panel ID="Panel4"  runat="server">
            <asp:DataList ID="DataList2" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style16">
                         <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"><asp:Image ID="Image2" runat="server" CssClass="auto-style11" Height="40px" ImageUrl="~/İkon/pngtree-vector-refresh-icon-png-image_4258180.jpg" Width="40px" /></a>
                                </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>


</asp:Content>
