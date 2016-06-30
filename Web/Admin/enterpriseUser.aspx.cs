using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IBLL;
using IBLLFac;
using BLLFac;

namespace Web.Admin
{
    public partial class enterpriseUser : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack) return;

            IAdminHelper helper = new AdminHelper();
            List<IEnterpriseAdminData> list = helper.getEnterPriseList();

            showTable(list);

            //tboxKeyword.TextChanged += new EventHandler(doSearch);
            //btnSearch.Click += new EventHandler(doSearch);
        }

        private void showTable(List<IEnterpriseAdminData> list)
        {
            foreach (IEnterpriseAdminData user in list)
            {
                TableRow newRow = new TableRow();

                newRow.Cells.Add(new TableCell() { Text = user.id.ToString() });
                newRow.Cells.Add(new TableCell() { Text = user.email });
                newRow.Cells.Add(new TableCell() { Text = user.phoneNum });
                newRow.Cells.Add(new TableCell() { Text = user.title });
                newRow.Cells.Add(new TableCell() { Text = user.titleBrief });
                newRow.Cells.Add(new TableCell() { Text = user.scale });

                newRow.Cells.Add(new TableCell());

                Button delButton = new Button() { Text = "删除", ID = "del_" + user.id.ToString(), CssClass = "tableButton btn btn-danger" };
                delButton.Click += new EventHandler(HandleDeleteClick);
                newRow.Cells[6].Controls.Add(delButton);

                Button updateButton = new Button() { Text = "修改", ID = "update_" + user.id.ToString() };
                updateButton.Click += new EventHandler(HandleUpdateClick);
                // 通过按钮修改 改为 通过登录来实现修改
                //newRow.Cells[8].Controls.Add(updateButton);

                Button logasButton = new Button() { Text = "登录", ID = "loginas_" + user.id.ToString(), CssClass = "tableButton btn btn-primary" };
                logasButton.Click += new EventHandler(HandleLoginAsClick);
                newRow.Cells[6].Controls.Add(logasButton);

                tableUser.Rows.Add(newRow);
            }
        }

        private void HandleDeleteClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            // 删除
            IAdminHelper helper = new AdminHelper();
            helper.deleteEnterpriseUser(Convert.ToInt32(idStr));
            // 更新
            Response.AddHeader("Refresh", "0");
        }

        private void HandleUpdateClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            //tableUser.Rows[0].Cells[0].Text = "update " + idStr;
        }

        private void HandleLoginAsClick(object sender, EventArgs e)
        {
            // 获取被点击按钮对应的用户id
            string idStr = ((Button)sender).ID;
            idStr = idStr.Substring(idStr.IndexOf('_') + 1, idStr.Length - idStr.IndexOf('_') - 1);
            // TODO: 与用户管理系统连接
            //tableUser.Rows[0].Cells[0].Text = "login as " + idStr;
        }

        protected void doSearch(object sender, EventArgs e)
        {
            // 获取搜索关键词
            string keyword = tboxKeyword.Text;
            if (keyword.Trim() == "") { return; }
            // 搜索
            for (int i = 1; i < tableUser.Rows.Count; i++)
            {
                TableRow row = tableUser.Rows[i];
                bool existKeyword = false;
                foreach (TableCell cell in row.Cells)
                {
                    if (cell.Text.Contains(keyword))
                    {
                        existKeyword = true;
                    }
                }
                if (!existKeyword)
                {
                    row.Visible = false;
                }
            }
        }

    }
}