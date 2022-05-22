using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class products_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //初始化商品
            ddlmid.DataSource = DbHelperSQL.Query("select mid,mname from materials");
            ddlmid.DataTextField = "mname";
            ddlmid.DataValueField = "mid";
            ddlmid.DataBind();
            chushi();
        }
    }

    /// <summary>
    /// 初始化商品
    /// </summary>
    protected void chushi()
    {

        StringBuilder strSql1 = new StringBuilder();
        strSql1.Append(@"select * from products where pid=" + Request.QueryString["id"] );

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql1.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {

            ddlmid.SelectedValue = ds.Tables[0].Rows[0]["mid"].ToString().Trim();
            txt_nnum.Text = ds.Tables[0].Rows[0]["materialnumber"].ToString();

            txt_pname.Text = ds.Tables[0].Rows[0]["pname"].ToString();
            txt_ptype.Text = ds.Tables[0].Rows[0]["ptype"].ToString();
            Labelpic.Text = ds.Tables[0].Rows[0]["pic"].ToString();
            if (Labelpic.Text != "" && Labelpic.Text.Length > 3)
            {
               Imagepic.ImageUrl = "../uploads/" + Labelpic.Text;
               Imagepic.Visible = true;
             }
            txt_quantity.Text = ds.Tables[0].Rows[0]["quantity"].ToString();
            txt_price.Text = ds.Tables[0].Rows[0]["price"].ToString();
            txt_destion.Text = ds.Tables[0].Rows[0]["destion"].ToString();
        }
    }

    /// <summary>
    /// 编辑商品
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //更新   
        StringBuilder strSql = new StringBuilder();

        strSql.Append("update products set ");
        strSql.Append("pname = @pname,");
        strSql.Append("ptype = @ptype,");
        strSql.Append("pic = @pic,");
        strSql.Append("quantity = @quantity,");
        strSql.Append("price = @price,");
        strSql.Append("destion = @destion");
        strSql.Append("  where pid=@pid");
        int pid = int.Parse(Request.QueryString["id"]);

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
                    new SqlParameter("@pid", SqlDbType.Int,4),
                    new SqlParameter("@pname", SqlDbType.VarChar,50),
                    new SqlParameter("@ptype", SqlDbType.VarChar,20),
                    new SqlParameter("@pic", SqlDbType.VarChar,100),
                    new SqlParameter("@quantity", SqlDbType.Int,4),
                    new SqlParameter("@price", SqlDbType.Decimal,9),
                    new SqlParameter("@destion", SqlDbType.NText,50000)  };
            parameters[0].Value =pid;
            parameters[1].Value = txt_pname.Text;
            parameters[2].Value = txt_ptype.Text;

        string addrpic =Labelpic.Text;
        if (fppic.HasFile)
        {
            string name = this.fppic.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path =  filename + extname;
            string savePath = Server.MapPath(@"..\uploads\" + filename + extname);
            fppic.PostedFile.SaveAs(savePath);
            addrpic = path;
        }
              parameters[3].Value =addrpic;
              parameters[4].Value = txt_quantity.Text;
              parameters[5].Value = txt_price.Text;
              parameters[6].Value = txt_destion.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "List.aspx");
    }



    
}

