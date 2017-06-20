<%@ Page Language="C#" AutoEventWireup="true" CodeFile="houtaiguanli.aspx.cs" Inherits="houtaiguanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link type="text/css" rel="stylesheet" href="css/style(gl).css" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
               
    <div class="top"></div>
<div id="header">
	<div class="logo">CJCH后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href=""><asp:Label ID="labuser" runat="server" Text="Label"></asp:Label></a></li>
			<li><a href=""><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">退出</asp:LinkButton></a></li>
		</ul>
	</div>
</div>        
<div id="content">
	<div class="left_menu">
        <script type="text/javascript">
            $(function () {
                $("#newsyh").hide();
                $("#sj").hide();
                $("#fl").hide();
                $("#yh").hide();
                $("#gly").hide();
            });
            function newshow() {
                $("#gly").hide();
                $("#yh").hide();
                $("#sj").hide();
                $("#fl").hide();
                $("#newsyh").show();                
            }
            function sjshow() {
                $("#yh").hide();
                $("#gly").hide();
                $("#newsyh").hide();
                $("#fl").hide();
                $("#sj").show();                
            }
            function flshow() {
                $("#gly").hide();
                $("#yh").hide();
                $("#newsyh").hide();
                $("#sj").hide();
                $("#fl").show();
            }
            function yhshow() {
                $("#gly").hide();
                $("#fl").hide();
                $("#newsyh").hide();
                $("#sj").hide();
                $("#yh").show();
            }
            function glyshow() {
                $("#yh").hide();
                $("#fl").hide();
                $("#newsyh").hide();
                $("#sj").hide();
                $("#gly").show();
            }
         </script>
	<ul id="nav_dot">
      <li>
          <h4 class="M1"><span></span>新闻公告</h4>
          <div class="list-item none">
            <a href='' onclick="newshow(); return false">优惠公告</a>
            <a href=''>热门公告</a>
            <a href=''>新书公告</a>            
          </div>
        </li>                					    
		<!-- <li>
          <h4  class="M6"><span></span>数据统计</h4>
          <div class="list-item none">
            <a href=''>销售统计</a>
            <a href=''>订单统计</a>
            <a href=''>用户统计</a>
          </div>
        </li> -->						
	    <li>
          <h4  class="M9"><span></span>书籍管理</h4>
          <div class="list-item none">
            <a href='' onclick="sjshow(); return false">书籍管理</a>
            <a href='' onclick="flshow(); return false">分类管理</a>            
          </div>
        </li>
				<li>
          <h4   class="M10"><span></span>系统管理</h4>
          <div class="list-item none">
            <a href='' onclick="yhshow(); return false">用户管理</a>
            <a href='' onclick="glyshow(); return false">管理员管理</a>            
          </div>
        </li>
  </ul>
		</div>
	    <div class="m-right">			      
			<div class="main">     
                <!-- 新闻开始 -->                                              
                <script type="text/javascript">
                    $(function () {
                        $("#newbj").hide();
                    });
                    function newbjshow() {
                        $("#sj").hide();
                        $("#newbj").show();
                        
                    }
                    function newbjhide() {
                        $("#sj").hide();
                        $("#newbj").hide();
                    }
                </script>                                			
                <div id="newsyh" style="width:95%;height:500px; border-style:solid; border-width:1px 1px 1px 1px; margin-left:3%; margin-top:15px;">
                    <div style="width:70%; height:100%; float:left;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" Width="100%">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:CommandField>
                                <asp:BoundField DataField="ID" HeaderText="ID编号" SortExpression="ID">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="head" HeaderText="标题" SortExpression="head">
                                    <HeaderStyle Width="25%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="memo" HeaderText="内容" SortExpression="memo">
                                    <HeaderStyle Width="40%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="fl" HeaderText="分类" SortExpression="fl">
                                    <HeaderStyle Width="25%"></HeaderStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [ID], [head], [memo], [fl] FROM [news]" DeleteCommand="DELETE FROM [news] WHERE [ID] = @ID" InsertCommand="INSERT INTO [news] ([ID], [head], [memo], [fl]) VALUES (@ID, @head, @memo, @fl)" UpdateCommand="UPDATE [news] SET [head] = @head, [memo] = @memo, [fl] = @fl WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="head" Type="String"></asp:Parameter>
                                <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                                <asp:Parameter Name="fl" Type="Int32"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="head" Type="String"></asp:Parameter>
                                <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                                <asp:Parameter Name="fl" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>                                        
                    <div style="width:20%; height:100%; float:right;">                        
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>                                
                            <asp:Button ID="btt_newtj" runat="server" Text="添加" OnClick="btt_newtj_Click" OnClientClick="newbjshow()" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑"  />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>                        
                    </div>                    
				</div>                      
                <div id="newbj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:13%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:10px;">编号</span>
                                <asp:TextBox ID="txt_newbh" runat="server" Width="70%" Height="25px" Enabled="False"></asp:TextBox>
                            </div>
                            <div style="margin-bottom:13%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:10px;">标题</span>
                                <asp:TextBox ID="txt_newbj" runat="server" Width="70%" Height="25px"></asp:TextBox>
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:10px;" >分类</span>
                                <asp:DropDownList ID="ddl_newbj" runat="server" Width="70%" Height="30px">
                                    <asp:ListItem Value="1">优惠新闻</asp:ListItem>
                                    <asp:ListItem Value="2">热门新闻</asp:ListItem>
                                    <asp:ListItem Value="3">新书新闻</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div style="width:40%; height:60%; float:right; ">
                            <span style="color:#ffffff; font-size:18px; margin-right:10px;">内容</span>                            
                            <asp:TextBox ID="txt_newnr" runat="server" Width="70%" Height="100%"></asp:TextBox>
                        </div>
                    </div>
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_newqr" runat="server" Text="确认" OnClick="btt_newqr_Click"  Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_newqx" runat="server" Text="取消" OnClientClick="newbjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <!-- 新闻结束 -->
                <!-- 书籍开始 -->
                <script type="text/javascript">
                    $(function () {
                        $("#sjbj").hide();
                    });
                    function sjbjshow() {
                        $("#sjbj").show();
                        
                    }
                    function sjbjhide() {
                        $("#sjbj").hide();
                    }
                </script>                                                                                                                                                                         
                <div id="sj" style="width:95%;height:610px; border-style:solid; border-width:1px 1px 1px 1px; margin-left:3%; margin-top:15px;">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>                        
                    <div style="width:80%; height:100%; float:left;">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="4" Height="80%">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                                <asp:BoundField DataField="bookID" HeaderText="书本编号" SortExpression="bookID">
                                    <HeaderStyle Width="5%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="bookName" HeaderText="书名" SortExpression="bookName">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="publisher" HeaderText="出版商" SortExpression="publisher">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="pubdate" HeaderText="出版日期" SortExpression="pubdate">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price">
                                    <HeaderStyle Width="5%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="picture" HeaderText="图片" SortExpression="picture">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="memo" HeaderText="内容" SortExpression="memo">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="categoryID" HeaderText="分类" SortExpression="categoryID">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID] FROM [books]" DeleteCommand="DELETE FROM [books] WHERE [bookID] = @bookID" InsertCommand="INSERT INTO [books] ([bookID], [bookName], [author], [publisher], [pubdate], [price], [picture], [memo], [hot], [promotionPrice], [promotion], [old], [categoryID]) VALUES (@bookID, @bookName, @author, @publisher, @pubdate, @price, @picture, @memo, @hot, @promotionPrice, @promotion, @old, @categoryID)" UpdateCommand="UPDATE [books] SET [bookName] = @bookName, [author] = @author, [publisher] = @publisher, [pubdate] = @pubdate, [price] = @price, [picture] = @picture, [memo] = @memo, [hot] = @hot, [promotionPrice] = @promotionPrice, [promotion] = @promotion, [old] = @old, [categoryID] = @categoryID WHERE [bookID] = @bookID">
                            <DeleteParameters>
                                <asp:Parameter Name="bookID" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="bookID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="bookName" Type="String"></asp:Parameter>
                                <asp:Parameter Name="author" Type="String"></asp:Parameter>
                                <asp:Parameter Name="publisher" Type="String"></asp:Parameter>
                                <asp:Parameter Name="pubdate" Type="DateTime"></asp:Parameter>
                                <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="picture" Type="String"></asp:Parameter>
                                <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                                <asp:Parameter Name="hot" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="promotionPrice" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="promotion" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="old" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="categoryID" Type="Int32"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="bookName" Type="String"></asp:Parameter>
                                <asp:Parameter Name="author" Type="String"></asp:Parameter>
                                <asp:Parameter Name="publisher" Type="String"></asp:Parameter>
                                <asp:Parameter Name="pubdate" Type="DateTime"></asp:Parameter>
                                <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="picture" Type="String"></asp:Parameter>
                                <asp:Parameter Name="memo" Type="String"></asp:Parameter>
                                <asp:Parameter Name="hot" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="promotionPrice" Type="Decimal"></asp:Parameter>
                                <asp:Parameter Name="promotion" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="old" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="categoryID" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="bookID" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>                        
                    </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    
                    <div style="width:20%; height:100%; float:right;">                        
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_sjtj" runat="server" Text="添加" OnClientClick="sjbjshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑"/>
                        </div>                        
                    </div>
                        
                </div>                                      
                <div id="sjbj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">书&nbsp;&nbsp;&nbsp;&nbsp;名</span>    
                                <asp:TextBox ID="txt_sjname" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">作&nbsp;&nbsp;&nbsp;&nbsp;者</span>    
                                <asp:TextBox ID="txt_sjauthor" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:16px;" >出&nbsp;版&nbsp;商</span>  
                                <asp:TextBox ID="txt_sjcbs" runat="server" Width="60%" Height="20px"></asp:TextBox>                              
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:9px;" >出版日期</span>    
                                <asp:TextBox ID="txt_sjcbrq" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;" >价&nbsp;&nbsp;&nbsp;&nbsp;格</span>   
                                <asp:TextBox ID="txt_sjjg" runat="server" Width="60%" Height="20px"></asp:TextBox>                             
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;" >图&nbsp;&nbsp;&nbsp;&nbsp;片</span>       
                                <asp:TextBox ID="txt_sjtp" runat="server" Width="60%" Height="20px"></asp:TextBox>                         
                            </div>
                            <div>
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;" >分&nbsp;&nbsp;&nbsp;&nbsp;类</span>  
                                <asp:TextBox ID="txt_sjfl" runat="server" Width="60%" Height="20px"></asp:TextBox>                              
                            </div>
                        </div>
                        <div style="width:40%; height:60%; float:right; ">
                            <span style="color:#ffffff; font-size:18px; margin-right:10px;">内容</span>   
                            <asp:TextBox ID="txt_sjnr" runat="server" Width="70%" Height="100%"></asp:TextBox>                                     
                        </div>
                    </div>
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_sjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_sjqr_Click" />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_sjqx" runat="server" Text="取消" OnClientClick="sjbjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div> 
                <!-- 书籍结束 -->
                <!-- 分类开始 -->
                <script type="text/javascript">
                    $(function () {
                        $("#fltj").hide();
                        $("#flbj").hide();
                        $("#flsc").hide();
                    });
                    function fltjshow() {
                        $("#flbj").hide();
                        $("#flsc").hide();
                        $("#fltj").show();                        
                    }
                    function fltjhide() {                        
                        $("#fltj").hide();
                    }
                    function flbjshow() {
                        $("#flsc").hide();
                        $("#fltj").hide();
                        $("#flbj").show();
                    }
                    function flbjhide() {                        
                        $("#flbj").hide();
                    }
                    function flscshow() {
                        $("#flbj").hide();
                        $("#fltj").hide();
                        $("#flsc").show();
                    }
                    function flschide() {
                        $("#flsc").hide();
                    }
                </script>
                <div id="fl" style="width:95%;height:500px; border-style:solid; border-width:1px 1px 1px 1px; margin-left:3%; margin-top:15px;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>                        
                    <div style="width:80%; height:100%; float:left;">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryId" DataSourceID="SqlDataSource3" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="CategoryId" HeaderText="编号" ReadOnly="True" SortExpression="CategoryId">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="CategoryName" HeaderText="类别" SortExpression="CategoryName">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [CategoryId], [CategoryName] FROM [category]"></asp:SqlDataSource>
                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel>                                        
                    <div style="width:20%; height:100%; float:right;">                        
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_fltj" runat="server" Text="添加" OnClientClick="fltjshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>                                                
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_flbj" runat="server" Text="编辑" OnClientClick="flbjshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_flsc" runat="server" Text="删除" OnClientClick="flscshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                    </div>
                    <!-- 分类添加开始 -->
                    <div id="fltj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">类&nbsp;&nbsp;&nbsp;&nbsp;别</span>    
                                <asp:TextBox ID="txt_fltj" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                            
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_fltjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_fltjqr_Click"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_fltjqu" runat="server" Text="取消"  OnClientClick="fltjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                    </div>
                    <!-- 分类添加结束 -->
                    <!-- 分类编辑开始 -->
                    <div id="flbj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编&nbsp;&nbsp;&nbsp;&nbsp;号</span>    
                                <asp:TextBox ID="txt_flbjid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">类&nbsp;&nbsp;&nbsp;&nbsp;别</span>    
                                <asp:TextBox ID="txt_flbjzl" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                            
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_flbjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_flbjqr_Click" />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_flbjqu" runat="server" Text="取消"  OnClientClick="flbjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                    </div>
                    <!-- 分类编辑结束 -->   
                    <!-- 分类删除开始 -->
                    <div id="flsc" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编&nbsp;&nbsp;&nbsp;&nbsp;号</span>    
                                <asp:TextBox ID="txt_flscid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div style="margin-bottom:0%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">类&nbsp;&nbsp;&nbsp;&nbsp;别</span>    
                                <asp:TextBox ID="txt_flsclb" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                            
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_flscqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_flscqr_Click" />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_flscqx" runat="server" Text="取消"  OnClientClick="flschide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                    </div>
                    <!-- 分类删除结束 -->                                     
                </div>      
                <!-- 分类结束 -->
                <!-- 用户管理开始 -->
                <div id="yh" style="width:95%;height:500px; border-style:solid; border-width:1px 1px 1px 1px; margin-left:3%; margin-top:15px;">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>                        
                    <div style="width:80%; height:100%; float:left;">
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" AllowPaging="True">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="userName" HeaderText="用户名" SortExpression="userName">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="passWord" HeaderText="密码" SortExpression="passWord">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="sex">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="birthday" HeaderText="出身日期" SortExpression="birthday">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="phoneNumber" HeaderText="手机号" SortExpression="phoneNumber">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [ID], [userName], [passWord], [jurisdiction], [sex], [birthday], [phoneNumber] FROM [users]"></asp:SqlDataSource>
                    </div>
                    </ContentTemplate>
                    </asp:UpdatePanel> 
                    <div style="width:20%; height:100%; float:right;">                        
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_yhtj" runat="server" Text="添加" OnClientClick="yhtjshow(); return false"  Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>                                                
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_yhbj" runat="server" Text="编辑" OnClientClick="yhbjshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="btt_yhsc" runat="server" Text="删除" OnClientClick="yhscshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $("#yhtj").hide();
                        $("#yhbj").hide();
                        $("#yhsc").hide();
                    });
                    function yhtjshow() {
                        $("#yhbj").hide();
                        $("#yhsc").hide();
                        $("#yhtj").show();
                    }
                    function yhtjhide() {
                        $("#yhtj").hide();
                    }
                    function yhbjshow() {
                        $("#yhsc").hide();
                        $("#yhtj").hide();
                        $("#yhbj").show();
                    }
                    function yhbjhide() {
                        $("#yhbj").hide();
                    }
                    function yhscshow() {
                        $("#yhbj").hide();
                        $("#yhtj").hide();
                        $("#yhsc").show();
                    }
                    function yhschide() {
                        $("#flsc").hide();
                    }
                </script>
                <!-- 添加开始 -->
                <div id="yhtj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">姓名</span>    
                                <asp:TextBox ID="txt_yhtjnaem" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>   
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">密码</span>    
                                <asp:TextBox ID="txt_yhtjpsw" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>        
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">性别</span>    
                                <asp:TextBox ID="txt_yhtjsex" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>     
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:9px;">出生日期</span>    
                                <asp:TextBox ID="txt_yhtjday" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>  
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:16px;">手机号</span>    
                                <asp:TextBox ID="txt_yhtjphone" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>            
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_yhtjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_yhtjqr_Click"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_yhtjqx" runat="server" Text="取消"  OnClientClick="yhtjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <!-- 添加结束 -->
                <!-- 编辑开始 -->
                <div id="yhbj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编号</span>    
                                <asp:TextBox ID="txt_yhbjid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">姓名</span>    
                                <asp:TextBox ID="txt_yhbjnaem" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>   
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">密码</span>    
                                <asp:TextBox ID="txt_yhbjpsw" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>        
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">性别</span>    
                                <asp:TextBox ID="txt_yhbjsex" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>     
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:9px;">出生日期</span>    
                                <asp:TextBox ID="txt_yhbjday" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>  
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:16px;">手机号</span>    
                                <asp:TextBox ID="txt_yhbjphone" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>            
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_yhbjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_yhbjqr_Click"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_yhbjqx" runat="server" Text="取消"  OnClientClick="yhtjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <!-- 编辑结束 -->
                <!-- 删除开始 -->
                <div id="yhsc" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编号</span>    
                                <asp:TextBox ID="txt_yhscid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                                        
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_yhscqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_yhscqr_Click"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_yhscqx" runat="server" Text="取消"  OnClientClick="yhtjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_yhscqx_Click" />
                        </div>
                    </div>
                </div>
                <!-- 删除结束 -->
                <!-- 用户管理结束 -->
                <!-- 管理员管理开始 -->
                <script type="text/javascript">
                    $(function () {
                        $("#glytj").hide();
                        $("#glybj").hide();
                        $("#glysc").hide();
                    });
                    function glytjshow() {
                        $("#glybj").hide();
                        $("#glysc").hide();
                        $("#glytj").show();
                    }
                    function glytjhide() {
                        $("#glytj").hide();
                    }
                    function glybjshow() {
                        $("#glysc").hide();
                        $("#glytj").hide();
                        $("#glybj").show();
                    }
                    function glybjhide() {
                        $("#glybj").hide();
                    }
                    function glyscshow() {
                        $("#glybj").hide();
                        $("#glytj").hide();
                        $("#glysc").show();
                    }
                    function glyschide() {
                        $("#glysc").hide();
                    }
                </script>
                <div id="gly" style="width:95%;height:500px; border-style:solid; border-width:1px 1px 1px 1px; margin-left:3%; margin-top:15px;">
                    <%--<asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>  --%>                      
                    <div style="width:80%; height:100%; float:left;">
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource5">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" SortExpression="ID">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="userName" HeaderText="用户名" SortExpression="userName">
                                    <HeaderStyle Width="20%"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="jurisdiction" HeaderText="权限" SortExpression="jurisdiction">
                                    <HeaderStyle Width="10%"></HeaderStyle>
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:aspxmConnectionString %>' SelectCommand="SELECT [ID], [userName], [jurisdiction] FROM [users]"></asp:SqlDataSource>
                    </div>
                    <%--</ContentTemplate>
                    </asp:UpdatePanel>--%> 
                    <div style="width:20%; height:100%; float:right;">                        
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="Button1" runat="server" Text="添加" OnClientClick="glytjshow(); return false"  Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>                                                
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="Button2" runat="server" Text="编辑" OnClientClick="glybjshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                        <div style="width:100%;height:30%;  margin-bottom:3.3%;">
                            <asp:Button ID="Button3" runat="server" Text="删除" OnClientClick="glyscshow(); return false" Width="100%" Height="100%" BorderStyle="None" Font-Size="30px" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" />
                        </div>
                    </div>
                </div>
                <!-- 管理员添加开始 -->
                <div id="glytj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">姓名</span>    
                                <asp:TextBox ID="txt_glytjname" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>   
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">密码</span>    
                                <asp:TextBox ID="txt_glytjpsw" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                                       
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_glytjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_glytjqr_Click"  />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_glytjqx" runat="server" Text="取消"  OnClientClick="glytjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <!-- 管理员添加结束 -->
                <!-- 管理员编辑开始 -->
                <div id="glybj" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编号</span>    
                                <asp:TextBox ID="txt_glybjid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">姓名</span>    
                                <asp:TextBox ID="txt_glybjname" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                                          
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">权限</span>    
                                <asp:TextBox ID="txt_glybjqx" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>  
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_glybjqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_glybjqr_Click"   />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_glybjqx" runat="server" Text="取消"  OnClientClick="glybjhide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" />
                        </div>
                    </div>
                </div>
                <!-- 管理员编辑结束 -->
                <!-- 管理员删除开始 -->
                <div id="glysc" style="width:51.65%; height:70%; border-style:solid; border-width:1px; position:absolute; left:24.4%; top:7%; background:rgba(105,105,105,0.9);">
                    <div style="width:100%; height:60%; padding-top:40px;">
                        <div style="width:40%; float:left;">
                            <div style="margin-bottom:2%;">
                                <span style="color:#ffffff; font-size:18px; margin-right:23px;">编号</span>    
                                <asp:TextBox ID="txt_glyscid" runat="server" Width="60%" Height="20px"></asp:TextBox>                            
                            </div>                                        
                        </div>                        
                    </div>                        
                    <div style="width:100%; height:30%;">
                        <div style="width:25%; height:50px; float:left; margin-left:10%;">
                            <asp:Button ID="btt_glytscqr" runat="server" Text="确认" Height="100%" Width="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_glytscqr_Click"   />
                        </div>
                        <div style="width:25%; height:50px; float:right; margin-right:10%;">
                            <asp:Button ID="btt_glyscqx" runat="server" Text="取消"  OnClientClick="glyschide(); return false" Width="100%" Height="100%" BackColor="#0066CC" ForeColor="White" Font-Names="微软雅黑" Font-Size="18px" BorderStyle="None" OnClick="btt_yhscqx_Click" />
                        </div>
                    </div>
                </div>
                <!-- 管理员删除结束 -->
                <!-- 管理员管理结束 -->                
			</div>
        </div>		
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2015 版权所有 京ICP备05019125号-10  来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p></div>
<script>navList(12);</script>                        
    </form>
</body>
</html>
