  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class salesreturn_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
ddlpid.DataSource = DbHelperSQL.Query("select pid,pname from products");
            ddlpid.DataTextField = "pname";
            ddlpid.DataValueField = "pid";
            ddlpid.DataBind();

        ddlpid.Items.Insert(0, new ListItem("---全部---", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定销售退库
    /// </summary>
    private void bind()
    {
        string where = " where 1=1 ";

        if (ddlpid.SelectedValue != "")
        {
            where += " and a.pid=" + ddlpid.SelectedValue + "";
        }

        string strTimeStart = this.txt_atime.Text.Trim();
        string strTimeEnd = this.txt_etime.Text.Trim();
        if (!string.IsNullOrEmpty(strTimeStart))
        {
            where += " and atime >='" + strTimeStart + "' ";
        }
        if (!string.IsNullOrEmpty(strTimeEnd))
        {
            where += " and atime <='" + strTimeEnd + "' ";
        }

        DataSet ds = DbHelperSQL.Query("select a.*,b.pname from salesreturn a  left join products b on a.pid=b.pid " + where + " order by id desc");
        GridView1.DataSource = ds;

        decimal num = 0;
        decimal sum = 0;
        foreach (System.Data.DataRow item in ds.Tables[0].Rows)
        {
            try
            {
                decimal nnmu = decimal.Parse(item["nnum"].ToString());
                decimal price = decimal.Parse(item["price"].ToString());
                num += nnmu;
                sum += (nnmu * price);


            }
            catch { }
        }
        GridView1.Columns[1].HeaderText = String.Format("退库数量[合计{0}]", num);
        GridView1.Columns[1].HeaderStyle.ForeColor = System.Drawing.Color.Blue;
        GridView1.Columns[3].HeaderText = String.Format("退库单价[总计{0}]", sum);
        GridView1.Columns[3].HeaderStyle.ForeColor = System.Drawing.Color.Blue;

        GridView1.DataBind();

    }

    /// <summary>
    /// 分页事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
   
    /// <summary>
    /// 搜索
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        bind();
    }
    
    /// <summary>
    /// 删除销售退库
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        DbHelperSQL.ExecuteSql(" delete from salesreturn where id=" + lk.CommandName);

        //重新绑定数据源
        bind();
    }




}

