using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Linq;

using IBLLFac;
using IBLL;
using BLLFac;

namespace Web
{
    public partial class ChallenageManagament : System.Web.UI.Page
    {

        


        protected void Page_Load(object sender, EventArgs e)
        {
            IChallengeManagementFactory CMFactory = new ChallengeManagementFactory();
            List<IChallengeManagement> list = CMFactory.getChallengeManagementList();


            IChallengeManagement IChallengeManagement = list[0];
            int a = IChallengeManagement.id;

            position.Text = a.ToString();
           
          

        }
    }
}