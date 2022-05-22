<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>蛋糕店进销存管理系统</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/jquery.fullPage.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="css/waves.min.css" rel="stylesheet">
    <link href="css/jquery.mCustomScrollbar.min.css" rel="stylesheet">
    <link href="css/admin.css" rel="stylesheet">
    <style>
        /** skins **/
        #zheng-upms-server #header {
            background: #29A176;
        }

        #zheng-upms-server .content_tab {
            background: #29A176;
        }

        #zheng-upms-server .s-profile > a {
            background: url(images/zheng-upms.png) left top no-repeat;
        }

        #zheng-cms-admin #header {
            background: #455EC5;
        }

        #zheng-cms-admin .content_tab {
            background: #455EC5;
        }

        #zheng-cms-admin .s-profile > a {
            background: url(images/zheng-cms.png) left top no-repeat;
        }

        #zheng-pay-admin #header {
            background: #F06292;
        }

        #zheng-pay-admin .content_tab {
            background: #F06292;
        }

        #zheng-pay-admin .s-profile > a {
            background: url(images/zheng-pay.png) left top no-repeat;
        }

        #zheng-ucenter-home #header {
            background: #6539B4;
        }

        #zheng-ucenter-home .content_tab {
            background: #6539B4;
        }

        #zheng-ucenter-home .s-profile > a {
            background: url(images/zheng-ucenter.png) left top no-repeat;
        }

        #zheng-oss-web #header {
            background: #0B8DE5;
        }

        #zheng-oss-web .content_tab {
            background: #0B8DE5;
        }

        #zheng-oss-web .s-profile > a {
            background: url(images/zheng-oss.png) left top no-repeat;
        }

        #test #header {
            background: test;
        }

        #test .content_tab {
            background: test;
        }

        #test .s-profile > a {
            background: url(test) left top no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
        <ul id="menu">
            <li id="guide" class="line-trigger">
                <div class="line-wrap">
                    <div class="line top"></div>
                    <div class="line center"></div>
                    <div class="line bottom"></div>
                </div>
            </li>
            <li id="logo" class="hidden-xs">
            
                <span id="system_title">蛋糕店进销存管理系统</span>
            </li>
            <li class="pull-right">
                <ul class="hi-menu">
                    <!-- 搜索 -->
                    
                    <li class="dropdown" style="display:none">
                        <a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
                            <i class="him-icon zmdi zmdi-dropbox"></i>
                        </a>
                        <ul class="dropdown-menu dm-icon pull-right">
                            <li class="skin-switch">
                                请选择系统切换
                            </li>
                            <li class="divider"></li>

                            <li>
                                <a class="waves-effect switch-systems" href="javascript:;" systemid="1" systemname="zheng-pay-admin" systemtitle="支付管理系统"><i class="zmdi zmdi-paypal-alt"></i> 支付管理系统</a>
                            </li>
                            <li>
                                <a class="waves-effect switch-systems" href="javascript:;" systemid="2" systemname="zheng-cms-admin" systemtitle="内容管理系统"><i class="zmdi zmdi-wikipedia"></i> 内容管理系统</a>
                            </li>

                            <li>
                                <a class="waves-effect switch-systems" href="javascript:;" systemid="3" systemname="zheng-upms-server" systemtitle="权限管理系统"><i class="zmdi zmdi-shield-security"></i> 权限管理系统</a>
                            </li>


                            <li>
                                <a class="waves-effect switch-systems" href="javascript:;" systemid="4" systemname="zheng-ucenter-home" systemtitle="用户管理系统"><i class="zmdi zmdi-account"></i> 用户管理系统</a>
                            </li>
                            <li>
                                <a class="waves-effect switch-systems" href="javascript:;" systemid="5" systemname="zheng-oss-web" systemtitle="存储管理系统"><i class="zmdi zmdi-cloud"></i> 存储管理系统</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="waves-effect waves-light" data-toggle="dropdown" href="javascript:;">
                            <i class="him-icon zmdi zmdi-more-vert"></i>
                        </a>
                        <ul class="dropdown-menu dm-icon pull-right">
                            <li class="hidden-xs">
                                <a class="waves-effect" data-ma-action="fullscreen" href="javascript:fullPage();"><i class="zmdi zmdi-fullscreen"></i> 全屏模式</a>
                            </li>
                            <li>
                                <a class="waves-effect" data-ma-action="clear-localstorage" href="javascript:;"><i class="zmdi zmdi-delete"></i> 清除缓存</a>
                            </li>
                            
                            <li>
                                <a class="waves-effect" href="javascript:Tab.addTab('修改密码', 'system/adminpass.aspx');"><i class="zmdi zmdi-lock"></i> 修改密码</a>
                            </li>
                            <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" class="waves-effect" OnClick="LinkButton1_Click"><i class="zmdi zmdi-run"></i> 退出登录</asp:LinkButton>
                            


                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
        <section id="main">
        <!-- 左侧导航区 -->
        <aside id="sidebar">
            <!-- 个人资料区 -->
            <div class="s-profile">
                <a class="waves-effect waves-light" href="javascript:;">
                    <div class="sp-pic">
                        <img src="images/avatar.jpeg">
                    </div>
                    <div class="sp-info">
                      【	<asp:Literal ID="Literal1" runat="server"></asp:Literal>】  	<asp:Literal ID="Literal2" runat="server"></asp:Literal>，您好！
                        <i class="zmdi zmdi-caret-down"></i>
                    </div>
                </a>
                <ul class="main-menu">
               
                    <li>
                           <a class="waves-effect" href="javascript:Tab.addTab('修改密码', 'system/adminpass.aspx');"><i class="zmdi zmdi-lock"></i> 修改密码</a>
                    </li>
                    <li>

                          <asp:LinkButton ID="LinkButton2" runat="server" class="waves-effect" OnClick="LinkButton1_Click"><i class="zmdi zmdi-run"></i> 退出登录</asp:LinkButton>

                    </li>
                </ul>
            </div>
            <!-- /个人资料区 -->
            <!-- 菜单区 -->
            <ul class="main-menu">
                <li>
                    <a class="waves-effect" href="Default.aspx"><i class="zmdi zmdi-home"></i> 首页</a>
                </li>
          

                    <% if (Session["power"] != null)
     { %>
    <% if (Session["power"].ToString() == "管理员")
        { %>
        
<li class="sub-menu system_menus system_1 2">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 管理员管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加管理员信息', 'admin/Add.aspx');">添加管理员信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理管理员信息', 'admin/List.aspx');">管理管理员信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 3">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 员工管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加员工信息', 'users/Add.aspx');">添加员工信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理员工信息', 'users/List.aspx');">管理员工信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 4">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 供应商管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加供应商信息', 'suppliers/Add.aspx');">添加供应商信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理供应商信息', 'suppliers/List.aspx');">管理供应商信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 5">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 原材料管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加原材料信息', 'materials/Add.aspx');">添加原材料信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List.aspx');">管理原材料信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 6">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 采购订单管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加采购订单信息', 'purchaseorder/Add.aspx');">添加采购订单信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理采购订单信息', 'purchaseorder/List.aspx');">管理采购订单信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 7">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 采购退库管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加采购退库信息', 'purchasereturn/Add.aspx');">添加采购退库信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理采购退库信息', 'purchasereturn/List.aspx');">管理采购退库信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 8">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 商品管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加商品信息', 'products/Add.aspx');">添加商品信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理商品信息', 'products/List.aspx');">管理商品信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 9">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售商品管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售商品信息', 'pselling/Add.aspx');">添加销售商品信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售商品信息', 'pselling/List.aspx');">管理销售商品信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 10">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售退库管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售退库信息', 'salesreturn/Add.aspx');">添加销售退库信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售退库信息', 'salesreturn/List.aspx');">管理销售退库信息</a></li>

                    </ul>
 </li>


                <li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 库存查询</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List1.aspx');">原材料库存</a></li>
			<li><a class="waves-effect" href="javascript:Tab.addTab('管理商品信息1', 'products/List1.aspx');">商品库存</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 11">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 系统管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('修改登录密码', 'system/adminpass.aspx');">修改登录密码</a></li>

                    </ul>
 </li>

    <%} %>
    
    <%  if (Session["power"].ToString() == "员工")
        { %>

<li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 菜单列表</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('修改个人信息', 'users/info.aspx');">修改个人信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('修改登录密码', 'system/userspass.aspx');">修改登录密码</a></li>

                    </ul>
 </li>
    <%} %>

                    <%  if (Session["power"].ToString() == "销售员")
        { %>

                        <li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 库存查询</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List1.aspx');">原材料库存</a></li>
			<li><a class="waves-effect" href="javascript:Tab.addTab('管理商品信息1', 'products/List1.aspx');">商品库存</a></li>

                    </ul>
 </li>

                <li class="sub-menu system_menus system_1 9">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售商品管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售商品信息', 'pselling/Add.aspx');">添加销售商品信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售商品信息', 'pselling/List.aspx');">管理销售商品信息</a></li>

                    </ul>
 </li>

                <li class="sub-menu system_menus system_1 9">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售商品管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售商品信息', 'pselling/Add.aspx');">添加销售商品信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售商品信息', 'pselling/List.aspx');">管理销售商品信息</a></li>

                    </ul>
 </li>

                <li class="sub-menu system_menus system_1 10">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售退库管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售退库信息', 'salesreturn/Add.aspx');">添加销售退库信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售退库信息', 'salesreturn/List.aspx');">管理销售退库信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 菜单列表</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('修改个人信息', 'users/info.aspx');">修改个人信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('修改登录密码', 'system/userspass.aspx');">修改登录密码</a></li>

                    </ul>
 </li>
    <%} %>


                  <%  if (Session["power"].ToString() == "采购员")
        { %>

                
<li class="sub-menu system_menus system_1 5">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 原材料管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加原材料信息', 'materials/Add.aspx');">添加原材料信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List.aspx');">管理原材料信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 6">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 采购订单管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加采购订单信息', 'purchaseorder/Add.aspx');">添加采购订单信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理采购订单信息', 'purchaseorder/List.aspx');">管理采购订单信息</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 7">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 采购退库管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加采购退库信息', 'purchasereturn/Add.aspx');">添加采购退库信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理采购退库信息', 'purchasereturn/List.aspx');">管理采购退库信息</a></li>

                    </ul>
 </li>

                              <li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 库存查询</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List1.aspx');">原材料库存</a></li>
			<li><a class="waves-effect" href="javascript:Tab.addTab('管理商品信息1', 'products/List1.aspx');">商品库存</a></li>

                    </ul>
 </li>


