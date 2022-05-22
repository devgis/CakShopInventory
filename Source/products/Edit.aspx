<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Edit.aspx.cs" Inherits="products_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">编辑商品信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>商品名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_pname" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvpname" runat="server" 
        ControlToValidate="txt_pname" Display="Dynamic" 
        ErrorMessage="商品名称不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>商品类别:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_ptype" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvptype" runat="server" 
        ControlToValidate="txt_ptype" Display="Dynamic" 
        ErrorMessage="商品类别不能为空！"></asp:RequiredFieldValidator></div> 
 </td></tr>

    <tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>原材料名称:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:DropDownList ID="ddlmid" runat="server" Width="200" Enabled="false">
</asp:DropDownList> </td></tr>
<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>所需原材料数量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_nnum" runat="server" width="200" Enabled="false"></asp:TextBox >
    <asp:RequiredFieldValidator ID="rfvnnum" runat="server" 
        ControlToValidate="txt_nnum" Display="Dynamic" 
        ErrorMessage="所需原材料数量！"></asp:RequiredFieldValidator></div> 
 </td></tr>



<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>商品图片:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:Image ID="Imagepic" runat="server"  Width="60px" Height="60px" /><asp:Label ID="Labelpic"  Visible="false" runat="server"  ></asp:Label><asp:FileUpload ID="fppic" runat="server" Width="250" />支持格式为：.jpg | .gif | .png
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>库存数量:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_quantity" runat="server" width="200" Enabled="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvquantity" runat="server" 
        ControlToValidate="txt_quantity" Display="Dynamic" 
        ErrorMessage="库存数量不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvquantity" runat="server" 
        ControlToValidate="txt_quantity" Display="Dynamic" ErrorMessage="库存数量格式不正确！" 
        MaximumValue="32767" MinimumValue="0" Type="Integer"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>价格:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_price" runat="server" width="200"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" 
        ErrorMessage="价格不能为空！"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvprice" runat="server" 
        ControlToValidate="txt_price" Display="Dynamic" ErrorMessage="价格格式不正确！"  MinimumValue="0.00" MaximumValue="1000000.00" 
        Type="Double"></asp:RangeValidator></div>
 </td></tr>

<tr>
<td  style=" text-align:right; width:20%;"><font style='color:red'>*&nbsp;</font>商品描述:</td>
<td class="tbright"><div style="display:inline;float:left;">
<asp:TextBox ID="txt_destion" runat="server"  width="339px" Height="117px" TextMode= "MultiLine"></asp:TextBox></div>    <asp:RequiredFieldValidator ID="rfvdestion" runat="server" 
        ControlToValidate="txt_destion" Display="Dynamic" 
        ErrorMessage="商品描述不能为空！"></asp:RequiredFieldValidator>
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


