<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Edit.aspx.cs" Inherits="users_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">编辑员工信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>员工编号:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_userid" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvuserid" runat="server" 
        ControlToValidate="txt_userid" Display="Dynamic" 
        ErrorMessage="员工编号不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>登录密码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_password" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvpassword" runat="server" 
        ControlToValidate="txt_password" Display="Dynamic" 
        ErrorMessage="登录密码不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>姓名:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_username" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvusername" runat="server" 
        ControlToValidate="txt_username" Display="Dynamic" 
        ErrorMessage="姓名不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>性别:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:RadioButtonList ID="rtsex" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem Selected="True">男</asp:ListItem>
    <asp:ListItem>女</asp:ListItem>
</asp:RadioButtonList>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>手机号码:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_tel" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvtel" runat="server" 
        ControlToValidate="txt_tel" Display="Dynamic" 
        ErrorMessage="手机号码不能为空！"></asp:RequiredFieldValidator>    <asp:RegularExpressionValidator ID="revtel" runat="server" 
         ErrorMessage = "RegularExpressionValidator" ControlToValidate = "txt_tel" 
        Display = "Dynamic" ValidationExpression = "^(13|15|17|18)[0-9]{9}$" >请输入正确的手机号码</asp:RegularExpressionValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>家庭地址:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_address" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvaddress" runat="server" 
        ControlToValidate="txt_address" Display="Dynamic" 
        ErrorMessage="家庭地址不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>用户类型:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_userstate" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvuserstate" runat="server" 
        ControlToValidate="txt_userstate" Display="Dynamic" 
        ErrorMessage="用户类型不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>备注:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_remark" runat="server"  width="339px" Height="117px" TextMode= "MultiLine"></asp:TextBox></div>    <asp:RequiredFieldValidator ID="rfvremark" runat="server" 
        ControlToValidate="txt_remark" Display="Dynamic" 
        ErrorMessage="备注不能为空！"></asp:RequiredFieldValidator>
 </td></tr>



    <tr>
        <td>&nbsp;</td>
        <td align="left">
            <asp:Button ID="btnUpdate" runat="server" Text="保 存"   class="btn"  OnClick="btnSave_Click" />
            <asp:Button ID="btnCan" runat="server" Text="返 回"  class="btn"  OnClientClick="document.location='List.aspx';return false;" CausesValidation="false" />
        </td>
    </tr>
</table>
              

            </p>
       

        </div>
    </div>
</asp:Content>


