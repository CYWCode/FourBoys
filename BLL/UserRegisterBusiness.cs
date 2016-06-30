using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDALFac;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using PageEntity;



namespace BLL
{
    public class UserRegisterBusiness
    {

        private static readonly IRegister dal = DALFac.DataAccess.CreateRegister();

        //发送验证信息
        public static void SendTo(string mailAddress, string subject, string body)
        {
            // 设置发送方的邮件信息
            string smtpServer = "smtp.qq.com";
            string mailForm = "1353151074@qq.com";
            string userPassword = "pctqjtuspzyxhbjc";

            //邮件服务设置
            SmtpClient smtpClient = new SmtpClient();
            //smtpClient.UseDefaultCredentials = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;//指定电子邮件发送方式
            smtpClient.Host = smtpServer;//指定SMTP服务器
            smtpClient.Credentials = new System.Net.NetworkCredential(mailForm, userPassword);//用户名密码
            smtpClient.EnableSsl = true;

            //发送邮件设置
            MailMessage message = new MailMessage(mailForm, mailAddress);
            message.Subject = subject;//主题
            message.Body = body;//内容
            message.BodyEncoding = System.Text.Encoding.UTF8;//正文编码
            message.IsBodyHtml = true;//设置为HTML格式
            message.Priority = MailPriority.High;//优先级

            try
            {
                smtpClient.Send(message);
            }
            catch (Exception ee)
            {
                ShowMsg(ee.ToString());
            }
        }

        static void ShowMsg(string msg)
        { }

        //获取注册人的信息
        public void GetUserInfo(string useremail, string userpass, int type)
        {


            string user_email = useremail;
            string user_pass = userpass;
            int userrole = type;//1：企业 2：个人

            string token = string.Concat(user_email, user_pass);
            string strfortoken = "";

            /*md5对token进行加密*/
            MD5 md6 = new MD5CryptoServiceProvider();
            byte[] datafortoken = md6.ComputeHash(System.Text.Encoding.Default.GetBytes(token)); ;

            md6.Clear();

            for (int i = 0; i < datafortoken.Length - 1; i++)
            {
                strfortoken += datafortoken[i].ToString("x").PadLeft(2, '0');
            }
            /*md5对token进行加密*/
            string subject = "您好";
            string body1 = "您好";
            string body3 = "感谢您在猿圈平台注册了新帐号。请点击链接激活您的帐号。";
            string MessageBody = "<a href=\"http://localhost:33621/Login_Register/oxcoder_login.aspx" + "\">点我~点我~~</a>";

            string body = string.Concat(body1, useremail, body3, MessageBody); ;

            SendTo(user_email, subject, body);//发送邮件给用户邮箱，用于账号激活

            dal.RegisterPerson(useremail, userpass, type);



        }

    }



}
