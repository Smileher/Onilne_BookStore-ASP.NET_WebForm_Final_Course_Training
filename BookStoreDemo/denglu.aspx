<%@ Page Language="C#" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="denglu" %>

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
    <link href="css/denglu.css" rel="stylesheet" />
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
    <script>
        $(function () {
            $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_user.ClientID%>').val("邮箱/用户名/已验证的手机");      
            $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_pasw.ClientID%>').val("密码");   
            $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_yz.ClientID%>').val("验证码");
        });
        function pd()
        {
         
         if (($('#<%=txt_user.ClientID%>').val() == "") || ($('#<%=txt_user.ClientID%>').val() == "邮箱/用户名/已验证的手机"))
         {
             $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_user.ClientID%>').val("邮箱/用户名/已验证的手机");                   
         }         
         else
         {
             $('#<%=txt_user.ClientID%>').css("color", "#363636");
             SendRequest();
         }
                      
         //
         if (($('#<%=txt_pasw.ClientID%>').val() == "") || ($('#<%=txt_pasw.ClientID%>').val() == "验证码"))
         {
             $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_pasw.ClientID%>').val("验证码");                   
         }
         else         
             $('#<%=txt_yz.ClientID%>').css("color", "#363636");   
         //
         if (($('#<%=txt_yz.ClientID%>').val() == "") || ($('#<%=txt_pasw.ClientID%>').val() == "验证码")) {
             $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_yz.ClientID%>').val("验证码");
         }
         else
             $('#<%=txt_yz.ClientID%>').css("color", "#363636"); 

        }
        function yc(obj) {
            if (obj.value == "邮箱/用户名/已验证的手机")
                $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "密码")
                $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "验证码")
                $('#<%=txt_yz.ClientID%>').css("color", "#BEBEBE");
            if ((obj.value == "邮箱/用户名/已验证的手机") || (obj.value == "密码") || (obj.value == "验证码")) {
                obj.value = "";
            }
        }
        function hide() {
            $('#<%=lab_usps.ClientID%>').hide();
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
					            <li><a href="#">登陆账户</a></li>
					            <li><a href="dindan.aspx">我的订单</a></li>
                                <li><a href="xiugaimima.aspx">修改密码</a></li>
                                <li><a href="xiugaixinxi.aspx">修改信息</a></li> 
                                <li><a href="#"><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">退出登陆</asp:LinkButton></a></li>
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
				     <h2 class="pageTitle">用户登录</h2>
			      </div>
		       </div>
	        </div>
	     </section>
	     
		 
          
         
    	   <div class="denglu">
			    <div class="dl">
                    <div class="dlyh" style="margin-bottom:30px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/yh (1).png" Height="35px" Width="35px" />&nbsp;&nbsp;
                        <asp:TextBox ID="txt_user" runat="server" Width="70%" onfocus="yc(this);" onblur="pd();" BorderStyle="None" MaxLength="20"></asp:TextBox>
                    </div>                                  
                    <div class="dlyh">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/psw.png" Height="35px" Width="35px" />&nbsp;&nbsp;
                        <asp:TextBox ID="txt_pasw" runat="server" Width="70%" onfocus="yc(this);" onblur="pd();" BorderStyle="None" MaxLength="20"></asp:TextBox>                        
                    </div>         
                    <div class="dlyh" style="margin-top:20px; padding-top:7px;">
                        <asp:TextBox ID="txt_yz" runat="server" Width="60%" onfocus="yc(this);" onblur="pd();" BorderStyle="None" MaxLength="20"></asp:TextBox>
                        <div style="float:right;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:ImageButton ID="img_yz" runat="server" Height="24px" ImageUrl="~/Code.aspx" Width="60px" OnClick="img_yz_Click" />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>                        
                    </div>                                                   
                    <div>
                        <asp:Label ID="lab_usps" runat="server" Visible="False" Text="*用户名或密码错误" Font-Size="13px" ForeColor="Red"></asp:Label>
                        <span class="span"></span>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text="忘记密码">忘记密码</asp:LinkButton><br/>                                                
                    </div>
                    <div class="dt">
                        <asp:Button ID="Button1" runat="server" Text="登录" BackColor="#3399FF" BorderStyle="None" Font-Names="微软雅黑" ForeColor="White" Height="100%" Width="100%" OnClick="Button1_Click"/>
                    </div>
                    <div style="padding-left:70%;padding-top:45px;">
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">立即注册</asp:LinkButton>
                    </div>
			    </div>                     
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
