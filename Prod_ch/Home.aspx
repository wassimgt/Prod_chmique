<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Prod_ch.Home1" %>

<!DOCTYPE html>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="Prod_ch.CRUD" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Tableau du bord </title>
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
                        <img src="Content/images/LOGO.png" width="200">
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
            <nav class="navbar navbar-expand-lg ">
                <div class=" container-fluid  ">
                    <a class="navbar-brand" href="#pablo">tableau de bord  </a>

                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="#" class="nav-link" data-toggle="dropdown">
                                    <i class="nc-icon nc-palette"></i>
                                    <span class="d-lg-none">Tableau du bord</span>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a href="#" class="nav-link">
                                    <i class="nc-icon nc-zoom-split"></i>
                                    <span class="d-lg-block">&nbsp;Search</span>
                                    &nbsp;<input type="text" class="form-control" />
                                </a>
                            </li>
                        </ul>
                        <ul class="navbar-nav pull-right">
                        </ul>
                        <form runat="server" method="post">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Notification (<span class="badge badge-notify count label-danger">2</span>)</a>
                                    <ul class="dropdown-menu notify-drop">
                                        <div class="notify-drop-title">
                                            <div class="row">
                                                <div class="col-md-6 col-sm-6 col-xs-6 ">Notification (<b>2</b>)</div>
                                                <div class="col-md-6 col-sm-6 col-xs-6 text-right"><a href="#" class="rIcon allRead" data-tooltip="tooltip" data-placement="bottom" title="tümü okundu."><i class="fa fa-dot-circle-o"></i></a></div>
                                            </div>
                                        </div>
                                        <!-- end notify title -->
                                        <!-- notify content -->
                                        <div class="drop-content">
                                            <%  int id = (int)Session["id"];
                                                DataTable tx = Prod_ch.CRUD.DAL.selectnot(id);
                                                foreach (DataRow tab in tx.Rows)
                                                {
                                                    string chx = Prod_ch.CRUD.DAL.selectNomMg1(Int32.Parse(tab[2].ToString()));
                                                    object dx = Prod_ch.CRUD.DAL.date(DateTime.Parse(tab[3].ToString()));

                                            %>
                                            <a href="message.aspx?id=<%:tab[1] %>&mg=<%:tab[0] %>">
                                                <li>
                                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                                        <div class="notify-img">
                                                            <img src="Content/images/images.jpg" alt="" width="40"></div>
                                                    </div>
                                                    <div class="col-md-9 col-sm-9 col-xs-9 pd-l0">
                                                        <p><%:chx  %> &nbsp;<br />
                                                            <%:tab[4] %> </p>
                                                        <span><i class="glyphicon glyphicon-calendar"></i><%:dx %> </span><a href="" class="rIcon"><i class="fa fa-dot-circle-o"></i></a>

                                                        <hr>




                                                        <a class='btn btn-success btn-xs' href="Notification.aspx?id=<%:tab[0] %>&tx=0&idem=<%:tab[1] %>"><span class="glyphicon glyphicon-ok"></span></a>

                                                        <a href="Notification.aspx?id=<%:tab[0] %>&tx=1" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon glyphicon-trash"></span></a>
                                                    </div>
                                                </li>
                                            </a>
                                            <%} %>
                                        </div>
                                        <div class="notify-drop-footer text-center">
                                            <a href="#"><i class="fa fa-eye"></i>Afficher tous</a>
                                        </div>
                                    </ul>
                                </li>
                                <li class="nav-item pull-right">


                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="nav-link" OnClick="logout">  <span class="glyphicon glyphicon-log-out"></span>Log out</asp:LinkButton>

                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="content">
                <div class="container-fluid">
                    <div class="row">

                        <div class="col-md-6">
                            <div class="card ">
                                <div class="card-header ">
                                    <h4 class="card-title"><b>Offre de Produit </b></h4>
                                    <hr />
                                    <!--xxxx -->
                                </div>
                                <div class="card-body ">
                                    <% 
                                        int id = (int)Session["id"];

                                        SqlConnection cnn = Connection.GetConnection();
                                        cnn.Open();
                                        string ch = "SELECT Date_ajout, Validite,TypeAnnonce, Nom, Label, CAS, Unite,Quantite,TypeTransaction,Commentaires,IdAuteur FROM Annonce,Produit,Magasin where Annonce.IdProduit=Produit.id and Annonce.IdAuteur=Magasin.id and  EtatAnnonce='active' and  TypeAnnonce='Offre'and IdAuteur!=" + id + " ORDER BY Date_ajout DESC";
                                        SqlCommand cmd = new SqlCommand(ch, cnn);

                                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                                        DataTable dt = new DataTable();
                                        da.Fill(dt);
                                        foreach (DataRow t in dt.Rows)
                                        { %>

                                    <div class="well">

                                        <div class="media">

                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="Content/images/images.jpg" width="50">
                                            </a>

                                            <div class="media-body">


                                                <p>Nom Magasin:<%: t[3] %> </p>
                                                <p>Nom produit:<b>  <%: t[4] %>  </b></p>
                                                <p>CAS : <%:t[5] %></p>
                                                <p>Quantité: <%:t[7] %> </p>
                                                <p><%: t[9] %></p>

                                                <a class="btn btn-success pull-right" href="message.aspx?id=<%:t[10] %>&mg=0">Demande</a>

                                                <%--               <div class="modal fade" id="my<%:t[10] %>" role="dialog" >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close pull-right" data-dismiss="modal"> &times;</button>
    
        </div>
        
        
        <div class="modal-body">
                
		<form role="form" >
			<fieldset>
				<h2> Ajouter une demande </h2>
                 <input type="text" value="" name="id"  class="form-control input-lg" >
				<hr class="colorgraph">
				<div class="form-group">
                    <input  name="Demander"  class="form-control input-lg" placeholder="Quantité Demander">
				</div>
                
                    <div class="form-group">
               <input type="radio" name="cc" value="1"> Avec Echange &nbsp;
                        <input type="radio" name="cc" value="0">Sans Echange<br>
                    </div >
                
                
                  <div class="form-group" id="champ1">
                    <input  name="Designation"  class="form-control input-lg" placeholder="Designation" >
				</div>
                
				<div class="form-group" id="champ2">
                    <input  name="Quantité"  class="form-control input-lg" placeholder="Quantité" >
				</div>
                
				<div class="form-group" id="champ4">
                    <input type="datetime" name="Date de validité"  class="form-control input-lg" placeholder="Date de validité" >
				</div>
				
               
					
					
			<input type="submit" class="btn btn-lg btn-primary btn-block"  value="ok">
					
				
			</fieldset>
		</form>
        
</div>
    </div>
</div>

     </div>--%>
                                                <ul class="list-inline fixe ">



                                                    <%

                                                        object d = Prod_ch.CRUD.DAL.date(DateTime.Parse(t[0].ToString()));

                                                    %>
                                                    <li class="f"><span><i class="glyphicon glyphicon-calendar"></i><%:d %></span></li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <%} %>
                                    <style>
                                        ul.fixe {
                                            position: relative;
                                            left: 0px;
                                            bottom: -15px;
                                        }
                                    </style>
                                </div>



                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="card ">
                                <div class="card-header ">
                                    <h4 class="card-title"><b>Demande de Produit</b></h4>
                                    <hr />
                                    <!--xxxx -->
                                </div>
                                <div class="card-body ">
                                    <% 

                                        SqlConnection cn = Connection.GetConnection();
                                        cn.Open();
                                        string ch1 =" SELECT Date_ajout, Validite,TypeAnnonce, Nom, Label, CAS, Unite,Quantite,TypeTransaction,Commentaires,IdAuteur FROM Annonce,Produit,Magasin where Annonce.IdProduit=Produit.id and Annonce.IdAuteur=Magasin.id and  EtatAnnonce='active' and  TypeAnnonce='Demande'and IdAuteur!=" + id + " ORDER BY Date_ajout DESC";
                                        SqlCommand cmd1 = new SqlCommand(ch1, cn);

                                        SqlDataAdapter dat = new SqlDataAdapter(cmd1);
                                        DataTable dtt = new DataTable();
                                        dat.Fill(dtt);
                                        foreach (DataRow t in dtt.Rows)
                                        { %>

                                    <div class="well">

                                        <div class="media">

                                            <a class="pull-left" href="#">
                                                <img class="media-object" src="Content/images/images.jpg" width="50">
                                            </a>

                                            <div class="media-body">


                                                <p>Nom Magasin:<%: t[3] %> </p>
                                                <p>Nom produit:<b>  <%: t[4] %>  </b></p>
                                                <p>CAS : <%:t[5] %></p>
                                                <p>Quantité: <%:t[7] %> </p>
                                                <p><%: t[9] %></p>
                                                <a class="btn btn-warning pull-right" href="message.aspx?id=<%:t[10] %>&mg=0">Demande</a>
                                                <ul class="list-inline fixe ">
                                                    <br />
                                                    <%
                                                        object d1 = Prod_ch.CRUD.DAL.date(DateTime.Parse(t[0].ToString()));



                                                    %>
                                                    <li class="f"><span><i class="glyphicon glyphicon-calendar"></i><%: d1%></span></li>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <%} %>
                                </div>
                            </div>

                        </div>
                        <%-- <div class="row">
                        <div class="col-md-6">
                            
                        </div>
                        <div class="col-md-6">
                            
                        </div>--%>
                    </div>
                </div>
            </div>

        </div>
    </div>

</body>

<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>

<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<!--  Chartist Plugin  -->

<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.1" type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script type="text/javascript">


    $(document).ready(function () {
        $('#btnModal').click(function () {
            var id = $(this).data("id");
            $('#myModal').find('input[name=id_produit_client]').val(id);
        });
    });
</script>
<script type="text/javascript">
    $(document).ready(function () {
        // Javascript method's body can be found in assets/js/demos.js


        demo.showNotification();

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {

        $('#champ1').hide();
        $('#champ2').hide();
        $('#champ4').hide();
        $('input[name="cc"]').change(function () { // lorsqu'on change de valeur dans la liste
            var valeur = $(this).val(); // valeur sélectionnée

            if (valeur != '') { // si non vide
                if (valeur == '1') { // si "parent"

                    $('#champ1').show();
                    $('#champ2').show();
                    $('#champ4').show();
                } else {

                    $('#champ4').hide();
                    $('#champ1').hide(); // on cache le champ par défaut
                    $('#champ2').hide();
                }
            }
        });


    });</script>
</html>
