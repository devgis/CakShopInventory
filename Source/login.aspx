<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>品客蛋糕店进销存管理系统</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="css/waves.min.css" rel="stylesheet">
    <link href="css/checkbix.min.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
</head>
<body>
    <div style="/* margin: 0 auto; */
    font-size: 30px; color: white; top: 35%; letter-spacing: 5px; position: relative; text-align: center;">
        品客蛋糕店进销存管理系统
    </div>

    <div id="login-window">


        <form id="form1" runat="server">
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                <div class="fg-line">
                    <input id="username" type="text" class="form-control" name="username" placeholder="帐号" required="" autofocus=""  runat="server" value="admin">
                </div>
            </div>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-lock"></i></span>
                <div class="fg-line">
                    <input id="password" type="password" class="form-control" name="password" placeholder="密码" required=""  runat="server" value="">
                </div>
            </div>
                      <div class="input-group m-b-20">
    <%--            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem >管理员</asp:ListItem>
                                <asp:ListItem >员工</asp:ListItem>
                            </asp:DropDownList>--%>

            </div>

                        
                        
            <div class="clearfix">
            </div>


            <asp:LinkButton ID="loginbt" runat="server" class="waves-effect waves-button waves-float" OnClick="loginbt_Click"><i class="zmdi zmdi-arrow-forward"></i></asp:LinkButton>
           
        </form>
    </div>
    <script src="js/jquery.1.12.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <script src="js/checkbix.min.js"></script>



</body>
</html>

