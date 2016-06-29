<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Challenge.aspx.cs" Inherits="Web.Admin.Challenge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理系统</title>
    <style>
        .card {
            display: inline-block;
            width: 150px;
            margin: 30px;
            padding: 10px;
            background-color: cornflowerblue;
            color: floralwhite;
        }
    </style>

    <script language="javascript">
        var i = 0;

        var id = new Array();
        var position = new Array();
        var enterpriseTitle = new Array();
        var jobSalary = new Array();
        var questionNumber = new Array();
        var startTime = new Array();
        var deadline = new Array();
        var finishNumber = new Array();


        <%
        for(int k=0;k<l.Count;k++){
         %>
        id.push("<%=l[k].id%>");
        position.push("<%=l[k].position%>");
        enterpriseTitle.push("<%=l[k].enterpriseTitle%>")
        startTime.push("<%=l[k].startTime%>");
        finishNumber.push("<%=l[k].finishNumber%>");
        <%
        }
         %>

        function add() {

            var label8 = document.getElementById("id");
            var label1 = document.getElementById("position");
            var label2 = document.getElementById("enterprise");
            var label5 = document.getElementById("startTime");
            var label7 = document.getElementById("finishNumber");
            label1.innerHTML = position[i];
            label2.innerHTML = enterpriseTitle[i];


            label5.innerHTML = startTime[i];

            label7.innerHTML = finishNumber[i];
            label8.innerHTML = id[i];
           

            var div1 = document.getElementById("abc");
            var divParent = div1.parentNode;
            var clone = div1.cloneNode(true);
            //设置id属性保证其不重复
            clone.id = "abc" + i;
            i++;
            divParent.appendChild(clone);


        }</script>






</head>
<body>
    <form id="form1" runat="server">
    <div >
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
        <div id="abc">
            <div class="card">
                ID：<a><label id="id"></label></a>
            </div>
            <div class="card">
                 发布公司：<a><label id="enterprise"></label></a>
            </div>
            <div class="card">
                技术方向：<a><label id="position"></label></a>
            </div>
            <div class="card">
                 创建时间：<a><label id="startTime"></label></a>
            </div>
            <div class="card">
                 完成人数：<a><label id="finishNumber"></label></a>
            </div>
        </div>

         <script language="javascript">
             var s = "<%= l.Count%>";
             for (var q = 0; q < s; q++) {
                 add();
             }
             var div1 = document.getElementById("abc");
             var divParent = div1.parentNode;
             divParent.removeChild(div1);
               </script>
    </form>
</body>
</html>
