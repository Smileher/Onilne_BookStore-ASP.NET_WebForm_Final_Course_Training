<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guanliyuandenglu.aspx.cs" Inherits="guanliyuan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet"/>
    <link href="css/jcarousel.css" rel="stylesheet" />
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/guanliyuandl.css" rel="stylesheet" />
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
            $('#<%=txt_user.ClientID%>').val("管理员账号");      
            $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            $('#<%=txt_pasw.ClientID%>').val("密码");                
        });
        function pd()
        {
         hide();
         if (($('#<%=txt_user.ClientID%>').val() == "") || ($('#<%=txt_user.ClientID%>').val() == "管理员账号"))
         {
             $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_user.ClientID%>').val("管理员账号");                   
         }         
         else
         {
             $('#<%=txt_user.ClientID%>').css("color", "#363636");
             SendRequest();
         }
                      
         //
         if (($('#<%=txt_pasw.ClientID%>').val() == "")||($('#<%=txt_pasw.ClientID%>').val() == "密码"))
         {
             $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
             $('#<%=txt_pasw.ClientID%>').val("密码");                   
         }
         else         
             $('#<%=txt_pasw.ClientID%>').css("color", "#363636");         
        }
        function yc(obj) {
            if (obj.value == "管理员账号")
                $('#<%=txt_user.ClientID%>').css("color", "#BEBEBE");
            if (obj.value == "密码")
                $('#<%=txt_pasw.ClientID%>').css("color", "#BEBEBE");
            if ((obj.value == "管理员账号") || (obj.value == "密码")) {
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
                <div class="head">
                    <span >CJCH网上书店管理员系统</span>
                </div>
            </div>
        </div>
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">	
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">管理员登陆</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	   <div>
           
           <div class="denglu">
			    <div class="dl">
                    <div class="dlyh" style="margin-bottom:30px;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/yh (1).png" Height="35px" Width="35px" />&nbsp;&nbsp;<asp:TextBox ID="txt_user" runat="server" Width="70%" onfocus="yc(this);" onblur="pd();" BorderStyle="None" MaxLength="20"></asp:TextBox>
                    </div>                                  
                    <div class="dlyh">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/psw.png" Height="35px" Width="35px" />&nbsp;&nbsp;<asp:TextBox ID="txt_pasw" runat="server" Width="70%" onfocus="yc(this);" onblur="pd();" BorderStyle="None" MaxLength="20"></asp:TextBox>
                    </div>                    
                    <div>
                        <asp:Label ID="lab_usps" runat="server" Visible="False" Text="*账号或密码错误" Font-Size="13px" ForeColor="Red"></asp:Label>
                        <span class="span"></span>                                                                       
                    </div>
                    <div class="dt">
                        <asp:Button ID="Button1" runat="server" Text="登录" BackColor="#3399FF" BorderStyle="None" Font-Names="微软雅黑" ForeColor="White" Height="100%" Width="100%" OnClick="Button1_Click"/>
                    </div>                    
			    </div>                     
		   </div>


	   </div>
	</section>
	<footer>
	<div class="container">
		
			
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>    
    </div>
    </form>
</body>
</html>
