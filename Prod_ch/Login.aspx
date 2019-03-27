<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Prod_ch.Home" %>

<!DOCTYPE html>

<html lang="fr">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="Content/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="Content/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- color switch -->
    <link href="Content/css/blast.min.css" rel="stylesheet" />
    <!-- lightbox -->
    <link rel="stylesheet" href="Content/css/lightbox.min.css">
    <!-- portfolio -->
    <link rel="stylesheet" href="Content/css/portfolio.css">
    <!-- font-awesome icons -->
    <link href="Content/css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
   
    <div id="home" class="banner" data-blast="bgColor">
        <!-- header -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light navbar-fixed-top">
            <div class="container">
                <h1 class="wthree-logo">
                    <a href="index.html" id="logoLink" data-blast="color"><img src="Content/images/LOGO.png"  width="220"/></a>
                </h1>
                <div class="nav-item  position-relative">
                    <a href="#menu" id="toggle">
                        <span></span>
                    </a>
                    <div id="menu">
                        <ul>
                            <li><a data-blast="color" href="Login.aspx">Home</a></li>
                            <li><a data-blast="color" href="Resgistre.aspx" >Sign_up</a></li>
                        
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- //header -->
        <!-- banner -->
        <div class="container-fluid">
            <div class="row banner-row">
                <div class="col-lg-8 bg-img text-center">
                    <h3 class="agile-title">Echanges des produits chimiques </h3>
                    <div class="bnr-img">
                        <img src="Content/images/tt.jpg" alt="" class="img-fluid m-auto" width="400" />
                    </div>

                </div>
                <div class="col-lg-4  my-auto p-0">

                    <div id="login-row">
                        <h4>Sign_in</h4>
                        <div id="login-column">

                            <div class="box">
                                                  <div class="alert alert-danger " runat="server" id="err" >
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Mot passe ou Nom responsable incorrect
                     </div><br />
                                                          <div class="alert alert-danger  " runat="server" id="err2" >
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Votre compte n'est pas active ,Vérifier votre mail
                     </div><br />
                                <div class="shape1 shape-bg"></div>
                                <div class="shape2 shape-bg"></div>
                                <div class="shape3 shape-bg"></div>
                                <div class="shape4 shape-bg"></div>
                                <div class="shape5 shape-bg"></div>
                                <div class="shape6 shape-bg"></div>
                                <div class="shape7 shape-bg"></div>
                                <div class="float">
                                    <form class="form" action="#" method="post" runat="server" autocomplete="off">
                       
                                        <div class="form-group">
                                            <label for="username">Username</label><br>
                                            <asp:TextBox ID="username" CssClass="form-control"  runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="requiredval" ErrorMessage="username is required"  ForeColor="Red"  ControlToValidate="username" runat="server"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password</label><br>
                                             <asp:TextBox ID="passwd"  CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ErrorMessage="Password is required"  ForeColor="Red"  ControlToValidate="passwd" runat="server" ></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group btn-agile">
                                            
                                            <asp:Button ID="btlogin" CssClass="btn btn-primary btn-md" Text="login" OnClick="btn_login" OnClientClick="" runat="server" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 </div>
</body>
    <script src="Scripts/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!--  menu toggle -->
    <script src="Scripts/menu.js"></script>
    <!-- color switch -->
    <script src="Scripts/blast.min.js"></script>
    <!-- light box -->
    <script src="Scripts/lightbox-plus-jquery.min.js"></script>
    <!-- Scrolling Nav JavaScript -->
    <script src="Scripts/scrolling-nav.js"></script>
    <!-- start-smooth-scrolling -->
    <script src="Scripts/move-top.js"></script>
    <script src="Scripts/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="Scripts/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="Scripts/bootstrap.js"></script>
</html>
