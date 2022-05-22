using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class materials_Show : System.Web.UI.Page
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
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from materials where mid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblmid.Text = sdr["mid"].ToString();
                lblmname.Text = sdr["mname"].ToString();
                lblunit.Text = sdr["unit"].ToString();
                lblspec.Text = sdr["spec"].ToString();
                lblremark.Text = sdr["remark"].ToString();
                lblquantity.Text = sdr["quantity"].ToString();
                lblwquantity.Text = sdr["wquantity"].ToString();
                lblprice.Text = sdr["price"].ToString();
            }

        }
    }
}

