<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="denemeson.Hakkinda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 441px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        <strong>HAKKIMIZDA</strong></p>
    <p class="auto-style5">
        <asp:DataList ID="DataList2" runat="server" Width="443px">
            <ItemTemplate>
                <div class="auto-style3">
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </strong>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p class="auto-style5">
        &nbsp;</p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="311px" ImageUrl="~/HakkımızdaPicture/blog-ile-para-nasil-kazanilir.png" Width="447px" />
    </p>
</asp:Content>
