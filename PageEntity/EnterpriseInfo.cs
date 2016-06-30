using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PageEntity
{
    public class EnterpriseInfo
    {
        private int eID;            //企业ID
        private String eName;       //企业用户名
        private String ePwd;        //企业密码
        private String eEmail;      //企业邮箱
        private String eComName;    //企业名称
        private String eLogo;       //企业标志
        private String eTel;        //企业电话
        private String eWebAddr;    //企业网络地址
        private String eArea;          //企业地区
        private String eScale;         //企业等级
        private String eIntroduction;       //企业介绍
        // private int eRemarkID;      //企业
        private int eAccountID;     //企业账户ID
        private int eChallengeID;   //企业挑战ID
        private DateTime eLastTime;      //企业上次登入时间
        private String eLicense;       //企业执照
        private int eState;         //企业状态
        private DateTime eRegisterTime;  //企业注册时间
        private String eRemark1;
        private String eRemark2;
        private String eRemark3;

        // 构造函数
        public EnterpriseInfo() { }
        // ID的获得与设置
        public int enterpriseID
        {
            set { this.eID = value; }
            get { return this.eID; }
        }
        // 姓名的获得与设置
        public String enterpriseName
        {
            set { this.eName = value; }
            get { return this.eName; }
        }
        // 密码的获得与设置
        public String enterprisePwd
        {
            set { this.ePwd = value; }
            get { return this.ePwd; }
        }
        // 邮件的获得与设置
        public String enterpriseEmail
        {
            set { this.eEmail = value; }
            get { return this.eEmail; }
        }
        // 公司名称的获得与设置
        public String enterpriseComName
        {
            set { this.eComName = value; }
            get { return this.eComName; }
        }
        // Logo的获得与设置
        public String enterpriseLogo
        {
            set { this.eLogo = value; }
            get { return this.eLogo; }
        }
        // 联系方式的获得与设置
        public String enterpriseTel
        {
            set { this.eTel = value; }
            get { return this.eTel; }
        }
        // 公司地址的获得与设置
        public String enterpriseWebAddr
        {
            set { this.eWebAddr = value; }
            get { return this.eWebAddr; }
        }
        // 公司范围的获得与设置
        public String enterpriseArea
        {
            set { this.eArea = value; }
            get { return this.eArea; }
        }
        // 公司等级的获得与设置
        public String enterpriseScale
        {
            set { this.eScale = value; }
            get { return this.eScale; }
        }
        // 公司介绍的获得与设置
        public String enterpriseIntroduction
        {
            set { this.eIntroduction = value; }
            get { return this.eIntroduction; }
        }
        public int enterpriseAccountID
        {
            set { this.eAccountID = value; }
            get { return this.eAccountID; }
        }
        public int enterpriseChallengeID
        {
            set { this.eChallengeID = value; }
            get { return this.eChallengeID; }
        }
        public DateTime enterpriseLastTime
        {
            set { this.eLastTime = value; }
            get { return this.eLastTime; }
        }
        public String enterpriseLicense
        {
            set { this.eLicense = value; }
            get { return this.eLicense; }
        }
        public int enterpriseState
        {
            set { this.eState = value; }
            get { return this.eState; }
        }
        public DateTime enterpriseRegisterTime
        {
            set { this.eRegisterTime = value; }
            get { return this.eRegisterTime; }
        }
        public String enterpriseRemark1
        {
            set { this.eRemark1 = value; }
            get { return this.eRemark1; }
        }
        public String enterpriseRemark2
        {
            set { this.eRemark2 = value; }
            get { return this.eRemark2; }
        }
        public String enterpriseRemark3
        {
            set { this.eRemark3 = value; }
            get { return this.eRemark3; }
        }

    }
}
