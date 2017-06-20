<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gongsijieshao.aspx.cs" Inherits="gongsijieshao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <!-- css -->
     <link href="css/bootstrap.min.css" rel="stylesheet" />
     <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"/>
     <link href="css/jcarousel.css" rel="stylesheet" />
     <link href="css/flexslider.css" rel="stylesheet" />
     <link href="css/style.css" rel="stylesheet" />
    <!-- javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
     <script src="js/jquery.js"></script>
     <script src="js/jquery.easing.1.3.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/jquery.fancybox.pack.js"></script>
     <script src="js/jquery.fancybox-media.js"></script>  
     <script src="js/jquery.flexslider.js"></script>
     <script src="js/animate.js"></script>
   <!-- Vendor Scripts -->
     <script src="js/modernizr.custom.js"></script>
     <script src="js/jquery.isotope.min.js"></script>
     <script src="js/jquery.magnific-popup.min.js"></script>
     <script src="js/animate.js"></script>
     <script src="js/custom.js"></script>
</head>
<body>
<form id="form1" runat="server">
    <div>
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
						<li class="active"><a href="#">公司介绍</a></li>
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
				        <h2 class="pageTitle">公司介绍</h2>
			         </div>
		          </div>
	         </div>
	      </section>
	      <section id="content">
	<section class="section-padding">
		<div class="container">
			<div class="row showcase-section">
				<div class="col-md-6">
					<img src="img/dev1.png" alt="showcase image">
				</div>
				<div class="col-md-6">
					<div class="about-text">
						<h3>关于CJCH(ChenJian ChenHe)</h3>
						<p>CJCH集团创建于1996年，集团名称来自于两位创始人的姓名缩写（陈建，陈贺）。集团于2004年正式涉足图书领域并成立分公司CJCH-网上书店公司。2016年，CJCH集团市场交易额达到4627亿元，净收入达到1813亿元，年交易额同比增长78%，增速是行业平均增速的2倍。CJCH是中国收入规模最大的互联网企业。</p>
						 <p>2014年5月，CJCH集团在美国纳斯达克证券交易所正式挂牌上市，是中国第一个成功赴美上市的大型综合型电商平台，并成功跻身全球前十大互联网公司排行榜，2015年7月，CJCH凭借高成长性入选纳斯达克100指数和纳斯达克100平均加权指数。</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container">
					
					<div class="about">
				
						
						<div class="row">
							<div class="col-md-4">
								<!-- Heading and para -->
								<div class="block-heading-two">
									<h3><span>为什么选择我们?</span></h3>
								</div>
								<p>CJCH-网上书店拥有中国电商领域规模最大的物流基础设施；通过完善布局，CJCH-网上书店将成为全球唯一拥有中小件、大件一体化物流设施的电商企业。截至2016年12月30日，CJCH-网上书店在全国范围内拥有7大物流中心，运营了234个大型仓库，拥有6756个配送站和自提点，覆盖全国范围内的2639个区县，仓储设施占地面积约520万平方米。CJCH-网上书店专业的配送队伍能够为消费者提供一系列专业服务，如：限时达、次日达、夜间配和2小时极速达以及快速退换货等服务。</p>
							</div>
							<div class="col-md-4">
								<div class="block-heading-two">
									<h3><span>我们的业务范围</span></h3>
								</div>		
								<!-- Accordion starts -->
								<div class="panel-group" id="accordion-alt3">
								 <!-- Panel. Use "panel-XXX" class for different colors. Replace "XXX" with color. -->
								  <div class="panel">	
									<!-- Panel heading -->
									 <div class="panel-heading">
										<h4 class="panel-title">
										  <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseOne-alt3">
											<i class="fa fa-angle-right"></i>CJCH-网上书店
										  </a>
										</h4>
									 </div>
									 <div id="collapseOne-alt3" class="panel-collapse collapse">
										<!-- Panel body -->
										<div class="panel-body">
										 CJCH-网上书店致力于为消费者提供愉悦的在线购物体验，自2004年成立以来，坚持“正品行货”的理念，对假货零容忍；采取六大品控措施，保障正品，大量品牌直供，从源头杜绝假货。
										 </div>
									 </div>
								  </div>
								  <div class="panel">
									 <div class="panel-heading">
										<h4 class="panel-title">
										  <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseTwo-alt3">
											<i class="fa fa-angle-right"></i> CJCH-跨境电商
										  </a>
										</h4>
									 </div>
									 <div id="collapseTwo-alt3" class="panel-collapse collapse">
										<div class="panel-body">
										  CJCH-跨境电商在跨境进出口业务方面都制定了详细的发展规划，全面加速国际化进程。在进口业务方面，成立了“CJCH全球购”平台。在出口业务方面，CJCH的多语言全球售跨境贸易平台致力于满足全球用户需求，立足全球供应链。
										  </div>
									 </div>
								  </div>
								  <div class="panel">
									 <div class="panel-heading">
										<h4 class="panel-title">
										  <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseThree-alt3">
											<i class="fa fa-angle-right"></i> CJCH-金融服务
										  </a>
										</h4>
									 </div>
									 <div id="collapseThree-alt3" class="panel-collapse collapse">
										<div class="panel-body">
										 CJCH-金融服务依托CJCH生态平台积累的交易记录数据和信用体系，向社会各阶层提供融资贷款、理财、支付、众筹等各类金融服务。夯实金融门户基础，并依托CJCH生态圈，为创业创新者提供全产业链一站式服务。
										 </div>
									 </div>
								  </div>
								  <div class="panel">
									 <div class="panel-heading">
										<h4 class="panel-title">
										  <a data-toggle="collapse" data-parent="#accordion-alt3" href="#collapseFour-alt3">
											<i class="fa fa-angle-right"></i> CJCH-技术投资
										  </a>
										</h4>
									 </div>
									 <div id="collapseFour-alt3" class="panel-collapse collapse">
										<div class="panel-body">
										  CJCH是一家以技术为成长驱动的公司，从成立伊始，就投入大量资源开发完善可靠、能够不断升级、以应用服务为核心的自有技术平台，从而驱动电商、金融等各类业务的成长。未来，CJCH将更加重视技术的战略地位。
										  </div>
									 </div>
								  </div>
								</div>
								<!-- Accordion ends -->
								
							</div>
							
							<div class="col-md-4">
								<div class="block-heading-two">
									<h3><span>业务分布</span></h3>
								</div>								
								<h6>CJCH-网上书店</h6>
								<div class="progress pb-sm">
								  <!-- White color (progress-bar-white) -->
								  <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
									 <span class="sr-only">40% Complete (success)</span>
								  </div>
								</div>
								<h6>CJCH-跨境电商</h6>
								<div class="progress pb-sm">
								  <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
									 <span class="sr-only">40% Complete (success)</span>
								  </div>
								</div>
								<h6>CJCH-金融服务</h6>
								<div class="progress pb-sm">
								  <div class="progress-bar progress-bar-lblue" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
									 <span class="sr-only">40% Complete (success)</span>
								  </div>
								</div>
								<h6>CJCH-技术投资</h6>
								<div class="progress pb-sm">
								  <div class="progress-bar progress-bar-yellow" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
									 <span class="sr-only">40% Complete (success)</span>
								  </div>
								</div>
							</div>
							
						</div>
						
						 	<section class="section-padding">
		<div class="container">
		 
			 
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="about-text">
					<h3><span>公司荣誉</span></h3>
			
						<ul class="withArrow">
							<li><span class="fa fa-angle-right"></span> 2016年12月,CJCH集团蝉联第一财经——中国企业社会责任榜“杰出企业奖”。</li>
							<li><span class="fa fa-angle-right"></span> 2015年7月,CJCH荣登2015年《财富》中国500强，稳居互联网公司第一。</li>
							<li><span class="fa fa-angle-right"></span> 2014年4月,ChenHe先生第四次入选《财富》“中国最具影响力的50位商界领袖”。</li>
							<li><span class="fa fa-angle-right"></span> 2011年9月，CJCH被《财富》评为“2011年度卓越雇主中国最适宜工作的公司” 。</li>
							<li><span class="fa fa-angle-right"></span> 2005年7月，被互联网协会授予“ 2005年度网民最喜爱的网上图书购物商城”。</li>
							<li><span class="fa fa-angle-right"></span> 1998年12月，在北京市电子商务诚信企业评选活动中被评授为“最佳诚信企业”。</li>
						</ul> 
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="about-image">
						<img src="img/about.jpg" alt="About Images">
					</div>
				</div>
			</div>
		</div>
	</section>					
						 
						<br>
						<!-- Our Team starts -->
				  
						<div class="team-six">
							<div class="row">
								<div class="col-md-3 col-sm-6">
									<!-- Team Member -->
									<div class="team-member">
										<!-- Image -->
										<img class="img-responsive" src="img/team1.jpg" alt="">
										<!-- Name -->
										<h4>Johne Doe</h4>
										<span class="deg">Creative</span> 
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Team Member -->
									<div class="team-member">
										<!-- Image -->
										<img class="img-responsive" src="img/team2.jpg" alt="">
										<!-- Name -->
										<h4>Jennifer</h4>
										<span class="deg">Programmer</span> 
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Team Member -->
									<div class="team-member">
										<!-- Image -->
										<img class="img-responsive" src="img/team3.jpg" alt="">
										<!-- Name -->
										<h4>Christean</h4>
										<span class="deg">CEO</span> 
									</div>
								</div>
								<div class="col-md-3 col-sm-6">
									<!-- Team Member -->
									<div class="team-member">
										<!-- Image -->
										<img class="img-responsive" src="img/team4.jpg" alt="">
										<!-- Name -->
										<h4>Kerinele rase</h4>
										<span class="deg">Manager</span> 
									</div>
								</div>
							</div>
						</div>
						
						<!-- Our team ends -->
					  
						
					</div>
									
				</div>
	</section>
	      <footer>
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="widget">
					<h5 class="widgetheading">联系方式</h5>
					<address>
					<strong>CJCH-网上书店公司</strong><br>
					中国·江苏<br>
					 常州市武进区</address>
					<p>
						<i class="icon-phone"></i> (86) 13063972855 <br>
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
    </div>
    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    </div>
</form>
</body>
</html>
