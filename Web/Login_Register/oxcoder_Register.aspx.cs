using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Web.Login_Register
{
    public partial class oxcoder_Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Text = RadioButtonList1.SelectedItem.Text.ToString();
            int type;
            if (Text == "企业")
            {
                type = 1;
            }
            else
            {
                type = 2;
            }
            // string values = ul1;
            BLL.UserRegisterBusiness urb = new BLL.UserRegisterBusiness();
            //  bl = new BL.bl();
            {
                string useremail = TextBox1.Text;
                string userpass = TextBox2.Text;


                urb.GetUserInfo(useremail, userpass, type);
            }
            //Response.Redirect("~/oxcoder_login?name=" + TextBox1.Text);
        }


    }
}