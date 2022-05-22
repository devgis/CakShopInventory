using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class users_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加员工
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (DbHelperSQL.Exists("select count(*) from users where userid='" + txt_userid.Text + "'"))
        {
            MessageBox.Show(this, "该员工编号已存在，请重新输入！");
            return;
        }

       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Users ( userid,password,username,sex,tel,address,userstate,remark ) ");
        strSql.Append(@" values (@userid,@password,@username,@sex,@tel,@address,@userstate,@remark)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@userid", SqlDbType.VarChar,50),
            new SqlParameter("@password", SqlDbType.VarChar,50),
            new SqlParameter("@username", SqlDbType.VarChar,50),
            new SqlParameter("@sex", SqlDbType.VarChar,10),
            new SqlParameter("@tel", SqlDbType.VarChar,11),
            new SqlParameter("@address", SqlDbType.VarChar,100),
            new SqlParameter("@userstate", SqlDbType.VarChar,20),
            new SqlParameter("@remark", SqlDbType.VarChar,50)        };

        parameters[0].Value =txt_userid.Text;
        parameters[1].Value =txt_password.Text;
        parameters[2].Value =txt_username.Text;
        parameters[3].Value =rtsex.SelectedValue;
        parameters[4].Value =txt_tel.Text;
        parameters[5].Value =txt_address.Text;
        parameters[6].Value =txt_userstate.Text;
        parameters[7].Value =txt_remark.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

