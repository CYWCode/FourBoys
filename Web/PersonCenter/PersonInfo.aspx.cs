using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web.PersonCenter
{
    public partial class PersonInfo : System.Web.UI.Page
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
            string Username = name.Text;
            string userage = age.Text;
            string usersex = sex.Text.ToString();
            if (usersex.Equals("男"))
            {
                usersex = "1";
            }
            else
            {
                usersex = "0";
            }
            string usertel = tel.Text;
           // Response.Write(Session["ID"]);
            username.Text = (string)Session["name"];
            int id = (int)Session["ID"];
            string userid = id+"";
    
            BLL.PeopleBusiness pib = new BLL.PeopleBusiness();
            
           bool result = pib.updateInfor(Username,userage,usersex,usertel,userid);
            Response.Redirect("./personCenter.aspx");
        }
    }
}


  