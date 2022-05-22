<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Edit.aspx.cs" Inherits="purchasereturn_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">编辑采购退库信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>原材料名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlmid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>退库数量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_nnum" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvnnum" runat="server" 
        ControlToValidate="txt_nnum" Display="Dynamic" 
        ErrorMessage="退库数量不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>供应商:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlsid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>退库单价:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_price" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" 
        ErrorMessage="退库单价不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" ErrorMessage="退库单价格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>退库原因:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_reasons" runat="server"  width="339px" Height="117px" TextMode= "MultiLine"></asp:TextBox></div>    <asp:RequiredFieldValidator ID="rfvreasons" runat="server" 
        ControlToValidate="txt_reasons" Display="Dynamic" 
        ErrorMessage="退库原因不能为空！"></asp:RequiredFieldValidator>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>退库人:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_auser" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvauser" runat="server" 
        ControlToValidate="txt_auser" Display="Dynamic" 
        ErrorMessage="退库人不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>退库时间:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_atime" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvatime" runat="server" 
        ControlToValidate="txt_atime" Display="Dynamic" 
        ErrorMessage="退库时间不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvatime" runat="server" 
        ControlToValidate="txt_atime" Display="Dynamic" ErrorMessage="退库时间格式不正确！" 
        MaximumValue="2099-12-31" MinimumValue="1900-1-1" Type="Date"></asp:RangeValidator></div>
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


