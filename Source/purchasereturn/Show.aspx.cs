using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class purchasereturn_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化采购退库
            chushi();
        }
    }

    /// <summary>
    /// 初始化采购退库
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select a.*,b.mname,c.sname from purchasereturn a  left join materials b on a.mid=b.mid left join suppliers c on a.sid=c.sid where id="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblid.Text = sdr["id"].ToString();
                lblmid.Text = sdr["mname"].ToString();
                lblnnum.Text = sdr["nnum"].ToString();
                lblsid.Text = sdr["sname"].ToString();
                lblprice.Text = sdr["price"].ToString();
                lblreasons.Text = sdr["reasons"].ToString();
                lblauser.Text = sdr["auser"].ToString();
                lblatime.Text = sdr["atime"].ToString();
            }

        }
    }
}

