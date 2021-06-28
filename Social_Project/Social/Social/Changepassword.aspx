<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Changepassword.aspx.cs" Inherits="Social.Changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    

    <div>
    Change password
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;</div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="please enter new password" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    Confirm password<br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="please reenter password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password not matched" ControlToCompare="TextBox1" ControlToValidate="TextBox2"></asp:CompareValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                            </div></div></div></div></section>
</asp:Content>
