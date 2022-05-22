using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class purchasereturn_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        ddlmid.DataSource = DbHelperSQL.Query("select mid,mname from materials");
            ddlmid.DataTextField = "mname";
            ddlmid.DataValueField = "mid";
            ddlmid.DataBind();

ddlsid.DataSource = DbHelperSQL.Query("select sid,sname from suppliers");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();

            this.txt_auser.Text = Session["name"].ToString();

        }
    }

    /// <summary>
    /// 添加采购退库
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Purchasereturn ( mid,nnum,sid,price,reasons,auser,atime ) ");
        strSql.Append(@" values (@mid,@nnum,@sid,@price,@reasons,@auser,@atime)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@mid", SqlDbType.Int,4),
            new SqlParameter("@nnum", SqlDbType.VarChar,50),
            new SqlParameter("@sid", SqlDbType.Int,4),
            new SqlParameter("@price", SqlDbType.Decimal,9),
            new SqlParameter("@reasons", SqlDbType.VarChar,50),
            new SqlParameter("@auser", SqlDbType.VarChar,50),
            new SqlParameter("@atime", SqlDbType.DateTime,8)        };

        parameters[0].Value =ddlmid.SelectedValue;
        parameters[1].Value =txt_nnum.Text;
        parameters[2].Value =ddlsid.SelectedValue;
        parameters[3].Value =decimal.Parse (txt_price.Text);
        parameters[4].Value =txt_reasons.Text;
        parameters[5].Value =txt_auser.Text;
        parameters[6].Value = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);
        DbHelperSQL.ExecuteSql(" update materials set quantity=quantity-" + parameters[1].Value + " where mid='" + parameters[0].Value + "' ");


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

