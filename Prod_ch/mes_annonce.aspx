<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mes_annonce.aspx.cs" Inherits="Prod_ch.mes_annonce" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Import Namespace ="System.Data" %>
<%@ Import Namespace ="System.Data.SqlClient" %>
<%@ Import Namespace ="Prod_ch.CRUD" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mes annonces</title>
     <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
<%--    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />--%>
    <%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
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
    <form id="form1" runat="server">
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
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
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
            <br />
              <a href="ajouter_annonce.aspx" class="btn btn-warning"> Nouveau Annonce</a><br /><br />
                    <div class="row">
                        <div class="col-md-12">
                         
                            <em>
                            <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="id" CssClasses-Control="table table-hover table-sm">


<CssClasses Control="table table-hover table-sm"></CssClasses>


                                <SettingsPager Visible="False">
                                </SettingsPager>


                                <SettingsDataSecurity AllowDelete="True" AllowEdit="True" />
                                <Columns>
                                    <dx:BootstrapGridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" VisibleIndex="0">
                                    </dx:BootstrapGridViewCommandColumn>
                                    <dx:BootstrapGridViewTextColumn FieldName="Commentaires" VisibleIndex="1">
                                    </dx:BootstrapGridViewTextColumn>
                                    <dx:BootstrapGridViewTextColumn FieldName="Quantite" VisibleIndex="4">
                                    </dx:BootstrapGridViewTextColumn>
                                    <dx:BootstrapGridViewTextColumn FieldName="TypeTransaction" VisibleIndex="5">
                                    </dx:BootstrapGridViewTextColumn>
                                    <dx:BootstrapGridViewDateColumn FieldName="DateExpirationProduit" VisibleIndex="6">
                                    </dx:BootstrapGridViewDateColumn>
                                    <dx:BootstrapGridViewDateColumn FieldName="Date_ajout" VisibleIndex="7" PropertiesDateEdit-AllowMouseWheel="False" PropertiesDateEdit-AllowNull="False" PropertiesDateEdit-AllowUserInput="False" PropertiesDateEdit-EncodeHtml="False">
                                        <PropertiesDateEdit AllowMouseWheel="False" AllowNull="False" AllowUserInput="False" EncodeHtml="False">
                                        </PropertiesDateEdit>
                                    </dx:BootstrapGridViewDateColumn> 
                                    <dx:BootstrapGridViewTextColumn FieldName="id" ReadOnly="True" VisibleIndex="8" Visible="False">
                                        <SettingsEditForm Visible="False" />
                                    </dx:BootstrapGridViewTextColumn>
                                    <dx:BootstrapGridViewComboBoxColumn FieldName="EtatAnnonce" VisibleIndex="2">
                                        <PropertiesComboBox>
                                            <Items>
                                                <dx:BootstrapListEditItem Text="active" Value="active" />
                                                <dx:BootstrapListEditItem Text="non active" Value="non active" />
                                                <dx:BootstrapListEditItem Text="expiré" Value="expiré" />
                                            </Items>
                                            <Fields>
                                                <dx:BootstrapListBoxField FieldName="xxxxx" />
                                            </Fields>
                                        </PropertiesComboBox>
                                    </dx:BootstrapGridViewComboBoxColumn>
                                    <dx:BootstrapGridViewComboBoxColumn FieldName="TypeAnnonce" VisibleIndex="3" >
                                        <PropertiesComboBox>
                                            <Items>
                                                <dx:BootstrapListEditItem Text="Offre" Value="Offre"  />
                                                <dx:BootstrapListEditItem Text="Demande" Value="Demande"  Selected="true"/>
                                            </Items>
                                        </PropertiesComboBox>
                                    </dx:BootstrapGridViewComboBoxColumn>
                                </Columns>
                                <SettingsSearchPanel Visible="True" />
                            </dx:BootstrapGridView>
                            </em>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Produit_ChimiqueConnectionString %>" DeleteCommand="DELETE FROM [Annonce] WHERE [id] = @original_id" InsertCommand="INSERT INTO [Annonce] ([Commentaires], [EtatAnnonce], [TypeAnnonce], [Quantite], [TypeTransaction], [DateExpirationProduit], [Date_ajout]) VALUES (@Commentaires, @EtatAnnonce, @TypeAnnonce, @Quantite, @TypeTransaction, @DateExpirationProduit, getutcdate())" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Commentaires], [EtatAnnonce], [TypeAnnonce], [Quantite], [TypeTransaction], [DateExpirationProduit], [Date_ajout], [id] FROM [Annonce] WHERE ([IdAuteur] = @IdAuteur) ORDER BY [Date_ajout]" UpdateCommand="UPDATE [Annonce] SET [Commentaires] = @Commentaires, [EtatAnnonce] = @EtatAnnonce, [TypeAnnonce] = @TypeAnnonce, [Quantite] = @Quantite, [TypeTransaction] = @TypeTransaction, [DateExpirationProduit] = @DateExpirationProduit, [Date_ajout] =getutcdate() WHERE [id] = @original_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Commentaires" Type="String" />
                                    <asp:Parameter Name="EtatAnnonce" Type="String" />
                                    <asp:Parameter Name="TypeAnnonce" Type="String" />
                                    <asp:Parameter Name="Quantite" Type="Int32" />
                                    <asp:Parameter Name="TypeTransaction" Type="String" />
                                    <asp:Parameter DbType="Date" Name="DateExpirationProduit" />
                                    <%--<asp:Parameter Name="Date_ajout" Type="DateTime" />--%>
                                   <%-- <asp:Parameter Name="Date_ajout" Type="DateTime" />--%>
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="IdAuteur" SessionField="id" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Commentaires" Type="String" />
                                    <asp:Parameter Name="EtatAnnonce" Type="String" />
                                    <asp:Parameter Name="TypeAnnonce" Type="String" />
                                    <asp:Parameter Name="Quantite" Type="Int32" />
                                    <asp:Parameter Name="TypeTransaction" Type="String" />
                                    <asp:Parameter DbType="Date" Name="DateExpirationProduit" />
                                   <%-- <asp:Parameter Name="Date_ajout" Type="DateTime" />--%>
                                    <%--<asp:Parameter Name="Date_ajout" Type="DateTime" />--%>
                                    <asp:Parameter Name="original_id" Type="Int32" />
                                    
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                       
                    </div>
                </div>
            </div>
          
       
   
    </form>
          
       
   
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
