<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List.aspx.cs" Inherits="pselling_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理销售商品信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 商品名称</strong><asp:DropDownList ID="ddlpid" runat="server" Width="150">
</asp:DropDownList><strong> 销售时间:</strong><asp:TextBox ID="txt_atime" runat="server" width="100"  class="Wdate"  onfocus="WdatePicker()" ></asp:TextBox>
            ~<asp:TextBox ID="txt_etime" runat="server" width="100"  class="Wdate"  onfocus="WdatePicker()" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="商品名称" DataField="pname" />
            <asp:BoundField HeaderText="销售数量" DataField="nnum" />
            <asp:BoundField HeaderText="销售单价" DataField="price" />
            <asp:BoundField HeaderText="备注" DataField="remark" />
            <asp:BoundField HeaderText="销售员" DataField="auser" />
            <asp:BoundField HeaderText="销售时间" DataField="atime" />
    <%--        <asp:BoundField HeaderText="利润" DataField="atime1" />--%>
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
            <a href="Show.aspx?id=<%#Eval("id") %>">详细</a>
            <a href="Edit.aspx?id=<%#Eval("id") %>">编辑</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("id") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


