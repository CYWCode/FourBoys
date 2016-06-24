using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using IBLLFac;
using IBLL;
using BLLFac;

namespace Web.Personal
{
    public partial class user_resume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IPersonalUserResumeHelperFactory factory = new PersonalUserResumeHelperFactory();
            IPersonalUserResumeHelper helper = factory.getPersonalUserResumeHelper();
            
            // FIXME: id
            int id = 19;
            if (helper.existPersonalUserInfo(id))
            {
                IPersonalUserInfo userInfo = helper.getPersonalUserInfo(id);

                tboxName.Text = userInfo.name;
                tboxAge.Text = userInfo.age.ToString();
                tboxPhone.Text = userInfo.phoneNumber;
                if (userInfo.sex.CompareTo("男") == 0)
                {
                    rbtnListSex.SelectedValue = "0";
                }
                else
                {
                    rbtnListSex.SelectedValue = "1";
                }
                if (userInfo.hunting)
                {
                    rbtnListHunting.SelectedValue = "0";
                }
                else
                {
                    rbtnListHunting.SelectedValue = "1";
                }
                //cboxListDirection.DataSource = userInfo.direction;
                foreach (string dirItem in userInfo.direction)
                {
                    foreach (ListItem listItem in cboxListDirection.Items)
                    {
                        if (listItem.Value.CompareTo(dirItem) == 0)
                        {
                            listItem.Selected = true;
                        }
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (validInput())
            {
                IPersonalUserResumeHelperFactory factory = new PersonalUserResumeHelperFactory();
                IPersonalUserResumeHelper helper = factory.getPersonalUserResumeHelper();
                // FIXME
                int id = 199;
                string name = "测试用户" + id;
                string sex = "男";
                int age = 21;
                string phoneNumber = "测试手机号";
                bool hunting = true;
                string resumePath = "测试路径";
                List<string> direction = new List<string>();
                direction.Add("Android");
                helper.updatePersonalUserInfo(id, name, sex, age, phoneNumber, hunting, resumePath, direction);
            }
        }

        private bool validInput()
        {
            // TODO
            if (tboxName.Text.Trim().CompareTo("") == 0)
            {
                return false;
            }
            return true;
        }
    }
}