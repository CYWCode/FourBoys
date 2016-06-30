using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace Web.PersonCenter
{
    public partial class Change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                username.Text = (string)Session["name"];
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.PeopleBusiness pb = new BLL.PeopleBusiness();
            if (!newPwd1.Text.Equals(newPwd2.Text))
            {
                Label1.Text = "新两次输入不同，请重新输入";
            }
            else
            {
               // string id ="3";
               // Label1.Text = "修改成功,请重新登陆";

              //  Response.Write("<script>alert('修改成功!')</script>"); 
                /*    if (pb.updatePwd(oldPwd.Text, newPwd1.Text, id))
                    {
                        Response.Redirect("~/Login_Register/oxcoder_login.aspx");
                    }
                    else
                        Label1.Text = "修改成功";
                 */
             //   System.Threading.Thread.Sleep(2000);
             //   Response.Redirect("~/Login_Register/oxcoder_login.aspx");


                Response.Write("<script>alert('修改成功!请重新登陆！');window.location.href ='http://localhost:33621/Login_Register/oxcoder_login.aspx'</script>"); 


            }

                  
        }
    }
}
    
