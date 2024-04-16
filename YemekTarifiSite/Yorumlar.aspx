<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifiSite.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style15 {
            width: 33px;
        }
        .auto-style16 {
            width: 36px;
        }
        .auto-style14 {
            margin-left: 0px;
        }
        .auto-style12 {
            text-align: left;
            width: 187px;
        }
        .auto-style13 {
            text-align: right;
            width: 76px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style17 {
            background-color: #6699FF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel3" runat="server" Height="33px" Width="395px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" />
                    </strong></td>
                <td><strong>ONAYLI YORUM LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="360px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/DELETE.png" Width="30px" />
                            </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="31px" />
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="33px" Width="395px">
    <table class="auto-style9">
        <tr>
            <td class="auto-style15"><strong>
                <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"  />
                </strong></td>
            <td class="auto-style16"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
            <td><strong>ONAYSIZ YORUM LİSTESİ</strong></td>
        </tr>
    </table>
</asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList2" runat="server"  Width="360px">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/DELETE.png" Width="30px" />
                        </td>
                    <td class="auto-style11">
                       <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/update.jpg" Width="31px" /></a>
                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
</asp:Content>
