using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// 登录
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void loginbt_Click(object sender, EventArgs e)
    {
        string str = "";

        //验证输入
        if (username.Value == "")
        {
            str = "账号不能为空！";
        }

        else if (password.Value == "")
        {
            str = "密码不能为空！";
        }
        else
        {
            //管理员
            if (true)
            {
                //根据用户名和密码得到管理员信息
                StringBuilder strSql = new StringBuilder();
                strSql.Append(@" select * from admin ");
                strSql.Append(@" where lname=@lname and pwd=@pwd");

                //设置参数
                SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@lname", SqlDbType.VarChar,50),
            new SqlParameter("@pwd", SqlDbType.VarChar,50)     };

                parameters[0].Value = username.Value;
                parameters[1].Value = password.Value;

                //根据用户名和密码得到管理员信息
                SqlDataReader sdr = DbHelperSQL.ExecuteReader(strSql.ToString(), parameters);

                //判断管理员是否存在
                if (sdr.Read())
                {
                    Session["id"] = sdr["lname"].ToString();
                    Session["name"] = sdr["lname"].ToString();
                    Session["power"] = "管理员";
                    Response.Redirect("Default.aspx");

                }
                else
                {
                    str = "登录失败，用户名或密码错误。";
                }
            }

        }

        //弹出提示信息
        MessageBox.Show(this, "请输入正确的用户名或密码");
    }
}
