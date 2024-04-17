<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style10 {
        text-align: right;
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
                  <asp:Button ID="Button4" runat="server" CssClass="auto-style14" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                  </strong></td>
              <td><strong>Mesajlar LİSTESİ</strong></td>
          </tr>
      </table>
  </asp:Panel>

     <asp:Panel ID="Panel4" runat="server">
     <asp:DataList ID="DataList1" runat="server"  Width="360px">
         <ItemTemplate>
             <table class="auto-style9">
                 <tr>
                     <td class="auto-style12">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Mesajgonderen") %>'></asp:Label>
                     </td>
                     <td class="auto-style10">
                         <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/file_2822676.png" Width="31px" /></a>
                         </td>
                 </tr>
             </table>
         </ItemTemplate>
     </asp:DataList>
 </asp:Panel>

</asp:Content>
