using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class materials_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        
        }
    }

    /// <summary>
    /// 添加原材料
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
       //设置Sql
         StringBuilder strSql = new StringBuilder();
         strSql.Append(@"insert into Materials ( mname,unit,spec,remark,quantity,wquantity,price ) ");
        strSql.Append(@" values (@mname,@unit,@spec,@remark,@quantity,@wquantity,@price)");

        //设置参数
        SqlParameter[] parameters = new SqlParameter[] {
            new SqlParameter("@mname", SqlDbType.VarChar,50),
            new SqlParameter("@unit", SqlDbType.VarChar,50),
            new SqlParameter("@spec", SqlDbType.VarChar,50),
            new SqlParameter("@remark", SqlDbType.VarChar,50),
            new SqlParameter("@quantity", SqlDbType.Decimal,9),
            new SqlParameter("@wquantity", SqlDbType.Decimal,9),
            new SqlParameter("@price", SqlDbType.Decimal,9)        };

        parameters[0].Value =txt_mname.Text;
        parameters[1].Value =txt_unit.Text;
        parameters[2].Value =txt_spec.Text;
        parameters[3].Value =txt_remark.Text;
        parameters[4].Value =decimal.Parse (txt_quantity.Text);
        parameters[5].Value =decimal.Parse (txt_wquantity.Text);
        parameters[6].Value =decimal.Parse (txt_price.Text);

        //提交到数据库
        DbHelperSQL.ExecuteSql(strSql.ToString(), parameters);


        MessageBox.ShowAndRedirect(this, "操作成功，请返回!", "Add.aspx");
    }

    
}

