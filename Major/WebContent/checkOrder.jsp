<%@include file="db.jsp" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
    integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
    crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
  </script>
  <link rel="stylesheet" type="text/css" href="userhome.css">
  <style type="text/css">
  #corder{
	
	opacity:70%;
	height: 470px;
	margin: 15% auto auto auto;
	position: absolute;
	align-content: center;
	width: 600px;
	left:30%;
	background-color: rgba(0,0,0,0.5) !important;
	text-align: center;
}</style>
  <title>Login</title>
</head>

<body>
  <nav class="navbar navbar-expand-lg fixed-top">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">DigiMandi</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" a data-bs-toggle="tab" aria-current="page" role="tab" href="#log">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
              aria-expanded="false">
              Dropdown
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a data-bs-toggle="tab" class="dropdown-item" role="tab" href="#log" aria-controls="login"
                  aria-selected="true">Login</a></li>
              <li><a data-bs-toggle="tab" class="dropdown-item" role="tab" href="#reg" aria-controls="register"
                  aria-selected="false">register</a>
              </li>
              <li>
                <hr class="dropdown-divider">
              </li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>
  <div style="" id="log-out">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item">
        <a class="nav-link" id="email-tab" aria-controls="login" aria-selected="true"></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="logOut-tab" href="#reg" role="tab" aria-controls="register"
          aria-selected="false">LogOut</a>
      </li>
    </ul>
  </div>
  <%
String email=(String)session.getAttribute("email");  
String pname= request.getParameter("pname");
int price= Integer.parseInt(request.getParameter("pprice"));
int cno= Integer.parseInt(request.getParameter("cno"));
int quantity= Integer.parseInt(request.getParameter("pqu"));
String bemail= request.getParameter("bemail");

%>
	<div id="corder" class="d-flex justify-content-center h-50 ">
       <div class="card">
          <div class="card-header">
            <h3>Order Details</h3>
          </div>
          <div class="card-body">
            <h3>Order from-<%=bemail %></h3>
            <h4>Product Name-<%=pname %></h4>
            <h5>Quantity-<%=quantity %></h5>
            <h5>Total Price-<%=price %></h5>
          </div>
          <div class="class-footer">
          <button ><a style="text-decoration:none;" href="approve?pname=<%=pname %>&pprice=<%=price %>&pqu=<%=quantity %>&bemail=<%=bemail %>&cno=<%=cno %>">Approve</a></button>
          <button ><a style="text-decoration:none;" href="Decline?pname=<%=pname %>&pprice=<%=price %>&pqu=<%=quantity %>&bemail=<%=bemail %>&cno=<%=cno %>">Decline</a></button>
          </div>
        </div>
      </div>
	
</body>

</html>

