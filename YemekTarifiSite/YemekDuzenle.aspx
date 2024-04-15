<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifiSite.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            text-align: right;
            width: 118px;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .auto-style12 {
            width: 118px;
        }
        .auto-style13 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style9">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="230px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="177px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" Text="Güncelle" Width="137px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
