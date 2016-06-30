using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PageEntity;

namespace Web.Login_Register
{
  

    public partial class oxcoder_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            BLL.LoginBusiness LB = new BLL.LoginBusiness();

            //  bl = new BL.bl();
            {
                string useremail = TextBox1.Text;
                string userpass = TextBox2.Text;


                int result = LB.Login(useremail, userpass);
                int state = LB.getState(useremail, userpass);
                if (result == 0)
                {
                    Label1.Text = "用户名或者密码错误，请重新输入";
                    //   return 0;
                }
                // Session["name"]=;
                else if (result == 1)
                {
                    Label1.Text = "你是开发者    ";
                    PersonalInfo person = new PersonalInfo();
                    person = LB.getPerson(useremail);
                    Session["name"] = person.personalName;
                    Session["email"] = person.personalEmail;
                    Session["ID"] = person.personalID;
                    if (state == 0)
                    {
                        Response.Redirect("~/PersonCenter/PersonInfo.aspx");
                    }
                    else
<<<<<<< HEAD
                        Response.Redirect("~/PersonCenter/personCenter.aspx");
=======
                        Response.Redirect("~/PersonCenter/homepage.aspx");
>>>>>>> FYH
                }
                else if (result == 2)
                {

                    EnterpriseInfo enterprise = new EnterpriseInfo();
                    enterprise = LB.getEnterprise(useremail);
                    Session["name"] = enterprise.enterpriseName;
                    Session["ID"] = enterprise.enterpriseID;
                    Session["email"] = enterprise.enterpriseEmail;
                    Label1.Text = "你是企业    " + ((int)Session["ID"]);
                    Response.Redirect("~/EnterpriseInfor_kui/EnterpriseCompleteInfor1.aspx");
                }
            }
            //return 0;
        }
    }


}