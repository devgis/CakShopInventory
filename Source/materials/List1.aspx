<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List1.aspx.cs" Inherits="materials_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理原材料信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 原材料名称:</strong><asp:TextBox ID="txt_mname" runat="server" width="150"></asp:TextBox>
<strong> 用途:</strong><asp:TextBox ID="txt_remark" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="原材料名称" DataField="mname" />
            <asp:BoundField HeaderText="单位" DataField="unit" />
            <asp:BoundField HeaderText="规格" DataField="spec" />
            <asp:TemplateField HeaderText="用途">
            <ItemTemplate>
            <%# StringHelper.SubStringHtml( Eval("remark").ToString(),20) %>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="库存量" DataField="quantity" />
            <asp:BoundField HeaderText="预警量" DataField="wquantity" />
            <asp:BoundField HeaderText="单价" DataField="price" />
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
            <a href="Show.aspx?id=<%#Eval("mid") %>">详细</a>
            
            </ItemTemplate>
             <ItemStyle Width="150px" />
            </asp:TemplateField>
        </Columns>
        <PagerStyle HorizontalAlign="Center" />
    </asp:GridView>

            
            
        </td>
    </tr>
</table>
              

            </p>
       

        </div>
    </div>
</asp:Content>


