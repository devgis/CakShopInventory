using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class users_Show : System.Web.UI.Page
{
  protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化员工
            chushi();
        }
    }

    /// <summary>
    /// 初始化员工
    ///</summary>
    protected void chushi()
    {
        //判断url传递的id是否为null
        if (Request.QueryString["id"] != null)
        {

            string sql="";
            sql="select * from users where userid='"+ Request.QueryString["id"]+"'";
            //根据编号得到相应的记录
            SqlDataReader sdr = DbHelperSQL.ExecuteReader(sql);
            if (sdr.Read())
            {
                lbluserid.Text = sdr["userid"].ToString();
                lblpassword.Text = sdr["password"].ToString();
                lblusername.Text = sdr["username"].ToString();
                lblsex.Text = sdr["sex"].ToString();
                lbltel.Text = sdr["tel"].ToString();
                lbladdress.Text = sdr["address"].ToString();
                lbluserstate.Text = sdr["userstate"].ToString();
                lblremark.Text = sdr["remark"].ToString();
            }

        }
    }
}

