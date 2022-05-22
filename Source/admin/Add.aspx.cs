using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加管理员
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (DbHelperSQL.Exists("select count(*) from admin where lname='" + txt_lname.Text + "'"))
        {
            MessageBox.Show(this, "该登录名已存在，请重新输入！");
            return;
        }

       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Admin ( lname,pwd,flag ) ");
        strSql.Append(@" values (@lname,@pwd,@flag)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@lname", SqlDbType.VarChar,50),
            new SqlParameter("@pwd", SqlDbType.VarChar,100),
            new SqlParameter("@flag", SqlDbType.VarChar,20)        };

        parameters[0].Value =txt_lname.Text;
        parameters[1].Value =txt_pwd.Text;
        parameters[2].Value =txt_flag.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

