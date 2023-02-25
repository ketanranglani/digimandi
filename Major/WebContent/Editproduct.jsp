<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@include file="db.jsp" %>
<%
String pname = request.getParameter("pname");
String price = request.getParameter("price");
String pquantity = request.getParameter("pqu");
%>
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
  <link rel="stylesheet" type="text/css" href="login.css">
  <title>AddProduct</title>
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
  <div id="log-out">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item">
        <a class="nav-link" id="email-tab" aria-controls="login" aria-selected="true">Email-id</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="logOut-tab" href="#reg" role="tab" aria-controls="register"
          aria-selected="false">LogOut</a>
      </li>
    </ul>
  </div>
    <div class="container" id="log">
      <div class="d-flex justify-content-center h-100">
        <div class="card">
          <div class="card-header">
            <h3>Edit Product</h3>
          </div>
          <div class="card-body">
            <form action="Editproduct">

        	<h1><%=pname%></h1>

              <div class="input-group form-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-balance-scale"></i></span>
                </div>
                <input type="number" class="form-control" name="pquantity" placeholder="Product Quantity in Quintal" value=<%=pquantity %> min="1" max="500"required>
              </div>
              <div class="input-group form-group">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="fas fa-rupee-sign"></i></span>
                </div>
                <input type="number" class="form-control" name="pprice" placeholder="Price per Quintal" value=<%=price %> min="1" required>
              </div>
				<input type="hidden" class="form-control" name="pname"  value=<%=pname %> hidden>
              <div class="form-group">
                <input type="submit" value="Edit" class="btn float-right login_btn">
              </div>
            </form>
          </div>


        </div>


</body>

</html>