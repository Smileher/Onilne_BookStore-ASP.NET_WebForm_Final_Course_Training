<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuce.aspx.cs" Inherits="zhuce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"/>
    <link href="css/jcarousel.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <!-- Vendor Styles -->
    <link href="css/magnific-popup.css" rel="stylesheet"/> 
    <!-- Block Styles -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/gallery-1.css" rel="stylesheet"/>
    <link href="css/zhuce.css" rel="stylesheet" />
    <script src="js/jquery.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/jquery.fancybox-media.js"></script>  
    <script src="js/jquery.flexslider.js"></script>
    <!-- Vendor Scripts -->
    <script src="js/modernizr.custom.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_user.ClientID%>').val("您的账户名和登录名");      
            $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_pasw.ClientID%>').val("建议至少使用两种字符组合");    
            $('#<%=txt_qr.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_qr.ClientID%>').val("请再次输入密码"); 
            $('#<%=txt_phone.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_phone.ClientID%>').val("建议使用常用手机");
            $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_yz.ClientID%>').val("请输入验证码");
            
        });
     function pd()
     {                           
         if (($('#<%=txt_user.ClientID%>').val() == "")||($('#<%=txt_user.ClientID%>').val() == "您的账户名和登录名"))
         {
             $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_user.ClientID%>').val("您的账户名和登录名");                   
         }         
         else
         {
             $('#<%=txt_user.ClientID%>').css("color", "#363636");
             SendRequest();
         }
                      
         //
         if (($('#<%=txt_pasw.ClientID%>').val() == "")||($('#<%=txt_pasw.ClientID%>').val() == "建议至少使用两种字符组合"))
         {
             $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_pasw.ClientID%>').val("建议至少使用两种字符组合");                   
         }
         else         
             $('#<%=txt_pasw.ClientID%>').css("color", "#363636");
         //
         if (($('#<%=txt_qr.ClientID%>').val() == "")||($('#<%=txt_qr.ClientID%>').val() == "请再次输入密码"))
         {
             $('#<%=txt_qr.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_qr.ClientID%>').val("请再次输入密码");                   
         }
         else         
             $('#<%=txt_qr.ClientID%>').css("color", "#363636");
         //
         if (($('#<%=txt_phone.ClientID%>').val() == "")||($('#<%=txt_phone.ClientID%>').val() == "建议使用常用手机"))
         {
             $('#<%=txt_phone.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_phone.ClientID%>').val("建议使用常用手机");                   
         }
         else         
             $('#<%=txt_phone.ClientID%>').css("color", "#363636");
         //
         if (($('#<%=txt_yz.ClientID%>').val() == "")||($('#<%=txt_yz.ClientID%>').val() == "请输入验证码"))
         {
             $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_yz.ClientID%>').val("请输入验证码");                   
         }
         else         
             $('#<%=txt_yz.ClientID%>').css("color", "#363636");
     }
        function yc(obj) {            
            if (obj.value == "您的账户名和登录名")            
                $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "建议至少使用两种字符组合")
                $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "请再次输入密码")
                $('#<%=txt_qr.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "建议使用常用手机")
                $('#<%=txt_phone.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "请输入验证码")
                $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
            if ((obj.value == "您的账户名和登录名") || (obj.value == "建议至少使用两种字符组合") || (obj.value == "请再次输入密码") || (obj.value == "请输入验证码") || (obj.value == "建议使用常用手机"))
            {
                obj.value = "";
            }
            
     }
   </script>

   <script type="text/javascript">  
      var xmlHttp = null;
      function SendRequest()
      {
          var s = $('#<%=txt_user.ClientID%>').val();          
          try
          {
              // Firefox, Opera 8.0+, Safari
              xmlHttp=new XMLHttpRequest();
           }
          catch (e)
          {
              try
              { 
                  // New Internet Explorer
                  xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
              }
              catch (e)
             {
                  try
                 {
                       xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
                 }
                 catch (e)
                 {
                       alert('Your browser does not support AJAX!');
                       return false;
                 }
              }
            }  
            xmlHttp.onreadystatechange=ResponseReq;
            xmlHttp.open("GET","zhuce.aspx?value="+s ,true);
            xmlHttp.send(null);
         }
         function ResponseReq()
        {
            if(xmlHttp.readyState == 4 && xmlHttp.status == 200)
            {
                var span = document.getElementById('Result');
                span.innerHTML = xmlHttp.responseText;

                if (xmlHttp.responseText == "用户名可用")
                    $("#Result").css("color", "#BEBEBE");
                if (xmlHttp.responseText == "*用户名已存在")
                    $("#Result").css("color", "#EE2C2C");
            }
         }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <div id="wrapper">
         <div class="topbar">
            <div class="container">
               <div class="row">
                  <div class="col-md-12">
                     <p class="pull-left hidden-xs">Welcome</p>
                     <p class="pull-right"><i class="fa fa-phone"></i>Tel No. (+001) 123-456-789</p>
                  </div>
               </div>
            </div>
         </div>
	     <!-- start header -->
	     <header>
            <div class="navbar navbar-default navbar-static-top">
               <div class="container">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                     </button>
                     <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"/></a>
                  </div>
                  <div class="navbar-collapse collapse ">
                     <ul class="nav navbar-nav">
                        <li><a href="index.aspx">主页</a></li> 
				        <li><a href="gongsijieshao.aspx">公司介绍</a></li>
                        <li><a href="#">新闻</a></li>
                        <li><a href="chanping.aspx">产品浏览</a></li>
                        <li><a href="gouwuche.aspx">购物车</a></li> 
				        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">个人中心 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="zhuce.aspx">注册账户</a></li>
					            <li><a href="denglu.aspx">登陆账户</a></li>
					            <li><a href="dindan.aspx">我的订单</a></li>
                                <li><a href="xiugaimima.aspx">修改密码</a></li>
                                <li><a href="xiugaixinxi.aspx">修改信息</a></li> 
                                <li><a href="#"><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">退出登陆</asp:LinkButton></a></li>
                           </ul>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
	     </header>
         <!-- end header -->

	     <section id="inner-headline">
	        <div class="container">
		       <div class="row">
			      <div class="col-lg-12">
				     <h2 class="pageTitle">用户注册</h2>
			      </div>
		       </div>
	        </div>
	     </section>
	     
		 
          
         
    	 	<div class="zhuce">
			   <div class="dl">                                     
                  <span style="font-size:21px;"> 用&nbsp;&nbsp;户&nbsp;&nbsp;名</span><asp:TextBox ID="txt_user" runat="server" Width="200px" MaxLength="20" onfocus="yc(this);" onblur="pd();" BorderStyle="None"></asp:TextBox>
                   <span id="Result" style="font-size:13px; padding-left:3%;"></span>
			   </div> 
               <div class="dl">                                     
                  <span style="font-size:18px;"> 设&nbsp;置&nbsp;密&nbsp;码</span><asp:TextBox ID="txt_pasw" runat="server" Width="200px" MaxLength="20" onfocus="yc(this);" onblur="pd();" BorderStyle="None"></asp:TextBox>
			   </div> 
                 <div class="dl">                                     
                  <span style="font-size:18px;"> 确&nbsp;认&nbsp;密&nbsp;码</span><asp:TextBox ID="txt_qr" runat="server" Width="200px" MaxLength="20" onfocus="yc(this);" onblur="pd();" BorderStyle="None"></asp:TextBox>
			   </div> 
               <div class="dl">                                     
                  <span style="font-size:18px;"> 中国&nbsp;&nbsp;0086</span><asp:TextBox ID="txt_phone" runat="server" Width="200px" MaxLength="20" onfocus="yc(this);" onblur="pd();" BorderStyle="None"></asp:TextBox>
			   </div> 
               <div class="dl">                                     
                  <span style="font-size:21px;"> 验&nbsp;&nbsp;证&nbsp;&nbsp;码</span><asp:TextBox ID="txt_yz" runat="server" Width="200px" MaxLength="20" onfocus="yc(this);" onblur="pd();" BorderStyle="None"></asp:TextBox>
			   </div> 
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>                   
               <div>                                     
                   <asp:CheckBox ID="cb_ok" runat="server" Text="我已阅读并同意" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
			   </div>  
               <div class="dt">
                   <asp:Button ID="btt_tj" runat="server" Text="立即注册"  BackColor="#3399FF" BorderStyle="None" ForeColor="White" Width="100%" Font-Names="微软雅黑" Font-Size="18px" Height="100%" CausesValidation="False" OnClick="btt_tj_Click" />
               </div>   
                   </ContentTemplate>
               </asp:UpdatePanel>                      
		   </div>
         
	</div>


	  <footer>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<address>
					<strong>CJCH-网上书店公司</strong><br/>
					中国·江苏</>
					 常州市武进区</address>
					<p>
						<i class="icon-phone"></i> (86) 13063972855 <br/>
						<i class="icon-envelope-alt"></i> smilehe0131@outlook.com
					</p>
				</div>
			</div>
			<div class="col-md-3">
				<div class="widget">
					<h5 class="widgetheading">快速链接</h5>
					<ul class="link-list">
						<li><a href="index.html">主页</a></li>
						<li><a href="gongsijieshao.html">公司介绍</a></li>
						<li><a href="chanpinliulan.html">产品浏览</a></li>
						<li><a href="gouwuche.html">购物车</a></li>
						<li><a href="gerenzhongxin.html">个人中心</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3">
				<div class="widget">
					<h5 class="widgetheading">最近新闻</h5>
					<ul class="link-list">
						<li><a href="#">年末大清仓，万种图书满200减100</a></li>
						<li><a href="#">新书速递-1月号</a></li>
						<li><a href="#">年底畅销榜大盘点，读客满100减30</a></li>
						<li><a href="#">名店好书 年末清仓200减100</a></li>
						<li><a href="#">大英儿童百科全书-名社好书5折抢</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-3">
				<div class="widget">
					<h5 class="widgetheading">热门网站</h5>
					<ul class="link-list">
						<li><a href="#">京东商城</a></li>
						<li><a href="#">淘宝网</a></li>
						<li><a href="#">当当网</a></li>
						<li><a href="#">亚马逊</a></li>
						<li><a href="#">W3school</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							Copyright &copy; 2017.CJCH-网上书店 All rights reserved.<a target="_blank" href="guanliyuandenglu.aspx">后台管理</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
      <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    </div>
    </form>
</body>
</html>
