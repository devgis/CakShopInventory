<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List.aspx.cs" Inherits="users_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理员工信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 员工编号:</strong><asp:TextBox ID="txt_userid" runat="server" width="150"></asp:TextBox>
<strong> 姓名:</strong><asp:TextBox ID="txt_username" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="员工编号" DataField="userid" />
            <asp:BoundField HeaderText="登录密码" DataField="password" />
            <asp:BoundField HeaderText="姓名" DataField="username" />
            <asp:BoundField HeaderText="性别" DataField="sex" />
            <asp:BoundField HeaderText="手机号码" DataField="tel" />
            <asp:BoundField HeaderText="家庭地址" DataField="address" />
            <asp:BoundField HeaderText="用户类型" DataField="userstate" />
            <asp:TemplateField HeaderText="备注">
            <ItemTemplate>
            <%# StringHelper.SubStringHtml( Eval("remark").ToString(),20) %>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
            <a href="Show.aspx?id=<%#Eval("userid") %>">详细</a>
            <a href="Edit.aspx?id=<%#Eval("userid") %>">编辑</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("userid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


