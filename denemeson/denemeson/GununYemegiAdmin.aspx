﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="denemeson.GununYemegiAdmin" %>
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
                <td class="auto-style24">Yemek Listesi</td>
            </tr>
        </table>
        <asp:Panel ID="Panel2"  runat="server">
            <asp:DataList ID="DataList1" runat="server" Width="444px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style14">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("yemekad") %>'></asp:Label>
                            </td>
                            <td class="auto-style16"><a href="YemekDuzenle.aspx?YemekId=<%#Eval("YemekId") %>">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style11" Height="40px" ImageUrl="~/İkon/7572983.png" Width="40px" />
                                </a></td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
