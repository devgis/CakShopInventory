using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化管理员
            chushi();
        }
    }

    /// <summary>
    /// 初始化管理员
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from admin where aid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_lname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txt_pwd.Text = ds.Tables[0].Rows[0]["pwd"].ToString();
            txt_flag.Text = ds.Tables[0].Rows[0]["flag"].ToString();
        }
    }

    /// <summary>
    /// 编辑管理员
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update admin set ");
        strSql.Append("lname = @lname,");
        strSql.Append("pwd = @pwd,");
        strSql.Append("flag = @flag");
        strSql.Append("  where aid=@aid");
        int aid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@aid", SqlDbType.Int,4),
                    new SqlParameter("@lname", SqlDbType.VarChar,50),
                    new SqlParameter("@pwd", SqlDbType.VarChar,100),
                    new SqlParameter("@flag", SqlDbType.VarChar,20)  };
              parameters[0].Value =aid;
              parameters[1].Value = txt_lname.Text;
              parameters[2].Value = txt_pwd.Text;
              parameters[3].Value = txt_flag.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

