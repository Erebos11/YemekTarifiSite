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
        .auto-style18 {
            margin-left: 80px;
        }
        .auto-style19 {
            margin-left: 120px;
        }
        .auto-style20 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style9">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Button ID="Button3" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td><strong>YEMEK LİSTESİ</strong></td>
                </tr>
            </table>
        </asp:Panel>
        </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="360px">
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
                        <asp:Button ID="Button5" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button5_Click"  />
                        </strong></td>
                    <td class="auto-style16"><strong>
                        <asp:Button ID="Button6" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button6_Click"  />
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
                <td>YEMEK AD:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER:</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="220px">





</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>YEMEK TARİFİ:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20">
                    <asp:Button ID="btnekle" runat="server" OnClick="btnekle_Click" Text="Ekle" Width="125px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
