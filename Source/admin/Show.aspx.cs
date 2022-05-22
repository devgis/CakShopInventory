using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化管理员
            chushi();
        }
    }

    /// <summary>
    /// 初始化管理员
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from admin where aid="+ Request.QueryString["id"];
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lblaid.Text = sdr["aid"].ToString();
                lbllname.Text = sdr["lname"].ToString();
                lblpwd.Text = sdr["pwd"].ToString();
                lblflag.Text = sdr["flag"].ToString();
            }

        }
    }
}

