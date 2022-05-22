<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List.aspx.cs" Inherits="purchasereturn_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
     <script src="../My97DatePicker/WdatePicker.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理采购退库信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 供应商</strong><asp:DropDownList ID="ddlsid" runat="server" Width="150">
</asp:DropDownList><strong> 退库时间:</strong><asp:TextBox ID="txt_atime" runat="server" width="100"  class="Wdate"  onfocus="WdatePicker()" ></asp:TextBox>
            ~<asp:TextBox ID="txt_etime" runat="server" width="100"  class="Wdate"  onfocus="WdatePicker()" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="原材料名称" DataField="mname" />
            <asp:BoundField HeaderText="退库数量" DataField="nnum" />
            <asp:BoundField HeaderText="供应商" DataField="sname" />
            <asp:BoundField HeaderText="退库单价" DataField="price" />
            <asp:TemplateField HeaderText="退库原因">
            <ItemTemplate>
            <%# StringHelper.SubStringHtml( Eval("reasons").ToString(),20) %>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="退库人" DataField="auser" />
            <asp:BoundField HeaderText="退库时间" DataField="atime" />
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


