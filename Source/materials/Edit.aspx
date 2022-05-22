<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Edit.aspx.cs" Inherits="materials_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">编辑原材料信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>原材料名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_mname" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvmname" runat="server" 
        ControlToValidate="txt_mname" Display="Dynamic" 
        ErrorMessage="原材料名称不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>单位:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_unit" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvunit" runat="server" 
        ControlToValidate="txt_unit" Display="Dynamic" 
        ErrorMessage="单位不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>规格:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_spec" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvspec" runat="server" 
        ControlToValidate="txt_spec" Display="Dynamic" 
        ErrorMessage="规格不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>用途:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_remark" runat="server"  width="339px" Height="117px" TextMode= "MultiLine"></asp:TextBox></div>    <asp:RequiredFieldValidator ID="rfvremark" runat="server" 
        ControlToValidate="txt_remark" Display="Dynamic" 
        ErrorMessage="用途不能为空！"></asp:RequiredFieldValidator>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>库存量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_quantity" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvquantity" runat="server" 
        ControlToValidate="txt_quantity" Display="Dynamic" 
        ErrorMessage="库存量不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvquantity" runat="server" 
        ControlToValidate="txt_quantity" Display="Dynamic" ErrorMessage="库存量格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>预警量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_wquantity" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvwquantity" runat="server" 
        ControlToValidate="txt_wquantity" Display="Dynamic" 
        ErrorMessage="预警量不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvwquantity" runat="server" 
        ControlToValidate="txt_wquantity" Display="Dynamic" ErrorMessage="预警量格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>单价:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_price" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" 
        ErrorMessage="单价不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" ErrorMessage="单价格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
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


