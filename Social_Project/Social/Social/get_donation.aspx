<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="get_donation.aspx.cs" Inherits="Social.get_donation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Donatoion</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--================Header Menu Area =================-->

	<!--================ Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="overlay"></div>
			<div class="container">
				<div class="banner_content text-center">
					<h2>Make Donation</h2>
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="donation.html">Donation</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Banner Area =================-->

	<!--================ Start Make Donation Area =================-->
	<section class="make_donation section_gap">
		<div class="container">
			<div class="row justify-content-start section-title-wrap">
				<div class="col-lg-12">
					<h1>Make a Donation Today</h1>
					<p>
						Las Vegas has more than 100,000 hotel rooms to choose from. There is something for every budget, and enough.
					</p>
				</div>
			</div>

			<div class="donate_now_wrapper">
		
					<div class="row">
                        
                        <div class="col-lg-12">
                             
        <%if (Session["user"] != null)
            {%>
                            <div class="row">
                            <asp:Label runat="server" id="label1" Text=""> </asp:Label>
           
                            <asp:Listview ID="items_data" onItemCommand="items_data_ItemCommand" OnItemDeleting="items_data_ItemDeleting"  DataKeyNames="item_id" runat="server">
                                <ItemTemplate>

                                  <div class="col-lg-3">
                                                                        <img alt="" src="<%#Eval("image") %>"  width="100px" height="100px"><br/>
                                                                      <b>  <asp:Label ID="name"  runat="server"  Text='<%#Eval("item_name")%>'></asp:Label></b><br/>
                                                                        

                                    


                                          <asp:Button ID="Select" runat="server" CommandArgument='<%#Eval("item_id")%>' Text="I want This" CommandName="Delete" CssClass="btn btn-success"></asp:Button>


                                                               
                                    </div>

                            </ItemTemplate>



                            </asp:Listview>
                            </div>
                            
                            <%}
                                           
                                else
                                {%>
							<%} %>
						</div>
					</div>
	
			</div>
		</div>
	</section>
	<!--================ End Make Donation Area =================-->

	<!--================ Start Footer Area  =================
	<!--================ End Footer Area  =================-->



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- <script src="vendors/lightbox/simpleLightbox.min.js"></script> -->
	<script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<!-- <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script> -->
	<script src="vendors/isotope/isotope-min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<!-- <script src="vendors/counter-up/jquery.waypoints.min.js"></script> -->
	<!-- <script src="vendors/flipclock/timer.js"></script> -->
	<!-- <script src="vendors/counter-up/jquery.counterup.js"></script> -->
	<script src="js/mail-script.js"></script>
	<script src="js/custom.js"></script>

</asp:Content>
