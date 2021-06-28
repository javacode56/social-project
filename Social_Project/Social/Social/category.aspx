<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Social.category" %>
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



    <style type="text/css">
    .rounded_corners
    {
        border: 1px solid #A1DCF2;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        overflow: hidden;
    }
    .rounded_corners td, .rounded_corners th
    {
        border: 1px solid #A1DCF2;
        font-family: Arial;
        font-size: 10pt;
        text-align: center;
    }
    .rounded_corners table table td
    {
        border-style: none;
    }
</style>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                        
							</div>








                        <div class="col-lg-6">
                            <div class="rounded_corners" style="width: 300px">





                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false" DataKeyNames="cat_id"   Width="300" HeaderStyle-BackColor="#3AC0F2"
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White"
        RowStyle-ForeColor="#3A3A3A"  PageSize="10">
                                <Columns >
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Preservation Time">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("p_time") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            </div>
							<div class="donate_box mb-30">
                                <div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox CssClass="label_text" ID="cname" runat="server"></asp:TextBox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Fill This Field" ControlToValidate="cname" ForeColor="Red"></asp:RequiredFieldValidator>

										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Category Name
										</div>
									</label>
								</div>
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<div class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:DropDownList ID="did"  runat="server" >
                                             <asp:ListItem Text="One Day" Value="one"></asp:ListItem>
                                             <asp:ListItem Text="Two Day" Value="two"></asp:ListItem>
                                              <asp:ListItem Text="Unlimited" Value="un"></asp:ListItem>
    
                                        </asp:DropDownList>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Preservation Time
										</div>
									</div>
								</div>
                                
						</div>
                            <div class="donate_box">
                               <center>  <asp:Button ID="Button1" CssClass="main_btn w-100" OnClick="Button1_Click" runat="server" Text="Button"></asp:Button></center>
							</div>
					</div>
				</form>
			</div>
		</div>
	</section>
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
