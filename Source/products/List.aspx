<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List.aspx.cs" Inherits="products_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理商品信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 商品名称:</strong><asp:TextBox ID="txt_pname" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="商品名称" DataField="pname" />
            <asp:BoundField HeaderText="商品类别" DataField="ptype" />
            <asp:TemplateField HeaderText="商品图片">
            <ItemTemplate>
            <img alt="" src="../uploads/<%#Eval("pic")%>" width="80"  height="80" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="库存数量" DataField="quantity"/>
            <asp:BoundField HeaderText="价格" DataField="price" />
            <asp:TemplateField HeaderText="商品描述">
            <ItemTemplate>
            <%# StringHelper.SubStringHtml( Eval("destion").ToString(),20) %>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
            <a href="Show.aspx?id=<%#Eval("pid") %>">详细</a>
            <a href="Edit.aspx?id=<%#Eval("pid") %>">编辑</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("pid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


