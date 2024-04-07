<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifiSite.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: center;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            background-color: #FFFFFF;
        }
        .auto-style11 {
            border: 1px solid #000000;
            border-radius: 10px;
        }
    .auto-style13 {
        height: 145px;
        width: 381px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style9" colspan="2"><strong><span class="auto-style10">MESAJ PANELİ</span></strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Konu:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Mesaj:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style11" Height="71px" TextMode="MultiLine" Width="229px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" Width="232px" />
            </td>
        </tr>
    </table>
</asp:Content>
