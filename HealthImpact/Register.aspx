<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HealthImpact.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

           <link rel="canonical" href="/Register" />

    <meta name="description" content="Register now and create a account" />
     <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>  
    <script type="text/javascript">  
    var your_site_key = '<%= ConfigurationManager.AppSettings["CaptchaSiteKey"]%>';  
    var renderRecaptcha = function () {  
        grecaptcha.render('ReCaptchContainer', {  
            'sitekey': your_site_key,  
            'callback': reCaptchaCallback,  
            theme: 'light', //light or dark    
            //type: 'image',// image or audio    
            size: 'normal'//normal or compact    
        });  
    };  
  
    var reCaptchaCallback = function (response) {  
        if (response !== '') {  
            jQuery('#lblMessage').css('color', 'green').html('Success');  
        }  
    };  
  
    jQuery('button[type="button"]').click(function(e) {  
        var message = 'Please checck the checkbox';  
        if (typeof (grecaptcha) != 'undefined') {  
            var response = grecaptcha.getResponse();  
            (response.length === 0) ? (message = 'Captcha verification failed') : (message = 'Success!');  
        }  
        jQuery('#lblMessage').html(message);  
        jQuery('#lblMessage').css('color', (message.toLowerCase() == 'success!') ? "green" : "red");  
    });  
  
    </script>  
   <%-- <h2><%: Title %>.</h2>--%>
        <!-- BEGIN PAGE TITLE/BREADCRUMB -->
		<div class="parallax colored-bg pattern-bg" data-stellar-background-ratio="0.5">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h1 class="page-title">Register With Us</h1>
						
						<ul class="breadcrumb">
							<li><a href="\default.aspx">Home </a></li>
							<li><a href="Register">Register With Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE TITLE/BREADCRUMB -->
    <!-- BEGIN CONTENT WRAPPER -->
		<div class="content">
			<div class="container">
				<div class="row">
				
					<!-- BEGIN MAIN CONTENT -->
					<div class="main col-sm-12">
    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtFirstname" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="txtFirstname" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstname"
                    CssClass="text-danger" ErrorMessage="The first name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSurname" CssClass="col-md-2 control-label">Surname</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="txtSurname" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSurname"
                    CssClass="text-danger" ErrorMessage="The surname field is required." />
            </div>
        </div>
         <div class="form-group">
             <asp:Label runat="server" AssociatedControlID="txtCellphone" CssClass="col-md-2 control-label">Cellphone</asp:Label>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCellphone"
                    CssClass="text-danger" ErrorMessage="The Cellphone field is required." />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCellphone" ErrorMessage="Please enter valid Cell number. 10 digits no spaces" CssClass="text-danger" ValidationExpression="^([0]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
             <div class="col-md-10 col-lg-6">
                 <asp:TextBox runat="server" ID="txtCellphone" CssClass="form-control" TextMode="SingleLine" />
                 </div>
         </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            
            <div class="col-md-10 col-lg-6">(Please ensure you use a special character (*!# etc.), a number and a capital letter)<br />
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10 col-lg-6">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <div id="ReCaptchContainer"></div>  
                   <label style="font-weight:100" id="lblMessage" runat="server" clientidmode="static"></label>  
                </div>
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="RegisterDone" OnClick="CreateUser_Click" Text="Register" class="btn btn-fullcolor" />

            </div>
        </div>
    </div>

                        </div>
                    </div>
                </div>
            </div>
</asp:Content>

