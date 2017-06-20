<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gouwuche.aspx.cs" Inherits="gouwuche" %>

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
						<li><a href="gongsijieshao.aspx">公司介绍</a></li>
                        <li><a href="#">新闻</a></li>
                        <li><a href="chanping.aspx">产品浏览</a></li>
                        <li class="active"><a href="gouwuche.aspx">购物车</a></li> 
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
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">	
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">购物车</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	   <div style="width:100%;height:500px; padding-left:10%;">
           <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID">
               <Columns>
                   <asp:BoundField DataField="bookName" HeaderText="书名" SortExpression="bookName"></asp:BoundField>
                   <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author"></asp:BoundField>
                   <asp:BoundField DataField="publisher" HeaderText="出版商" SortExpression="publisher"></asp:BoundField>
                   <asp:BoundField DataField="pubdate" HeaderText="出版日期" SortExpression="pubdate"></asp:BoundField>
                   <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price"></asp:BoundField>
                   <asp:BoundField DataField="number" HeaderText="数母" SortExpression="number"></asp:BoundField>
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' DeleteCommand="DELETE FROM [dd] WHERE [ID] = @ID" InsertCommand="INSERT INTO [dd] ([userName], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [ID], [number], [ifxd], [promotion], [promotionPrice], [categoryID]) VALUES (@userName, @bookName, @author, @publisher, @pubdate, @price, @picture, @memo, @ID, @number, @ifxd, @promotion, @promotionPrice, @categoryID)" SelectCommand="SELECT [userName], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [ID], [number], [ifxd], [promotion], [promotionPrice], [categoryID] FROM [dd] WHERE ([ifxd] = @ifxd)" UpdateCommand="UPDATE [dd] SET [userName] = @userName, [bookName] = @bookName, [author] = @author, [publisher] = @publisher, [pubdate] = @pubdate, [price] = @price, [picture] = @picture, [memo] = @memo, [number] = @number, [ifxd] = @ifxd, [promotion] = @promotion, [promotionPrice] = @promotionPrice, [categoryID] = @categoryID WHERE [ID] = @ID">
               <DeleteParameters>
                   <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="userName" Type="String"></asp:Parameter>
                   <asp:Parameter Name="bookName" Type="String"></asp:Parameter>
                   <asp:Parameter Name="author" Type="String"></asp:Parameter>
                   <asp:Parameter Name="publisher" Type="String"></asp:Parameter>
                   <asp:Parameter Name="pubdate" Type="String"></asp:Parameter>
                   <asp:Parameter Name="price" Type="String"></asp:Parameter>
                   <asp:Parameter Name="picture" Type="String"></asp:Parameter>
                   <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                   <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="number" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="ifxd" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="promotion" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="promotionPrice" Type="String"></asp:Parameter>
                   <asp:Parameter Name="categoryID" Type="Int32"></asp:Parameter>
               </InsertParameters>
               <SelectParameters>
                   <asp:Parameter DefaultValue="0" Name="ifxd" Type="Int32" />
               </SelectParameters>
               <UpdateParameters>
                   <asp:Parameter Name="userName" Type="String"></asp:Parameter>
                   <asp:Parameter Name="bookName" Type="String"></asp:Parameter>
                   <asp:Parameter Name="author" Type="String"></asp:Parameter>
                   <asp:Parameter Name="publisher" Type="String"></asp:Parameter>
                   <asp:Parameter Name="pubdate" Type="String"></asp:Parameter>
                   <asp:Parameter Name="price" Type="String"></asp:Parameter>
                   <asp:Parameter Name="picture" Type="String"></asp:Parameter>
                   <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                   <asp:Parameter Name="number" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="ifxd" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="promotion" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="promotionPrice" Type="String"></asp:Parameter>
                   <asp:Parameter Name="categoryID" Type="Int32"></asp:Parameter>
                   <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
               </UpdateParameters>
           </asp:SqlDataSource>
           <div style="height:100px; margin-bottom:30px; margin-top:30px; margin-left:35%;">
               <asp:Button ID="Button1" runat="server" Text="去结算" OnClick="Button1_Click" />
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