<li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 菜单列表</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('修改个人信息', 'users/info.aspx');">修改个人信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('修改登录密码', 'system/userspass.aspx');">修改登录密码</a></li>

                    </ul>
 </li>
    <%} %>


                   <%  if (Session["power"].ToString() == "仓管员")
        { %>

                              <li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 库存查询</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List1.aspx');">原材料库存</a></li>
			<li><a class="waves-effect" href="javascript:Tab.addTab('管理商品信息1', 'products/List1.aspx');">商品库存</a></li>

                    </ul>
 </li>

                <li class="sub-menu system_menus system_1 5">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 原材料管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加原材料信息', 'materials/Add.aspx');">添加原材料信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理原材料信息', 'materials/List.aspx');">管理原材料信息</a></li>

                    </ul>
 </li>

                        <li class="sub-menu system_menus system_1 9">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 销售商品管理</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('添加销售商品信息', 'pselling/Add.aspx');">添加销售商品信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('管理销售商品信息', 'pselling/List.aspx');">管理销售商品信息</a></li>

                    </ul>
 </li>



<li class="sub-menu system_menus system_1 12">
                    <a class="waves-effect" href="javascript:;"><i class="zmdi  zmdi-menu"></i> 菜单列表</a>
                    <ul>
                     		<li><a class="waves-effect" href="javascript:Tab.addTab('修改个人信息', 'users/info.aspx');">修改个人信息</a></li>
		<li><a class="waves-effect" href="javascript:Tab.addTab('修改登录密码', 'system/userspass.aspx');">修改登录密码</a></li>

                    </ul>
 </li>
    <%} %>

    
    <%} %>

           
                <li>
                    <div class="upms-version">
                        © 蛋糕店进销存管理系统 2022
                    </div>
                </li>
            </ul>
            <!-- /菜单区 -->
        </aside>
        <!-- /左侧导航区 -->
        <section id="content">
            <div class="content_tab">
                <div class="tab_left">
                    <a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-left"></i></a>
                </div>
                <div class="tab_right">
                    <a class="waves-effect waves-light" href="javascript:;"><i class="zmdi zmdi-chevron-right"></i></a>
                </div>
                <ul id="tabs" class="tabs">
                    <li id="tab_home" data-index="home" data-closeable="false" class="cur">
                        <span class="waves-effect waves-light">系统首页</span>
                    </li>
                </ul>
            </div>
            <div class="content_main">
                <div id="iframe_home" class="iframe cur">
             
                    <h4 style="
    border-bottom: 2px solid #29a176;
    /* width: 200px; */
    display: block;
    font-size: 16px;
    padding-bottom: 10px;
">系统首页：</h4>
                    <p></p>
                    <p>
                         <table id="ctl00_ContentPlaceHolder1_GridView1" style="width:100%; text-align:center;line-height:33px;">
                                                          <tr>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  欢迎您的登录！</td>
                                                          </tr>
                                                      
                                                          <tr>
                                                              <td>
                                                                  当前时间：<%= DateTime.Now %></td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                                          <tr>
                                                              <td>
                                                                  &nbsp;</td>
                                                          </tr>
                                           </table>

                    </p>
          
                </div>
            </div>
        </section>
    </section>
        <footer id="footer"></footer>

        <script src="js/jquery.1.12.4.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/waves.min.js"></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/BootstrapMenu.min.js"></script>
        <script src="js/device.min.js"></script>
        <script src="js/jquery.fullPage.min.js"></script>
        <script src="js/jquery.jdirk.min.js"></script>
        <script src="js/jquery.cookie.js"></script>

        <script src="js/admin.js"></script>
    </form>
</body>
</html>

