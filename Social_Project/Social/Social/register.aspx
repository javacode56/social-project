<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="register.aspx.cs" Inherits="Social.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style_login.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <div class="main1" style="background-image:url('../img/body-bg.jpg')" >
            <br/><br/>

        <div class="container1">
            <div  class="appointment-form" id="appointment-form">
                <h2>education appointment form</h2>
                <div class="form-group-1">
                    <asp:TextBox ID="name" placeholder="Enter your name" MaxLength="30"  runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="name" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
        
                    <asp:TextBox ID="email" TextMode="email" placeholder="Enter your Email"  MaxLength="50" runat="server"></asp:TextBox><br />
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="email" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
                    
                    <asp:TextBox ID="phone" TextMode="Number" MaxLength="10"  placeholder="Enter your Phone"  runat="server"></asp:TextBox><br />
                    
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="phone" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
                  
                    <asp:TextBox ID="Address"  placeholder="Enter your Address"  runat="server"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Address" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
                     <asp:TextBox ID="pass" TextMode="password" placeholder="Enter your password"  runat="server"></asp:TextBox><br />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="pass" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="re_pass" TextMode="password" placeholder="RE-Enter your password"  runat="server"></asp:TextBox><br />
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="re_pass" ForeColor="Red" runat="server" ValidationGroup="Registration_validation" ErrorMessage="Can't Empty"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="re_pass_com_val" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="pass" ControlToValidate="re_pass" Display="Dynamic" ForeColor="#CC0000" SetFocusOnError="True" ValidationGroup="Registration_validation">Password MisMatch</asp:CompareValidator>
                    <div class="select-list">

                        <asp:DropDownList ID="role" runat="server">
                            <asp:ListItem Value="NU">Normal User</asp:ListItem>
                            <asp:ListItem Value="OR">Organisation</asp:ListItem>
                            <asp:ListItem Value="NG">NGO</asp:ListItem>
                      
                        </asp:DropDownList>
                     
                            
                        
                    </div>
                </div>
                <div class="form-submit">
                  <div class="form-submit">
                      <asp:Button ID="Login_button" ValidationGroup="Registration_validation" OnClick="Login_button_Click"  class="submit" Text="Register" runat="server" />
                    
                </div>
                </div>
              
            </div>
        </div>

    </div><!--
    <script src="vendors/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>-->
</asp:Content>
