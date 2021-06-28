<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Social.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style_login.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main1" style="background-image: url('../img/body-bg.jpg')">
        <br/><br/>
        <div class="container1">
            <div class="appointment-form" id="appointment-form">
                <h2>education appointment form</h2>
                <div class="form-group-1">
                    <asp:TextBox ID="TextBox1" TextMode="Email"  Placeholder="Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox1" runat="server" ErrorMessage="can't Empty"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate="TextBox1" runat="server" ErrorMessage="Not valid Eamil" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox2" TextMode="Password" Placeholder="Password"    runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="can't Empty" ValidationGroup="login_validation"></asp:RequiredFieldValidator>
                <div class="form-submit">
                    <!--<input type="submit" name="submit" id="submit" class="submit" value="Request an appointment" />-->
                    <asp:Button ID="Button1" class="submit" Text="submit" OnClick="Button1_Click"
                         runat="server"  ValidationGroup="login_validation" />
                </div>
            </div>
        </div>

    </div>

    <script src="vendors/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    </div>
</asp:Content>
