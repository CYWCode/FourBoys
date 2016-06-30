using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Web.EnterpriseInfor_kui
{
    public partial class EnterpriseCompleteInfor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //上传文件
        private static bool uploadFile(FileUpload file)
        {

            string strOldFilePath = "";
            string strExtension = "";
            string[] arrExtension = { ".gif", ".jpg", ".bmp", ".png" };//上传的图片文件为4种
            if (file.PostedFile.FileName != string.Empty)
            {
                strOldFilePath = file.PostedFile.FileName;                             //获得文件的完整路径名 
                strExtension = strOldFilePath.Substring(strOldFilePath.LastIndexOf("."));//获得文件的扩展名，如：.jpg 
                for (int i = 0; i < arrExtension.Length; i++)
                {
                    if (strExtension.Equals(arrExtension[i]))
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public void saveClick(object sender, EventArgs e)
        {

            // string useremail = (string)Session["useremail"];
            string useremail = Request.QueryString["email"];//获取用户的邮箱地址
            string EnterpriceWholeName = wholename.Value;   //公司全称
            string EnterpriceShortName = shortname.Value;      //公司简称
            string EnterpriceWebsite = website.Value;           //公司网址
            string EnterpriceProvince = province.Value;        //公司所在省
            string EnterpriceCity = city.Value;                //公司所在城市
            string EnterpriceScale = (string)escale.Value;     //公司规模
            string EnterpriceDescribe = describe.Value;        //公司简介
            string EnterpriceArea = EnterpriceProvince + EnterpriceCity;//公司地址
            string filePath = "";                           //上传的公司文件的地址

            try
            {
                if (FileUpload1.HasFile)
                {
                    if (uploadFile(FileUpload1))
                    {
                        string filepath = FileUpload1.FileName;
                        //以月-日-时-分将上传的图片重新命名
                        string filename = DateTime.Now.ToString("MM-dd-hh-mm") + filepath.Substring(filepath.LastIndexOf('.'), filepath.Length - filepath.LastIndexOf('.'));
                        //设定上传路径（绝对路径）
                        filePath = Server.MapPath("~/EImages/") + filename;
                        //图片上传至绝对路径
                        FileUpload1.PostedFile.SaveAs(filePath);
                        //设定数据库的存储路径
                        string savepath = "~\\EImages\\" + filename;

                    }
                }
                else
                {
                    //lblInfo.Text = "请选择上传文件";
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }

            BLL.EnterpriceCompleteInforBusiness1 bl = new BLL.EnterpriceCompleteInforBusiness1();
            bl.SaveEnterpriceInfo1(useremail, EnterpriceWholeName, EnterpriceShortName,
               EnterpriceWebsite, EnterpriceArea, EnterpriceScale, EnterpriceDescribe);


            Response.Redirect("~/EnterpriseInfor_kui/EnterpriseHP.aspx");

        }
    }
}