using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class materials_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化原材料
            chushi();
        }
    }

    /// <summary>
    /// 初始化原材料
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"select * from materials where mid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            txt_mname.Text = ds.Tables[0].Rows[0]["mname"].ToString();
            txt_unit.Text = ds.Tables[0].Rows[0]["unit"].ToString();
            txt_spec.Text = ds.Tables[0].Rows[0]["spec"].ToString();
            txt_remark.Text = ds.Tables[0].Rows[0]["remark"].ToString();
            txt_quantity.Text = ds.Tables[0].Rows[0]["quantity"].ToString();
            txt_wquantity.Text = ds.Tables[0].Rows[0]["wquantity"].ToString();
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
        }
    }

    /// <summary>
    /// 编辑原材料
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql0 = new StringBuilder();

        strSql0.Append("update materials set ");
        strSql0.Append("mname = @mname,");
        strSql0.Append("unit = @unit,");
        strSql0.Append("spec = @spec,");
        strSql0.Append("remark = @remark,");
        strSql0.Append("quantity = @quantity,");
        strSql0.Append("wquantity = @wquantity,");
        strSql0.Append("price = @price");
        strSql0.Append("  where mid=@mid");
        int mid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@mid", SqlDbType.Int,4),
                    new SqlParameter("@mname", SqlDbType.VarChar,50),
                    new SqlParameter("@unit", SqlDbType.VarChar,50),
                    new SqlParameter("@spec", SqlDbType.VarChar,50),
                    new SqlParameter("@remark", SqlDbType.VarChar,50),
                    new SqlParameter("@quantity", SqlDbType.Decimal,9),
                    new SqlParameter("@wquantity", SqlDbType.Decimal,9),
                    new SqlParameter("@price", SqlDbType.Decimal,9)  };
              parameters[0].Value =mid;
              parameters[1].Value = txt_mname.Text;
              parameters[2].Value = txt_unit.Text;
              parameters[3].Value = txt_spec.Text;
              parameters[4].Value = txt_remark.Text;
              parameters[5].Value = txt_quantity.Text;
              parameters[6].Value = txt_wquantity.Text;
              parameters[7].Value = txt_price.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql0.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

