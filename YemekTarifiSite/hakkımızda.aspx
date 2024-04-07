<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hakkımızda.aspx.cs" Inherits="YemekTarifiSite.hakkımızda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style5">
        <strong>HAKKIMIZDA<asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        </strong></p>

    <asp:Image ID="Image1" runat="server" Height="194px" ImageUrl="~/resimler/images.jpg" Width="395px" />

</asp:Content>
