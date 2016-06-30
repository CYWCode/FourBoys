using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Web.PersonCenter
{
    public partial class personCenter : System.Web.UI.Page
    {
        

       // List<Model.PersonalInfo> personList = null;
        PageEntity.PersonalInfo personInfor = new PageEntity.PersonalInfo();

        PageEntity.personalevaluationInfor personValue = new PageEntity.personalevaluationInfor();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {
                username.Text = (string)Session["name"];
            }
            username.Text = (string)Session["name"];
            BLL.PeopleBusiness pb = new BLL.PeopleBusiness();
            int id = (int)Session["ID"];
            string userid = id + "";
            personInfor = pb.getPeopleInfo(userid);
            worth.Text = personInfor.personalWorth;
            level.Text = personInfor.personalLevel+"";

            switch((personInfor.personalLevel)){
                case 1 :
                    context.Text = "菜鸟：你在老大的指导下学习技能知识，做一些简单的模块，copy和paste是你的好伙伴。正在快速的成长入门。";
                    break;
                case 2:
                     context.Text = "初级：你在老大的指导下学习技能知识";
                    break;
                case 3:
                    context.Text = "老鸟：你已经可以领导你的小朋友们";
                    break;
            }

           name.Text = personInfor.personalName;
           if (personInfor.personalSex.Equals("1"))
           {
               sex.Text = "男";
           }
           else
           {
               sex.Text = "女";
           }
           age.Text = personInfor.personalAge.ToString();
           
           tel.Text = personInfor.personalTel;
           email.Text = personInfor.personalEmail;
           personValue = pb.getPersonValue(userid);
           center.Text = personValue.personQuality+"";
           spead.Text = personValue.personProficiency + "";
           time.Text = personValue.personFocus + "";
           error.Text = personValue.personDeviation + "";
           home.Text = personValue.personResidence + "";
           
            
        }  
    }   
        
} 
    
