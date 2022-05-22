using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class products_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlmid.DataSource = DbHelperSQL.Query("select mid,mname from materials");
            ddlmid.DataTextField = "mname";
            ddlmid.DataValueField = "mid";
            ddlmid.DataBind();
        }
    }

    /// <summary>
    /// 添加商品
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //验证是否已经存在
        if (DbHelperSQL.Exists("select count(*) from products where pname='" + txt_pname.Text + "'"))
        {
            MessageBox.Show(this, "该商品名称已存在，请重新输入！");
            return;
        }
        object dt = DbHelperSQL.GetSingle("select price from materials where mid='" + ddlmid.SelectedValue + "'");
        if (dt == null)
        {
            return;
        }

        decimal materialsprice = decimal.Parse(dt.ToString());
        int materialnumber = int.Parse(txt_nnum.Text);

        //设置Sql
        StringBuilder strSql = new StringBuilder();
        strSql.Append(@"insert into Products (mid,materialsprice,materialnumber,pname,ptype,pic,quantity,price,destion ) ");
        strSql.Append(@" values (@mid,@materialsprice,@materialnumber,@pname,@ptype,@pic,@quantity,@price,@destion)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@mid", SqlDbType.Int,4),
            new SqlParameter("@materialsprice", SqlDbType.Decimal,9),
            new SqlParameter("@materialnumber", SqlDbType.Int,4),
            new SqlParameter("@pname", SqlDbType.VarChar,20),
            new SqlParameter("@ptype", SqlDbType.VarChar,20),
            new SqlParameter("@pic", SqlDbType.VarChar,100),
            new SqlParameter("@quantity", SqlDbType.Int,4),
            new SqlParameter("@price", SqlDbType.Decimal,9),
            new SqlParameter("@destion", SqlDbType.NText,50000)        };

        parameters[0].Value = ddlmid.SelectedValue.Trim();
        parameters[1].Value = materialsprice;
        parameters[2].Value = materialnumber;
        parameters[3].Value = txt_pname.Text;
        parameters[4].Value = txt_ptype.Text;


        string addrpic = "";
        if (fppic.HasFile)
        {
            string name = this.fppic.PostedFile.FileName;
            int i = name.LastIndexOf('.');
            string extname = name.Substring(i);
            string filename = DateTime.Now.ToString("yyyyMMddhhmmssfff");
            string path = filename + extname;
            string savePath = Server.MapPath(@"..\uploads\" + filename + extname);
            fppic.PostedFile.SaveAs(savePath);
            addrpic = path;
        }

        parameters[5].Value = addrpic;
        parameters[6].Value = int.Parse(txt_quantity.Text);
        parameters[7].Value = decimal.Parse(txt_price.Text);
        parameters[8].Value = txt_destion.Text;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);


        //原材料减库存
        StringBuilder strSql0 = new StringBuilder();

        strSql0.Append("update materials set ");
        strSql0.Append("quantity = quantity - @quantity");
        strSql0.Append("  where mid=@mid");
        String mid = ddlmid.SelectedValue.Trim();

        //设置参数
        SqlParameter[] parameters0 = new SqlParameter[] {
                    
            new SqlParameter("@mid", SqlDbType.Int,4),
            new SqlParameter("@quantity", SqlDbType.Decimal,9) };
            parameters0[0].Value = mid;
            parameters0[1].Value = materialnumber;

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql0.ToString(), parameters0);



        StringBuilder strSql1 = new StringBuilder();
        strSql1.Append(@"select * from materials where mid=" + mid);

        //根据编号得到相应的记录
        DataSet ds = DbHelperSQL.Query(strSql1.ToString());
        if (ds.Tables[0].Rows.Count > 0)
        {
            decimal quantity = decimal.Parse(ds.Tables[0].Rows[0]["quantity"].ToString());
            decimal wquantity = decimal.Parse(ds.Tables[0].Rows[0]["wquantity"].ToString());

            if (quantity <= wquantity)
            {
                MessageBox.ShowAndRedirect(this, String.Format("操作成功，原材料库存剩余{0}个,到达预警数量{1}", quantity, wquantity), "Add.aspx");
            }
            else
            {
                MessageBox.ShowAndRedirect(this, String.Format("操作成功，原材料库存剩余{0}个,库存充足", quantity), "Add.aspx");
            }
        }

        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }
}