﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="List.aspx.cs" Inherits="suppliers_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">管理供应商信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;">
    <tr>
        <td align="center">
            <strong> 供应商名称:</strong><asp:TextBox ID="txt_sname" runat="server" width="150"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="搜 索"   class="btn"   onclick="btnSearch_Click" />

        </td>
    </tr>
    <tr>
        <td>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" GridLines="None" AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle Height="25px" HorizontalAlign="Center" />
        <Columns>       
            <asp:BoundField HeaderText="供应商名称" DataField="sname" />
            <asp:TemplateField HeaderText="操作">
            <ItemTemplate>
            <a href="Show.aspx?id=<%#Eval("sid") %>">详细</a>
            <a href="Edit.aspx?id=<%#Eval("sid") %>">编辑</a>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"   CommandName='<%#Eval("sid") %>' OnClick="lnk_Click" Text="删除" OnClientClick='return confirm("您确定要删除此信息么？");'></asp:LinkButton>
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


