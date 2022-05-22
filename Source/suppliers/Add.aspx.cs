using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class suppliers_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加供应商
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
        //验证是否已经存在
        if (DbHelperSQL.Exists("select count(*) from suppliers where sname='" + txt_sname.Text + "'"))
        {
            MessageBox.Show(this, "该供应商名称已存在，请重新输入！");
            return;
        }

       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Suppliers ( sname ) ");
        strSql.Append(@" values (@sname)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@sname", SqlDbType.VarChar,50)        };

        parameters[0].Value =txt_sname.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

