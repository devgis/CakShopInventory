using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class purchaseorder_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化采购订单
            chushi();
        }
    }

    /// <summary>
    /// 初始化采购订单
    /// </summary>
    protected void chushi()
    {
ddlmid.DataSource = DbHelperSQL.Query("select mid,mname from materials");
            ddlmid.DataTextField = "mname";
            ddlmid.DataValueField = "mid";
            ddlmid.DataBind();

ddlsid.DataSource = DbHelperSQL.Query("select sid,sname from suppliers");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();


        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from purchaseorder where id=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            ddlmid.SelectedValue=ds.Tables[0].Rows[0]["mid"].ToString();
            txt_nnum.Text = ds.Tables[0].Rows[0]["nnum"].ToString();
            ddlsid.SelectedValue=ds.Tables[0].Rows[0]["sid"].ToString();
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
            txt_remarks.Text = ds.Tables[0].Rows[0]["remarks"].ToString();
            txt_auser.Text = ds.Tables[0].Rows[0]["auser"].ToString();
            txt_atime.Text = DateTime.Parse(ds.Tables[0].Rows[0]["atime"].ToString()).ToString("yyyy-MM-dd");
            labelSum.Text = ds.Tables[0].Rows[0]["pricesum"].ToString();
        }
    }

    /// <summary>
    /// 编辑采购订单
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update purchaseorder set ");
        strSql.Append("mid = @mid,");
        strSql.Append("nnum = @nnum,");
        strSql.Append("sid = @sid,");
        strSql.Append("price = @price,");
        strSql.Append("remarks = @remarks,");
        strSql.Append("auser = @auser,");
        strSql.Append("pricesum = @pricesum,");
        strSql.Append("atime = @atime");
        strSql.Append("  where id=@id");
        int id = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@id", SqlDbType.Int,4),
                    new SqlParameter("@mid", SqlDbType.Int,4),
                    new SqlParameter("@nnum", SqlDbType.VarChar,50),
                    new SqlParameter("@sid", SqlDbType.Int,4),
                    new SqlParameter("@price", SqlDbType.Decimal,9),
                    new SqlParameter("@remarks", SqlDbType.VarChar,50),
                    new SqlParameter("@auser", SqlDbType.VarChar,50),
                    new SqlParameter("@pricesum", SqlDbType.Decimal,9),
                    new SqlParameter("@atime", SqlDbType.DateTime,8)  };
              parameters[0].Value =id;
              parameters[1].Value =ddlmid.SelectedValue;
              parameters[2].Value = txt_nnum.Text;
              parameters[3].Value =ddlsid.SelectedValue;
              parameters[4].Value = txt_price.Text;
              parameters[5].Value = txt_remarks.Text;
              parameters[6].Value = txt_auser.Text;

        parameters[7].Value = decimal.Parse(txt_price.Text) * decimal.Parse(txt_nnum.Text);

        parameters[8].Value = txt_atime.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    protected void ddlmid_SelectedIndexChanged(object sender, EventArgs e)
    {
        StringBuilder strSql1 = new StringBuilder();
        strSql1.Append(@"select * from materials where mid=" + int.Parse(ddlmid.SelectedValue));

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql1.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
        }
        onchang();
    }
    void onchang()
    {
        StringBuilder strSql1 = new StringBuilder();
        strSql1.Append(@"select * from materials where mid=" + int.Parse(ddlmid.SelectedValue));

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql1.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            decimal num = 0;
            try
            {
                num = decimal.Parse(txt_nnum.Text);
                labelSum.Text = (decimal.Parse(ds.Tables[0].Rows[0]["price"].ToString()) * num).ToString();
            }
            catch { }
        }
    }

    protected void txt_nnum_TextChanged(object sender, EventArgs e)
    {
        onchang();
    }

}

