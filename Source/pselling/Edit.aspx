<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Edit.aspx.cs" Inherits="pselling_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">编辑销售商品信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>商品名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlpid" runat="server" Width="200">
</asp:DropDownList> </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>销售数量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_nnum" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvnnum" runat="server" 
        ControlToValidate="txt_nnum" Display="Dynamic" 
        ErrorMessage="销售数量不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvnnum" runat="server" 
        ControlToValidate="txt_nnum" Display="Dynamic" ErrorMessage="销售数量格式不正确！" 
        MaximumValue="32767" MinimumValue="0" Type="Integer"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>销售单价:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_price" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" 
        ErrorMessage="销售单价不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" ErrorMessage="销售单价格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>备注:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_remark" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvremark" runat="server" 
        ControlToValidate="txt_remark" Display="Dynamic" 
        ErrorMessage="备注不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>销售员:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_auser" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvauser" runat="server" 
        ControlToValidate="txt_auser" Display="Dynamic" 
        ErrorMessage="销售员不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>销售时间:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_atime" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvatime" runat="server" 
        ControlToValidate="txt_atime" Display="Dynamic" 
        ErrorMessage="销售时间不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvatime" runat="server" 
        ControlToValidate="txt_atime" Display="Dynamic" ErrorMessage="销售时间格式不正确！" 
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


