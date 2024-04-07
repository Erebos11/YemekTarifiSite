<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifiSite.Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            background-color: #99CCFF;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
            width: 187px;
        }
        .auto-style13 {
            text-align: right;
            width: 76px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style15 {
            width: 33px;
        }
        .auto-style16 {
            width: 36px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" />
                        </strong></td>
                    <td><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
        </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="360px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAdi") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                             <a href="kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil" ><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/DELETE.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style11">

                           <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>" > <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="31px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    
        <asp:Panel ID="Panel5" runat="server">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button5" runat="server" Height="30px"  Text="+" Width="30px"  />
                        </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px"  />
                        </strong></td>
                    <td><strong>YEMEK EKLEME</strong></td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnekle" runat="server" Text="Ekle" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
