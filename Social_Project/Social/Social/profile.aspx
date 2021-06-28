<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Social.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
				<form>
					<div class="row">
                        <div class="col-lg-3">

                        </div>
                        <div class="col-lg-6">
							<div class="donate_box mb-30">
								<div class="form-check">

									<div class="form-check-label d-flex justify-content-between" for="ten_doller">
                                      										<div class="label_text">
											 Name
										</div>
                                         <asp:textbox ID="name" readonly="true" Text="" runat="server"></asp:textbox><br />
       
                                        <!--<div class="label_text">
											$10.00
										</div-->

									</div>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <div class="label_text">
											Address
										</div>
                                       <asp:textbox ID="address" AutoPostBack="true" runat="server" Text=""></asp:textbox><br />

   
									</label>
								</div>
								<div class="form-check">
											<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                       
										<div class="label_text">
											Phone:
										</div>
                                                
       <asp:textbox ID="phone" TextMode="Number" Text="" AutoPostBack="true" runat="server"></asp:textbox><br />

        
									</label>
								</div>
							
								<div class="form-check">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        
										<div class="label_text">
											Email
										</div>
                                        <asp:textbox ID="Email" readonly="true" Text="" runat="server"></asp:textbox>

        
									</label>
								</div>
							
							</div >
						
							<div class="donate_box">
                               <center> <asp:button runat="server" CssClass="main_btn w-100"   text="Update" OnClick="Unnamed1_Click" /></center>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
        <section class="contact_area p_120">
        <div class="container">
            <div id="mapBox" class="mapBox">
            </div>
            <div class="row">
    <div class="col-3">

    </div>
    <div class="col-6">
        </div></div></div></section>

    
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
