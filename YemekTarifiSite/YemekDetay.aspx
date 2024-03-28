<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            font-size: small;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            background-color: #FFFFFF;
        }
        .auto-style12 {
            height: 29px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="Label"></asp:Label>
    </strong>&nbsp;&nbsp;&nbsp;
    <br />
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-&nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style9" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-color: #FFFFFF; border-bottom-style: inset; border-bottom-width: thick">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style11">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style6">
            <tr>
                <td class="auto-style2"><strong>Ad Soyad</strong>:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tb5" Width="215px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Mail:</strong></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tb5" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yorumunuz</strong>:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tb5" Height="89px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" CssClass="fb8" OnClick="Button1_Click" Text="Yorum Yap" Width="224px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
