﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ajouter_annonce.aspx.cs" Inherits="Prod_ch.ajouter_annonce" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tableau du bord </title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
<%--    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

<%--                            <li class="nav-item">
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
            	<a href=""><i class="fa fa-eye"></i> Afficher tous</a>
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
              <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        
                        
<div class="container  align-content-center">

<div class="row" style="margin-top:100px">
    
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3 " >
		<form role="form"  runat="server" id="form"    >
			<fieldset>
				<h2>Ajouter Annonce</h2>

           <hr class="colorgraph" />
				
            <br />
                 <div class="alert  alert-success" id="mg" runat="server">
                      <i class="glyphicon glyphicon-log-in"></i> &nbsp; insertion bien effectue
                             </div>
                             <div class="alert alert-danger" runat="server" id="err">
                        <i class="glyphicon glyphicon-warning-sign"></i> &nbsp; erreur dans l insertion
                     </div>
                <div class="form-group">
                  
                      <asp:DropDownList runat="server" ID="Nom_p" CssClass="form-control"   >
                  <asp:ListItem Enabled="true" Text="Nom produit"  ></asp:ListItem>
           
              </asp:DropDownList>
.
				</div>
				<div class="form-group">
                     <asp:DropDownList runat="server" ID="typeannonce"  CssClass="form-control"  OnSelectedIndexChanged="typeannonce_SelectedIndexChanged" AutoPostBack="True" >
                  <asp:ListItem Enabled="true" Text="Type_annonce"  ></asp:ListItem>
                  <asp:ListItem Text="Offre" ></asp:ListItem>
<asp:ListItem Text="Demande" ></asp:ListItem>
              </asp:DropDownList>
				</div>
				<div class="form-group">
                    <asp:TextBox runat="server" ID="quantite" placeholder="Quantité" CssClass="form-control input-lg"></asp:TextBox>
                  
				</div>
				<div class="form-group">
                  <asp:TextBox TextMode="Date" ID="datet" CssClass="form-control input-lg"  runat="server"></asp:TextBox>
                 

				</div>
				<div class="form-group">
                     <asp:DropDownList runat="server" ID="typetr"  CssClass="form-control"  >
                  <asp:ListItem Enabled="true" Text="Type_Transaction"  ></asp:ListItem>
                  <asp:ListItem Text="Donation" ></asp:ListItem>
                          <asp:ListItem Text="avec échange" ></asp:ListItem>

              </asp:DropDownList>
				</div>
                <div class="form-group" >
                     <asp:DropDownList runat="server" ID="typetr2"  CssClass="form-control" >
                  <asp:ListItem Enabled="true" Text="Type_Transaction" ></asp:ListItem>
                  <asp:ListItem Text="Avec echange" ></asp:ListItem>
                          <asp:ListItem Text="Emprunt" ></asp:ListItem>
                         <asp:ListItem Text="Demande" ></asp:ListItem>

              </asp:DropDownList>
				</div>
                  <div class="form-group">
                  <asp:TextBox TextMode="MultiLine"  runat="server" ID="com" CssClass="form-control" Rows="5" Columns="73" placeholder="Commentaire" ></asp:TextBox>   
            

                  </div>
				<div class="row">
					
					<asp:Button runat="server" Text="Ajouter" OnClick="Unnamed_Click" CssClass="btn btn-lg btn-primary btn-block" />
						
					
				</div>
			</fieldset>
		</form>
        
</div>
    </div>
</div>
		        
		      
    
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            
                        </div>
                        <div class="col-md-6">
                            
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

<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.1" type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
</html>
