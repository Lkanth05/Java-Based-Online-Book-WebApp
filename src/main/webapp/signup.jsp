<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Signup Page</title>
<%@include file="navbar.jsp" %>

<script type="text/javascript">
    function checkpassword(){
    	if(document.signup.password.value!=document.signup.confirmpassword.value){
    		alert('Password and Confirm Password field does not match');
    		document.signup.confirmpassword.focus();
    		return false;
    	}
    	return true;
    }
  </script>
  
</head>

<body>

    <%
        String msg=request.getParameter("msg");
		if ("validMsg".equals(msg)) {
	%>
	<script>
		alert("Registration Successfully...");
		window.location.assign("login.jsp");
	</script>
	<%
		}
	%>
	<div class="hero-wrap hero-bread" style="background-image: url('images/grocery2.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>User Signup</span></p>
            <h1 class="mb-0 bread">User Signup</h1>
          </div>
        </div>
      </div>
    </div>
	<div class="container my-5">
	 <div class="card-body">
		<h2 style="margin-top: 20px" align="center">Registration Form</h2>
		<hr>

		<div class="container-fluid" style="width: 70%; margin-top: 5%">
			<form method="post" action="signup" name="signup" onsubmit ="return checkpassword()" enctype="multipart/form-data">
				
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">First Name</label> <input type="text"
							class="form-control" placeholder="Enter your First Name" name="firstname"
							id="inputEmail4"  required>
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Last Name</label> <input type="text"
							class="form-control" name="lastname" placeholder="Enter Last Name"
							id="inputPassword4"   required>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="pwd">Password</label> <input
							type="password" class="form-control" name="password"
							id="pwd" placeholder="Enter Password"  required>
					</div>
					<div class="form-group col-md-6">
						<label for="pwd">Confirm Password</label> <input
							type="password" class="form-control" name="password"
							id="pwd" placeholder="Enter Password Again" required>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Email</label> <input type="email"
							class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email"
							placeholder="Enter Email" required>
					</div>

					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">Contact</label> 
						<input type="number" class="form-control"  name="mobile"  placeholder="enter your mobile number" value="number" maxlength="10" size="10" title="eneter 10 digit mobile number"required>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">City</label> <input type="text"
							class="form-control" id="exampleInputPassword1"
							placeholder="Enter City" name="city" required>
					</div>

					<div class="form-group col-md-6">
						<label for="exampleInputPassword1">User PIC</label> <input
							type="file" class="form-control" id="exampleInputPassword1"
							name="img" value="choose file" required>
					</div>
				</div>
				<div class="form-row">

					<div class="form-group col-md-12">
						<label for="exampleInputPassword1">Full Address</label> <textarea class="form-control" id="exampleInputPassword1"
							placeholder="Enter Address Detail" name="address" required></textarea>
					</div>					
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
				<button type="reset" class="btn btn-primary">clear</button>
			</form>
		</div>
	</div>
	</div>
	
<%@include file="footer.jsp" %>
</body>
</html>