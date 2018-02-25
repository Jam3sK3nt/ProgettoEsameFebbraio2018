    <%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
    <%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js">
	
</script>

<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap theme -->
<!-- / margin: .67em 0; -->
<link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<!-- CUSTOM theme -->
<link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/signin.css" rel="stylesheet" type="text/css">
<title>Login Amministratore</title>
</head>
<body>
<f:view>

<nav class="navbar navbar-customblue">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">

					<div class="navbar-header">
						<a class="navbar-brand" href="#"> <img alt="Brand"
							src="./sourcefiles/myproducts.jpg"
							style="width: 45px; height: 45px;" align="left">
						</a>
					</div>
					<h:form>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="index.jsp"><button type="button"
										class="btn btn-default navbar-btn">Torna Indietro</button></a></li>
						</ul>
					</h:form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<div class="container">
		<h1 align="center">Accedi al pannello di amministrazione</h1>
			<h:form styleClass="form-signin">
				<h2 class="form-signin-heading"></h2>
				<div>
				<label class="sr-only" for="inputEmail"></label>
				<h:inputText id="inputEmail" styleClass="form-control"
					value="#{administratorController.email}"
					required="true"  requiredMessage="Email obbligatoria">
					<h:outputLabel value="Email address" />
				</h:inputText>
				<h:message for="inputEmail" />
				</div>
				<div>
				<label class="sr-only" for="inputPassword"></label>
				<h:inputSecret id="inputPassword" styleClass="form-control"
					value="#{administratorController.password}"
					required="true" requiredMessage="Password obbligatoria">
					<h:outputLabel value="Password" />
				</h:inputSecret>
				<h:message for="inputPassword" />
				</div>
				<div>
				<div class="checkbox"></div> 
				<h:commandLink action="#{administratorController.administratorLogin}">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
				</h:commandLink>
				</div>
			</h:form>
		</div>


	</f:view>
</body>
</html>