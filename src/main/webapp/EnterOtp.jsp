<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<style type="text/css">
body {
	    background-image: linear-gradient(rgba(0, 50, 50, 0.8),rgba(0, 38, 50, 0.8)),url(images.jpeg);
	}
.form-gap {
    padding-top: 70px;
}
.title{
       font-size:3em;
       font-style:system-ui;
       color:blue;
       text-shadow: 2px 2px 4px #0489fb;    
}

</style>
</head>

<body>
	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="text-center">
							<h1 class="title">@CarWale</h1>
							<h3>
								<i class="fa fa-car fa-4x" aria-hidden="true"></i>
							</h3>
							<h2 class="text-center">Enter OTP</h2>
									<%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
		  			}
		  
		  %>
	
							<div class="panel-body">

								<form id="register-form" action="ValidatesOtpServlet" role="form" autocomplete="off"
									class="form" method="post">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope color-blue"></i></span> <input
												id="opt" name="otp" placeholder="Enter OTP"
												class="form-control" type="text" required="required">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit"
											class="btn btn-lg btn-primary btn-block"
											value="Reset Password" type="submit">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>