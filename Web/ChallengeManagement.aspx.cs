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

        ////public int[] b = new int[10];
        //public static int index=-1;
        public List<IChallengeManagement> l;

        protected void Page_Load(object sender, EventArgs e)
        {
            IChallengeManagementFactory CMFactory = new ChallengeManagementFactory();
            List<IChallengeManagement> list = CMFactory.getChallengeManagementList();

            l = list;

          }
        //public  int a(){
        //    index++;
        //    int tmp = index;
            
            
        //    return tmp;

        //}
        
    }
}