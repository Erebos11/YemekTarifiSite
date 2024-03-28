<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        height: 29px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style6">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Tarif Ad</td>
        <td>
            <asp:TextBox ID="TxtTarifAd" runat="server" Width="217px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Malzemeler </td>
        <td>
            <asp:TextBox ID="TxtMalzemeler" runat="server" Height="45px" TextMode="MultiLine" Width="216px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Yapılış</td>
        <td>
            <asp:TextBox ID="TxtYapilis" runat="server" Height="62px" TextMode="MultiLine" Width="215px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Resim</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="333px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Tarif Öneren</td>
        <td class="auto-style8">
            <asp:TextBox ID="TxtTarifOneren" runat="server" Width="214px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mail Adresi</td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="215px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnGönder" runat="server" Text="Tarif Öner" Width="221px" CssClass="fb8" />
        </td>
    </tr>
</table>
</asp:Content>
