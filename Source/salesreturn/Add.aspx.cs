using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class salesreturn_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ddlpid.DataSource = DbHelperSQL.Query("select pid,pname from products");
            ddlpid.DataTextField = "pname";
            ddlpid.DataValueField = "pid";
            ddlpid.DataBind();

            this.txt_auser.Text = Session["name"].ToString();
        }
    }

    /// <summary>
    /// 添加销售退库
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Salesreturn ( pid,nnum,reason,price,remarks,auser,atime ) ");
        strSql.Append(@" values (@pid,@nnum,@reason,@price,@remarks,@auser,@atime)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@pid", SqlDbType.Int,4),
            new SqlParameter("@nnum", SqlDbType.Int,4),
            new SqlParameter("@reason", SqlDbType.VarChar,200),
            new SqlParameter("@price", SqlDbType.Decimal,9),
            new SqlParameter("@remarks", SqlDbType.VarChar,50),
            new SqlParameter("@auser", SqlDbType.VarChar,50),
            new SqlParameter("@atime", SqlDbType.DateTime,8)        };

        parameters[0].Value =ddlpid.SelectedValue;
        parameters[1].Value =int.Parse (txt_nnum.Text);
        parameters[2].Value =txt_reason.Text;
        parameters[3].Value =decimal.Parse (txt_price.Text);
        parameters[4].Value =txt_remarks.Text;
        parameters[5].Value =txt_auser.Text;
        parameters[6].Value = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        DbHelperSQL.ExecuteSql(" update products set quantity=quantity+" + parameters[1].Value + " where pid='" + parameters[0].Value + "' ");

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

