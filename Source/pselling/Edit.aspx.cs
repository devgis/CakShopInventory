using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class pselling_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化销售商品
            chushi();
        }
    }

    /// <summary>
    /// 初始化销售商品
    /// </summary>
    protected void chushi()
    {
ddlpid.DataSource = DbHelperSQL.Query("select pid,pname from products");
            ddlpid.DataTextField = "pname";
            ddlpid.DataValueField = "pid";
            ddlpid.DataBind();


        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from pselling where id=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlpid.SelectedValue=ds.Tables[0].Rows[0]["pid"].ToString();
            txt_nnum.Text = ds.Tables[0].Rows[0]["nnum"].ToString();
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
            txt_remark.Text = ds.Tables[0].Rows[0]["remark"].ToString();
            txt_auser.Text = ds.Tables[0].Rows[0]["auser"].ToString();
            txt_atime.Text = ds.Tables[0].Rows[0]["atime"].ToString();
        }
    }

    /// <summary>
    /// 编辑销售商品
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update pselling set ");
        strSql.Append("pid = @pid,");
        strSql.Append("nnum = @nnum,");
        strSql.Append("price = @price,");
        strSql.Append("remark = @remark,");
        strSql.Append("auser = @auser,");
        strSql.Append("atime = @atime");
        strSql.Append("  where id=@id");
        int id = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@id", SqlDbType.Int,4),
                    new SqlParameter("@pid", SqlDbType.Int,4),
                    new SqlParameter("@nnum", SqlDbType.Int,4),
                    new SqlParameter("@price", SqlDbType.Decimal,9),
                    new SqlParameter("@remark", SqlDbType.VarChar,200),
                    new SqlParameter("@auser", SqlDbType.VarChar,50),
                    new SqlParameter("@atime", SqlDbType.DateTime,8)  };
              parameters[0].Value =id;
              parameters[1].Value =ddlpid.SelectedValue;
              parameters[2].Value = txt_nnum.Text;
              parameters[3].Value = txt_price.Text;
              parameters[4].Value = txt_remark.Text;
              parameters[5].Value = txt_auser.Text;
              parameters[6].Value = txt_atime.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

