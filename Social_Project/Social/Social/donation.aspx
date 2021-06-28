<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="donation.aspx.cs" Inherits="Social.donation" %>
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
				<form>
					<div class="row">
                        <div class="col-lg-3">

                        </div>
                        <div class="col-lg-6">
                             
        <%if (Session["user"] != null)
            {
                if (((List<string>)Session["user"])[1].ToString() == "AD")//for admin 
                {%>
                            <!-- ADMIN PANEL Raul CODE-->
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            
                            <%}
                            
       else if (((List<string>)Session["user"])[1].ToString() == "DE")//for DEO 
        {%>
                        
                             <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="SqlDataSource1" GridLines="Vertical" HeaderStyle-BackColor="Tomato">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="item_name" HeaderText="Item name" ReadOnly="true" SortExpression="item_name" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Item Image" ControlStyle-Height="100px" ControlStyle-Width="100px" ReadOnly="true" SortExpression="image" />
                <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                
               
                <asp:CommandField ControlStyle-ForeColor="Red" AccessibleHeaderText="Edit Data" ShowEditButton="True" />
            </Columns>
            
            
            
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            
            
            
        </asp:GridView>
                                
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:socialString %>" SelectCommand="SELECT * FROM [items]" UpdateCommand="update items set qty=@qty where item_id=@item_id"></asp:SqlDataSource>
                       

                            
                            <%}

                                    else if (((List<string>)Session["user"])[1].ToString() == "NU") { %>

                            	<div class="donate_box mb-30">
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<div class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:DropDownList ID="DropDownList1"  runat="server" DataTextField="name" DataValueField="cat_id"></asp:DropDownList>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Category Name
										</div>
									</div>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox CssClass="label_text" ID="TextBox4" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Item Name
										</div>
									</label>
								</div>
								<div class="form-check">
											<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:FileUpload ID="FileUpload2"  runat="server"  />
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Item Image
										</div>
									</label>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox ID="TextBox5" CssClass="label_text" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Quantity
										</div>
									</label>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox CssClass="label_text" ID="TextBox6" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Reason
										</div>
									</label>
								</div>
							</div accesskey>
						
							<div class="donate_box">
                               <center>  <asp:Button ID="Button1"  OnClick="donate_Click" runat="server" CssClass="main_btn w-100" Text="Donate Now" ValidationGroup="donate_validation" /></center>
							</div>
                            
                            
                            
                            <%}


                                }
                                else
                                {%>
							<div class="donate_box mb-30">
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<div class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:DropDownList ID="Category"  runat="server" DataTextField="name" DataValueField="cat_id"></asp:DropDownList>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Category Name
										</div>
									</div>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox CssClass="label_text" ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox2" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Item Name
										</div>
									</label>
								</div>
								<div class="form-check">
											<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:FileUpload ID="FileUpload1"  runat="server"  />
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Item Image
										</div>
									</label>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox ID="TextBox3" CssClass="label_text" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox3" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Quantity
										</div>
									</label>
								</div>
							
								<div class="form-check">
									<input type="radio" class="form-check-input" name="donation" id="ten_doller">
									<label class="form-check-label d-flex justify-content-between" for="ten_doller">
                                        <asp:TextBox CssClass="label_text" ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="donate_validation" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
										<!--<div class="label_text">
											$10.00
										</div-->
										<div class="label_text">
											Reason
										</div>
									</label>
								</div>
							</div accesskey>
						
							<div class="donate_box">
                               <center>  <asp:Button ID="donate"  OnClick="donate_Click" runat="server" CssClass="main_btn w-100" Text="Donate Now" ValidationGroup="donate_validation" /></center>
							</div><%} %>
						</div>
					</div>
				</form>
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
