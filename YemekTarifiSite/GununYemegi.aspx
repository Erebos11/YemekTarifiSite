<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style5" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("GununYemegimalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl="~/resimler/sarma.jpg" Width="415px" />
                </td>
            </tr>
            <tr>
                <td><em>Puan</em> :
                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    &nbsp;&nbsp;&nbsp; Tarih -
                    <asp:Label ID="Label16" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
