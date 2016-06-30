using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PageEntity
{
    public class personalevaluationInfor
    {
        private int pEvlID;
        private int pID;
        private string pQuality;
        private string pProficiency;
        private string pFocus;
        private string pDeviation;
        private string pResidence;

        public personalevaluationInfor()
        {
        }
        public int personEvlID
        {
            set { this.pEvlID = value; }
            get { return this.pEvlID; }
        }

        public int personID
        {
            set { this.pID = value; }
            get { return this.pID; }
        }

        public string personQuality
        {
            set { this.pQuality = value; }
            get { return this.pQuality; }
        }

        public string personProficiency
        {
            set { this.pProficiency = value; }
            get { return this.pProficiency; }
        }

        public string personFocus
        {
            set { this.pFocus = value; }
            get { return this.pFocus; }
        }

        public string personDeviation
        {
            set { this.pDeviation = value; }
            get { return this.pDeviation; }
        }
        public string personResidence
        {
            set { this.pResidence = value; }
            get { return this.pResidence; }
        }
    }
}
