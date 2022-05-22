using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class products_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from products where pid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblpid.Text = sdr["pid"].ToString();
                lblpname.Text = sdr["pname"].ToString();
                lblptype.Text = sdr["ptype"].ToString();
                if (sdr["pic"].ToString() != "" && sdr["pic"].ToString().Length > 3)
                {
                    imgpic.ImageUrl = "../uploads/" + sdr["pic"].ToString();
                }
                lblquantity.Text = sdr["quantity"].ToString();
                lblprice.Text = sdr["price"].ToString();
                lbldestion.Text = sdr["destion"].ToString();
            }

        }
    }
}

