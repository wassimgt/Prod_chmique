<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resgistre.aspx.cs" Inherits="Prod_ch.Resgistre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registre</title>

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
<body>
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
                            <li><a data-blast="color" href="Resgistre.aspx" class="scroll">Sign_up</a></li>
                        
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
   <section class="wthree-row  w3-contact" id="contact">
        <div class="container py-5">
            <div class="title-section py-lg-5 text-center">
        
                <h3 class="w3ls-title text-uppercase">Sign_up</h3>
            </div>
            <div class="row contact-form pt-5">
                <div class="offset-lg-2"></div>
                <div class="col-lg-8 wthree-form-left">
                    <!-- contact form grid -->
                    <fieldset class="contact-top1" data-blast="borderColor">
                        <legend class="text-dark mb-4 text-capitalize" data-blast="bgColor">
                            Registre</legend>
                        <form action="#" method="post" class="f-color" runat="server"  autocomplete="off">
                             <div class="alert alert-info" id="mg" runat="server">
                      <i class="glyphicon glyphicon-log-in"></i> &nbsp; Inscription rèussite ,vérifier votre email login &nbsp;&nbsp;<a href='Login.aspx'>ici</a> 
                             </div>
                             <div class="alert alert-danger" runat="server" id="err">
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Le mot passe doit contient au moin 8 caractére
                     </div>
                                    <div class="alert alert-danger" runat="server" id="erreur">
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; erreur dans l'inscription
                     </div>
                                          <div class="alert alert-danger" runat="server" id="stt">
                        <i class="glyphicon glyphicon-warning-sign"></i><asp:Label ID="status" runat="server" ></asp:Label>
                     </div>
                            <div class="form-group">
                                <label for="contactusername">Code Magasin</label>

                                <asp:TextBox CssClass="form-control" ID="txtcode" placeholder="Entrer code magasin"  runat="server" />
                                 <asp:RequiredFieldValidator ID="coderq" ErrorMessage="Code is required"  ForeColor="Red"  ControlToValidate="txtcode" runat="server"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="contactusername">Nom Magasin</label>
                                 <asp:TextBox CssClass="form-control" ID="txtnommg" placeholder="Entrer Nom magasin"  runat="server" />
                                   <asp:RequiredFieldValidator ID="nommg" ErrorMessage="Nom magasin is required"  ForeColor="Red"  ControlToValidate="txtnommg" runat="server"></asp:RequiredFieldValidator>
                            </div>
                             <div class="form-group">
                                <label for="contactusername">Structure</label>
                                 <asp:TextBox CssClass="form-control" ID="txtstrut" placeholder="Entrer Structure"  runat="server" />
                                   <asp:RequiredFieldValidator ID="Structure" ErrorMessage="Structure is required"  ForeColor="Red"  ControlToValidate="txtstrut" runat="server"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="contactusername">Type Structure</label>
                               <asp:TextBox CssClass="form-control" ID="txttype" placeholder="Entrer type Structure"  runat="server" />
                                   <asp:RequiredFieldValidator ID="typerq" ErrorMessage="type  is required"  ForeColor="Red"  ControlToValidate="txttype" runat="server"></asp:RequiredFieldValidator>
                            </div>
                             <div class="form-group">
                                <label for="contactusername">Nom_Responsable</label>
                                <asp:TextBox CssClass="form-control" ID="txtnomres" placeholder="Entrer Nom reseponsable"  runat="server" />
                             <asp:RequiredFieldValidator ID="nomr" ErrorMessage="Nom is required"  ForeColor="Red"  ControlToValidate="txtnomres" runat="server"></asp:RequiredFieldValidator>
                                   </div>
                            <div class="form-group">
                                <label for="contactemail">Email</label>
                                <asp:TextBox CssClass="form-control" ID="txtemail" placeholder="Entrer email"  TextMode="Email" runat="server" />
                            <asp:RequiredFieldValidator ID="emailrq" ErrorMessage="email is required"  ForeColor="Red"  ControlToValidate="txtemail" runat="server"></asp:RequiredFieldValidator>
                                   </div>
                             <div class="form-group">
                                <label for="Password">Password</label>
                               <asp:TextBox CssClass="form-control" ID="txtpass" placeholder="Entrer Password"  runat="server"  TextMode="Password"/>
                                    <asp:RequiredFieldValidator ID="passrq" ErrorMessage="Password is required"  ForeColor="Red"  ControlToValidate="txtpass" runat="server"></asp:RequiredFieldValidator>

                            </div>
                            <asp:Button ID="Btn_Evenement"  CssClass="btn btn-primary btn-block" runat="server" Text="Save" OnClick="btn_click" />
                           
                        </form>
                    </fieldset>
                    <!--  //contact form grid ends here -->
                </div>
                <div class="offset-lg-2"></div>
            </div>
        </div>
    </section>
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
</body>
</html>
