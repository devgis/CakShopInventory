using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class suppliers_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化供应商
            chushi();
        }
    }

    /// <summary>
    /// 初始化供应商
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from suppliers where sid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_sname.Text = ds.Tables[0].Rows[0]["sname"].ToString();
        }
    }

    /// <summary>
    /// 编辑供应商
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update suppliers set ");
        strSql.Append("sname = @sname");
        strSql.Append("  where sid=@sid");
        int sid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@sid", SqlDbType.Int,4),
                    new SqlParameter("@sname", SqlDbType.VarChar,50)  };
              parameters[0].Value =sid;
              parameters[1].Value = txt_sname.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

