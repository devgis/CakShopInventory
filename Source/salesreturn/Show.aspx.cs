using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class salesreturn_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化销售退库
            chushi();
        }
    }

    /// <summary>
    /// 初始化销售退库
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select a.*,b.pname from salesreturn a  left join products b on a.pid=b.pid where id="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblid.Text = sdr["id"].ToString();
                lblpid.Text = sdr["pname"].ToString();
                lblnnum.Text = sdr["nnum"].ToString();
                lblreason.Text = sdr["reason"].ToString();
                lblprice.Text = sdr["price"].ToString();
                lblremarks.Text = sdr["remarks"].ToString();
                lblauser.Text = sdr["auser"].ToString();
                lblatime.Text = sdr["atime"].ToString();
            }

        }
    }
}

