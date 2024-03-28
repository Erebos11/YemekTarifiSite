<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="YemekTarifiSite.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="442px">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style2" style="background-color: #FFFFFF"><strong style="background-color: #FFFFFF">
                        <a href="YemekDetay.aspx">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                            </strong></td>
                         </a>
                </tr>
                <tr>
                    <td>Malzemeler :&nbsp;
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Yemek Tarifi :
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Eklenme Tarihi :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp;&nbsp; <em>Puan</em> :
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

