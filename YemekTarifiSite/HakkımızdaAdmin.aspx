<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 43px;
        }
        .auto-style11 {
            width: 33px;
        }
    .auto-style12 {
        text-align: center;
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
              <td>HAKKIMIZDA</td>
          </tr>
      </table>
  </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" Height="303px" TextMode="MultiLine" Width="337px"></asp:TextBox>
        <asp:Button ID="Button5" runat="server" Text="Güncelle" />
</asp:Panel>

     </asp:Content>
