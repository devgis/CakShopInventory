using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class users_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化员工
            chushi();
        }
    }

    /// <summary>
    /// 初始化员工
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from users where userid='" + Request.QueryString["id"] + "'");

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_userid.Text = ds.Tables[0].Rows[0]["userid"].ToString();
            txt_password.Text = ds.Tables[0].Rows[0]["password"].ToString();
            txt_username.Text = ds.Tables[0].Rows[0]["username"].ToString();
            rtsex.SelectedValue=ds.Tables[0].Rows[0]["sex"].ToString();
            txt_tel.Text = ds.Tables[0].Rows[0]["tel"].ToString();
            txt_address.Text = ds.Tables[0].Rows[0]["address"].ToString();
            txt_userstate.Text = ds.Tables[0].Rows[0]["userstate"].ToString();
            txt_remark.Text = ds.Tables[0].Rows[0]["remark"].ToString();
        }
    }

    /// <summary>
    /// 编辑员工
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update users set ");
        strSql.Append("userid = @userid,");
        strSql.Append("password = @password,");
        strSql.Append("username = @username,");
        strSql.Append("sex = @sex,");
        strSql.Append("tel = @tel,");
        strSql.Append("address = @address,");
        strSql.Append("userstate = @userstate,");
        strSql.Append("remark = @remark");
        strSql.Append("  where userid=@userid");
        string userid = Request.QueryString["id"];

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@userid", SqlDbType.VarChar,50),
                    new SqlParameter("@password", SqlDbType.VarChar,50),
                    new SqlParameter("@username", SqlDbType.VarChar,50),
                    new SqlParameter("@sex", SqlDbType.VarChar,10),
                    new SqlParameter("@tel", SqlDbType.VarChar,11),
                    new SqlParameter("@address", SqlDbType.VarChar,100),
                    new SqlParameter("@userstate", SqlDbType.VarChar,20),
                    new SqlParameter("@remark", SqlDbType.VarChar,50)  };
              parameters[0].Value = txt_userid.Text;
              parameters[1].Value = txt_password.Text;
              parameters[2].Value = txt_username.Text;
              parameters[3].Value =rtsex.SelectedValue;
              parameters[4].Value = txt_tel.Text;
              parameters[5].Value = txt_address.Text;
              parameters[6].Value = txt_userstate.Text;
              parameters[7].Value = txt_remark.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

