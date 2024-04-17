<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Öneriler.aspx.cs" Inherits="YemekTarifiSite.Öneriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style11 {
            width: 33px;
        }
        .auto-style10 {
            width: 43px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="Panel3" runat="server" Height="33px" Width="395px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                    </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                    </strong></td>
                <td>ÖNERİLER</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Height="268px"></asp:Panel>
</asp:Content>
