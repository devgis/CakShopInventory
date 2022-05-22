  using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class purchasereturn_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
ddlsid.DataSource = DbHelperSQL.Query("select sid,sname from suppliers");
            ddlsid.DataTextField = "sname";
            ddlsid.DataValueField = "sid";
            ddlsid.DataBind();

        ddlsid.Items.Insert(0, new ListItem("---全部---", ""));


            bind();
        }
    }

    /// <summary>
    /// 绑定采购退库
    /// </summary>
    private void bind()
    {       
        string where = " where 1=1 ";

        if (ddlsid.SelectedValue!= "")
        {
            where += " and a.sid=" + ddlsid.SelectedValue + "";
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



        GridView1.DataSource = DbHelperSQL.Query("select a.*,b.mname,c.sname from purchasereturn a  left join materials b on a.mid=b.mid left join suppliers c on a.sid=c.sid " + where + " order by id desc");
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
    /// 删除采购退库
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void lnk_Click(object sender, EventArgs e)
    {
        LinkButton lk = (LinkButton)sender;

        //删除相应的记录
        DbHelperSQL.ExecuteSql(" delete from purchasereturn where id=" + lk.CommandName);

        //重新绑定数据源
        bind();
    }




}

