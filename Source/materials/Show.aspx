<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" ValidateRequest="false"  CodeFile="Show.aspx.cs" Inherits="materials_Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content_main">
        <div id="iframe_home" class="iframe cur">

            <h4 style="border-bottom: 2px solid #29a176; /* width: 200px; */
    display: block; font-size: 16px; padding-bottom: 10px;">查看原材料信息：</h4>
            <p></p>
            <p>
             <table style="width:100%;" id="ctl00_ContentPlaceHolder1_GridView1">
     <tr>
	<td height="25" width="20%" align="right">编号：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblmid" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">原材料名称：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblmname" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">单位：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblunit" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">规格：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblspec" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">用途：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblremark" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">库存量：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblquantity" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">预警量：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblwquantity" runat="server" Text=""></asp:Label></td>
	</tr>
 <tr>
	<td height="25" width="20%" align="right">单价：</td>
	<td height="25" width="*" align="left" style="text-align:left"><asp:Label ID="lblprice" runat="server" Text=""></asp:Label></td>
	</tr>


    <tr>
        <td>&nbsp;</td>
        <td align="left">   

            <asp:Button ID="btnReturn" runat="server" Text="返 回"  class="btn"  OnClientClick="history.go(-1); return false;" CausesValidation="false" />
        </td>
    </tr>
</table>
              

            </p>
       

        </div>
    </div>
</asp:Content>


