﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profils.aspx.cs" Inherits="Prod_ch.profils" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Profil </title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta http-equiv="cache-control" content="no-store" />
<meta http-equiv="cache-control" content="must-revalidate" />
<meta http-equiv="cache-control" content="proxy-revalidate" />
    <link href="bootstrap/fixe.css" rel="stylesheet" />

</head>
<body>
     <div class="wrapper">
        <div class="sidebar" data-image="../assets/img/sidebar-5.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="Home.aspx" class="simple-text">
                        <img  src="Content/images/LOGO.png" width="200">
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item ">
                        <a class="nav-link" href="mes_annonce.aspx">
                            <i class="nc-icon nc-chart-pie-35"></i>
                            <p>Mes annonces</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="ajouter_annonce.aspx">
                            <i class="nc-icon nc-notes"></i>
                            <p>Ajouter Annonce</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="ajoute_produit.aspx">
                            <i class="nc-icon nc-notes"></i>
                            <p>Ajouter Produit</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="profils.aspx">
                            <i class="nc-icon nc-circle-09"></i>
                            <p>Profils</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="message.aspx?id=0">
                            <i class="nc-icon nc-paper-2"></i>
                            <p>Message</p>
                        </a>
                    </li>
                   
                    <li>
                        <a class="nav-link" href="Notification.aspx">
                            <i class="nc-icon nc-bell-55"></i>
                            <p>Notifications</p>
                        </a>
                    </li>
                  
                  
                </ul>
            </div>
        </div>



        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " >
                <div class=" container-fluid  ">
                    <a class="navbar-brand" href="#pablo"> tableau de bord  </a>
                   
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                    <i class="nc-icon nc-palette"></i>
                                    <span class="d-lg-none">Tableau du bord</span>
                                </a>
                            </li>

                           <%-- <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;Search</span>
                                    &nbsp;<input type="text" class="form-control" />
                                </a>
                            </li>--%>
                        </ul>
                        <ul class="navbar-nav pull-right">
                          <ul class="nav navbar-nav navbar-right">
           <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Notification (<b>2</b>)</a>
          <ul class="dropdown-menu notify-drop">
            <div class="notify-drop-title">
            	<div class="row">
            		<div class="col-md-6 col-sm-6 col-xs-6">Notification (<b>2</b>)</div>
            		<div class="col-md-6 col-sm-6 col-xs-6 text-right"><a href="" class="rIcon allRead" data-tooltip="tooltip" data-placement="bottom" title="tümü okundu."><i class="fa fa-dot-circle-o"></i></a></div>
            	</div>
            </div>
            <!-- end notify title -->
            <!-- notify content -->
            <div class="drop-content">
            	<li>
            		<div class="col-md-3 col-sm-3 col-xs-3"><div class="notify-img"><img src="http://placehold.it/45x45" alt=""></div></div>
            		<div class="col-md-9 col-sm-9 col-xs-9 pd-l0"><p>Labo N &nbsp; Desingtion N &nbsp; Qt2(ml/mg)</p> <span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span> <a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>
            		
            		<hr>
            		<a class='btn btn-success btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> </a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span> </a>
            		</div>
            	</li>
            	<li>
            		<div class="col-md-3 col-sm-3 col-xs-3"><div class="notify-img"><img src="http://placehold.it/45x45" alt=""></div></div>
            		<div class="col-md-9 col-sm-9 col-xs-9 pd-l0"><p>Labo N &nbsp; Desingtion N &nbsp; Qt2(ml/mg)</p> <span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span> <a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>
            		
            		<hr>
            		<a class='btn btn-success btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> </a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span> </a>
            		</div>
            	</li>
            	<li>
            		<div class="col-md-3 col-sm-3 col-xs-3"><div class="notify-img"><img src="http://placehold.it/45x45" alt=""></div></div>
            		<div class="col-md-9 col-sm-9 col-xs-9 pd-l0"><p>Labo N &nbsp; Desingtion N &nbsp; Qt2(ml/mg)</p> <span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span> <a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>
            		
            		<hr>
            		<a class='btn btn-success btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> </a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span> </a>
            		</div>
            	</li>
            	<li>
            		<div class="col-md-3 col-sm-3 col-xs-3"><div class="notify-img"><img src="http://placehold.it/45x45" alt=""></div></div>
            		<div class="col-md-9 col-sm-9 col-xs-9 pd-l0"><p>Labo N &nbsp; Desingtion N &nbsp; Qt2(ml/mg)</p> <span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span> <a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>
            		
            		<hr>
            		<a class='btn btn-success btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> </a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span> </a>
            		</div>
            	</li>
            	<li>
            		<div class="col-md-3 col-sm-3 col-xs-3"><div class="notify-img"><img src="http://placehold.it/45x45" alt=""></div></div>
            		<div class="col-md-9 col-sm-9 col-xs-9 pd-l0"><p>Labo N &nbsp; Desingtion N &nbsp; Qt2(ml/mg)</p> <span><i class="glyphicon glyphicon-calendar"></i> 2 days, 8 hours </span> <a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>
            		
            		<hr>
            		<a class='btn btn-success btn-xs' href="#"><span class="glyphicon glyphicon-ok"></span> </a> <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span> </a>
            		</div>
            	</li>
            </div>
            <div class="notify-drop-footer text-center">
            	<a href="#"><i class="fa fa-eye"></i> Afficher tous</a>
            </div>
          </ul>
        </li>
                            <li class="nav-item pull-right">
                             <a  onclick=" LinkButton1_Click" class="nav-link" ><span class="glyphicon glyphicon-log-out" id="xxx" runat="server"></span>Log out </a>
                        
                             <%--    <asp:Button  runat="server" ID="btnlogout" OnClick="LinkButton1_Click"  Text="logout"/>--%>
                               
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Edit Profile</h4>
                                </div>
                                <div class="card-body">
                                     <div class="alert alert-info" id="mg" runat="server">
                      <i class="glyphicon glyphicon-log-in"></i> &nbsp;le mise a jour a été effectué avec succee
                             </div>
                                    <div class="alert alert-danger" runat="server" id="err">
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Votre acien mot passe incorrect
                     </div><div class="alert alert-danger" runat="server" id="err2">
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; Tout les champs sont obligatoire
                     </div>
                                    <form runat="server" id="form" role="form">
                                        <div class="row">
                                            <div class="col-md-5 pr-1">
                                                <div class="form-group">
                                                    <label>Nom magasin</label>
                                                    <asp:TextBox  ID="txtnommg"  CssClass="form-control" runat="server" placeholder="Nom magasin" />

                                             
                                                </div>
                                            </div>
                                            <div class="col-md-3 px-1">
                                                <div class="form-group">
                                                    <label>Nom Responsable</label>
                                                    
                                                    <asp:TextBox  ID="txtnomre"  CssClass="form-control" runat="server" placeholder="Nom Responsable" />
                                                </div>
                                            </div>
                                            <div class="col-md-4 pl-1">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                            
                                                    <asp:TextBox  ID="txtemail" TextMode="Email"  CssClass="form-control" runat="server" placeholder="Email" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 pr-1">
                                                <div class="form-group">
                                                    <label>Password acien</label>
                                                    <asp:TextBox  ID="txtpassword" TextMode="Password"  CssClass="form-control" runat="server" placeholder="Acien Password" />
                                                   
                                                </div>
                                            </div>
                                            <div class="col-md-6 pl-1">
                                                <div class="form-group">
                                                    <label>Nouveau password</label>
                                                 <asp:TextBox  ID="txtpassn" TextMode="Password"  CssClass="form-control" runat="server" placeholder=" New Password" />
                                            </div></div>
                                        </div>
                                  
                                     <asp:Button runat="server" CssClass="btn btn-info btn-fill pull-right"  OnClick="bt_Click" Text="Update Profile"  ID="bt"/>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-user">
                               
                                <div class="card-body">
                                    <div class="author">
                                        <a href="#">
                                            <img class="avatar border-gray" src="../assets/img/faces/téléchargement.png" alt="...">
                                            <h5 class="title"> </h5>
                                        </a>
                                        <p class="description">
                                          <%:txtnomre.Text %>
                                        </p>
                                    </div>
                                   
                                </div>
                                <hr>
                                <button type="button" class="btn btn-info pull-right">upload picture</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           
           
        </div>
    </div>
</body>
     <script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.1" type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
</html>
