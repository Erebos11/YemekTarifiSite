<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>İçerik:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yemek:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="213px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Text="Onayla" Width="131px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
