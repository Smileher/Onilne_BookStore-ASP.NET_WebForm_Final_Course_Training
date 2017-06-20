<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chanping.aspx.cs" Inherits="_Default" %>

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
            $("#gd").hide();
            $("#xx").hide();
            //setInterval("hq();", 5000);
            setTimeout("xx", 2000);
        });        
        function gdshow() {            
            $("#isotope-gallery-container").fadeOut();
            $("#gd").fadeIn();
            
        }
        function gdhide() {
            $("#gd").fadeOut();
            $("#isotope-gallery-container").fadeIn();            
        }
        function gouwu() {
            var value = $('#<%=lab_user.ClientID%>').val();
            window.location.href = "gouwuche.aspx?user=" + value + "";
        }
        function dindan() {
            var value = $('#<%=lab_user.ClientID%>').val();
            window.location.href = "dindan.aspx?user=" + value + "";
        }
        function xpsw() {
            var value = $('#<%=lab_user.ClientID%>').val();
            window.location.href = "xiugaimima.aspx?user=" + value + "";
        }
        function xxinxi(obj) {
            var value = $('#<%=lab_user.ClientID%>').val();
            window.location.href = "xiugaixinxi.aspx?user=" + value + "";
        }
        
    </script>
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
                      <asp:Label ID="lab_user" runat="server" ForeColor="#1ac1f4"></asp:Label>
                     <ul class="nav navbar-nav">
                        <li><a href="index.aspx">主页</a></li> 
				        <li><a href="gongsijieshao.aspx">公司介绍</a></li>
                        <li><a href="#">新闻</a></li>
                        <li class="active"><a href="#">产品浏览</a></li>
                        <li><a href="#" onclick="gouwu()">购物车</a></li> 
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
				     <h2 class="pageTitle">产品浏览</h2>
			      </div>
		       </div>
	        </div>
	     </section>
	     <section id="content">
	        <div class="container">	
			   <div class="row"> 
				  <div class="col-md-12">
					 <div class="about-logo">
						<h3>分类详细，任君挑选</h3>
						<p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                        <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
					 </div>  
				  </div>
			   </div> 						
	        </div>
	     </section>	
		 <!-- Start Gallery 1-2 -->
         <section id="gallery-1" class="content-block section-wrapper gallery-1">
    	 	<div class="container">
			   <div class="editContent">                                     
	              <ul class="filter">
	                 <li class="active"><a href="#" data-filter="*" onclick="gdhide()">所有</a></li>
	                 <li><a href="#" data-filter=".qingchun" onclick="gdhide()">青春文学</a></li>
	                 <li><a href="#" data-filter=".xiaoshuo" onclick="gdhide()">小说</a></li>
	                 <li><a href="#" data-filter=".xiuxian" onclick="gdhide()">休闲/爱好</a></li>
	                 <li><a href="#" data-filter=".wenxu" onclick="gdhide()">文学</a></li>
	                 <li><a href="#" data-filter=".yishu" onclick="gdhide()">艺术</a></li>
                     <li><a href="#" onclick="gdshow()">更多</a></li>
	              </ul>                   
			   </div>
               <!-- /.gallery-filter -->            
               <div class="row">
                  <div id="isotope-gallery-container">
                      <!-- 青春文学 -->
                      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspxmConnectionString %>" SelectCommand="SELECT [bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books] WHERE ([categoryID] = @categoryID)">
                         <SelectParameters>
                              <asp:Parameter DefaultValue="1" Name="categoryID" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                      <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="400px">
                                 <ItemTemplate>                                                                                                                
                                     <!-- /.gallery-item-wrapper -->
                                             <script type="text/javascript">
                                                 function ide(ie) {
                                                     window.location.href = "dg.aspx?bookids=" + ie + "";
                                                 }
                                             </script>
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper qingchun ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image1" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                             
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <a href="#" onclick="ide(<%# Eval("bookId") %>)"><h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("bookName","《{0}》") %>' /></h5></a>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label ID="Label2" runat="server" Text='<%# Eval("author") %>' /></p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div>                                                                                                                                                      
                                 </ItemTemplate>
                     </asp:DataList>    
                      <!-- 小说 -->
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspxmConnectionString %>" SelectCommand="SELECT [bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books] WHERE ([categoryID] = @categoryID)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="2" Name="categoryID" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                              <ItemTemplate>                                                                                                                                       
                              <!-- /.gallery-item-wrapper -->
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper xiaoshuo ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image2" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <a href="#" onclick="ide(<%# Eval("bookId") %>)"><h5><asp:Label ID="bookNameLabel" runat="server" Text='<%# Eval("bookName","《{0}》") %>' /></h5></a>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' /> </p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div>                                                                                                                      
                              </ItemTemplate>
                      </asp:DataList>   
                      <!-- 休闲/爱好 -->
                      <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aspxmConnectionString %>" SelectCommand="SELECT [bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books] WHERE ([bookID] = @bookID)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="3" Name="bookID" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                              <ItemTemplate>                     
                              <!-- /.gallery-item-wrapper -->
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper xiuxian ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image3" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <a href="#" onclick="ide(<%# Eval("bookId") %>)"><h5><asp:Label ID="Label3" runat="server" Text='<%# Eval("bookName","《{0}》") %>' /></h5></a>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' /> </p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div> 
                          </ItemTemplate>
                      </asp:DataList>
                      <!-- 文学 -->
                      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:aspxmConnectionString %>" SelectCommand="SELECT [bookID], [bookName], [author], [pubdate], [publisher], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books] WHERE ([categoryID] = @categoryID)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="4" Name="categoryID" Type="Int32" />
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource4">
                              <ItemTemplate>                                                            
                              <!-- /.gallery-item-wrapper -->
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper wenxu ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image3" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <a href="#" onclick="ide(<%# Eval("bookId") %>)"><h5><asp:Label ID="bookNameLabel" runat="server" Text='<%# Eval("bookName","《{0}》") %>' /></h5></a>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label ID="authorLabel" runat="server" Text='<%# Eval("author") %>' /></p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div>
                              </ItemTemplate>
                      </asp:DataList>
                      <!-- 艺术 -->
                      <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [bookID], [bookName], [author], [pubdate], [publisher], [price], [memo], [picture], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books] WHERE ([categoryID] = @categoryID)">
                          <SelectParameters>
                              <asp:Parameter DefaultValue="5" Name="categoryID" Type="Int32"></asp:Parameter>
                          </SelectParameters>
                      </asp:SqlDataSource>
                      <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource5">
                             <ItemTemplate>
                              <!-- /.gallery-item-wrapper -->
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper yishu ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image3" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <a href="#" onclick="ide(<%# Eval("bookId") %>)"><h5><asp:Label Text='<%# Eval("bookName","《{0}》") %>' runat="server" ID="bookNameLabel" /><br /></h5></a>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label Text='<%# Eval("author") %>' runat="server" ID="authorLabel" /><br /></p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div>                           
                              </ItemTemplate>
                      </asp:DataList>                      
                  </div>



                   <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="1"></asp:ScriptManager>
                   <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                           <ContentTemplate>
                           <script type="text/javascript">
                               
                               function ide(ie) {
                                   window.location.href = "chanping.aspx?bookid=" + ie + "";                                   
                               }
                               function xx() {                                   
                                   if (document.getElementById("<%=lab_user.ClientID%>").innerText != "") {
                                       $("#xx").fadeIn();
                                       $("#gd").fadeOut();
                                   }
                               }
                           </script>                   
                               <div id="gd">
                                   <div class="editContent">                                                                                                                       
	                                  <ul class="filter">
                                           <asp:DataList ID="DataList6" runat="server" DataKeyField="CategoryId" DataSourceID="SqlDataSource6" RepeatColumns="5" Width="100%" Height="250px" OnItemCommand="comment_ItemCommand">
                                                  <ItemTemplate>
                                                       <asp:Label Text='<%# Eval("CategoryId") %>' runat="server" ID="CategoryIdLabel" Visible="False" />
                                                       <li id='<%# Eval("CategoryId") %>' ><a href="#" id="mcl"  onclick="ide(<%# Eval("CategoryId") %>)">
                                                       
                                                           <asp:Label Text='<%# Eval("CategoryName") %>' runat="server" ID="CategoryNameLabel" />

                                                       </a></li>
                                                  </ItemTemplate>
                                            </asp:DataList>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [CategoryId], [CategoryName] FROM [category]"></asp:SqlDataSource>
                                       </ul>                   
			                        </div>
                                </div>
                               <asp:Label runat="server" ID="lab_c"></asp:Label>
                            </ContentTemplate>
                       </asp:UpdatePanel>
                   <!-- -->
                   <!--     -->
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <div id="xx">
                               <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [hot], [promotionPrice], [promotion], [old], [categoryID], [memo] FROM [books] WHERE ([categoryID] = @categoryID)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="lab_c" PropertyName="Text" Name="categoryID" Type="Int32"></asp:ControlParameter>
                           </SelectParameters>
                       </asp:SqlDataSource>
                       <!-- 详细 -->
                       <asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource7">
                               <ItemTemplate>                               
                               <!-- /.gallery-item-wrapper -->
                                     <div class="col-md-4 col-sm-6 col-xs-12 gallery-item-wrapper  ">
                                         <div class="gallery-item">
                                               <div class="gallery-thumb">                                                   
                                                   <asp:Image ID="Image3" runat="server"  Height="180px" ImageUrl='<%# Eval("picture", "bookimages\\{0}") %>' Width="200px" />
                                                   <div class="image-overlay"></div>
                                                   <a href="img/works/2.jpg" class="gallery-zoom"><i class="fa fa-eye"></i></a>
                                                   <a href="#" class="gallery-link"><i class="fa fa-link"></i></a>
                                               </div>
                                               <div class="gallery-details">
                            	                   <div class="editContent">
                                	                    <h5><asp:Label Text='<%# Eval("bookName","《{0}》") %>' runat="server" ID="Label4" /><br /></h5>
                            	                   </div>
                            	                   <div class="editContent">
                                	                    <p><asp:Label Text='<%# Eval("author") %>' runat="server" ID="Label5" /></p>
                            	                   </div>
                                               </div>                                                 
                                         </div>
                                     </div>                                                              
                                  </ItemTemplate>
                         </asp:DataList>
                         </div>
                           </ContentTemplate>
                       </asp:UpdatePanel>                                              
                   
                  






















                  <!-- /.isotope-gallery-container -->
               </div>
               <!-- /.row --> 
           <!-- /.container -->
		   </div>
        </section>
    <!--// End Gallery 1-2 -->  
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
