<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="adminpass.aspx.cs" Inherits="admin_pass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">修改登录密码：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
        <td align="right">
            用户名
        </td>
        <td align="left">
            <b style="color:red;"><%=Session["id"].ToString() %></b>
        </td>
    </tr>
    <tr>
<td style=" text-align:right; width:30%;"><font style='color:red'>*&nbsp;</font>原密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pwd" runat="server" width="200" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvyhm" runat="server" 
        ControlToValidate="txt_pwd" Display="Dynamic" 
        ErrorMessage="原密码不能为空！"></asp:RequiredFieldValidator></div>
 </td></tr>

<tr>
<td style=" text-align:right; width:30%;"><font style='color:red'>*&nbsp;</font>新密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="TextBox1" runat="server" width="200" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvmm" runat="server" 
        ControlToValidate="TextBox1" Display="Dynamic" 
        ErrorMessage="新密码不能为空！"></asp:RequiredFieldValidator></div>
 </td></tr>

 <tr>
<td style=" text-align:right; width:30%;"><font style='color:red'>*&nbsp;</font>确认密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="TextBox2" runat="server" width="200" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox2" Display="Dynamic" 
        ErrorMessage="确认密码不能为空！"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server"
        ErrorMessage="两次密码输入不一致！" ControlToCompare="TextBox2"
        ControlToValidate="TextBox1" Display="Dynamic"></asp:CompareValidator></div>
 </td></tr>

    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="Button2" runat="server" Text="确 定"   class="btn"  OnClick="btnSave_Click"  />
        </td>
    </tr>
</table>
              

            </p>
       

        </div>
    </div>
</asp:Content>


