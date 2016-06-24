﻿using System;
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
            int id = 6;
            if (helper.existPersonalUserInfo(id))
            {
                IPersonalUserInfo userInfo = helper.getPersonalUserInfo(id);

                if (userInfo != null)
                {
                    tboxName.Text = userInfo.name;
                    tboxAge.Text = userInfo.age.ToString();
                    tboxPhone.Text = userInfo.phoneNumber;
                    rbtnListSex.SelectedValue = userInfo.sex;
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
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (validInput())
            {
                IPersonalUserResumeHelperFactory factory = new PersonalUserResumeHelperFactory();
                IPersonalUserResumeHelper helper = factory.getPersonalUserResumeHelper();
                // FIXME: id
                int id = 6;
                string name = tboxName.Text;
                string sex = rbtnListSex.SelectedValue;
                int age = Convert.ToInt32( tboxAge.Text);
                string phoneNumber = tboxPhone.Text;
                bool hunting = true;
                if (rbtnListHunting.SelectedValue.CompareTo("0") == 0) hunting = true;
                else hunting = false;
                string resumePath = "测试路径";
                List<string> direction = new List<string>();
                foreach (ListItem item in cboxListDirection.Items)
                {
                    if (item.Selected) direction.Add(item.Value);
                }
                // FIXBUG: 这里tboxName.Text是旧的数据
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