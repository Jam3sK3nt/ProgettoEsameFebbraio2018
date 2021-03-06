<%@page import="it.uniroma3.siw.controller.OrderLineController"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html>
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
<!-- SignIn theme -->
<link href="bootstrap/css/signin.css" rel="stylesheet" type="text/css">
<title>Pannello Cliente</title>
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
							<li><h:commandLink
									action="#{customerOrderCreateController.discardOrder}">
									<button type="button" class="btn btn-default navbar-btn">Torna
										Indietro</button>
								</h:commandLink></li>
						</ul>
					</h:form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<h1 align="center">Crea un nuovo ordine</h1>
		<h2 align="center">Prodotti disponibili</h2>
		
		<h:form>
			<ul class="list-group">
				<c:forEach var="product" items="#{customerOrderCreateController.products }">
					<li class="list-group-item">Nome: ${product.name} - Prezzo: ${product.price} - Codice: ${product.code}
					</li>
				</c:forEach>
			</ul>
		</h:form>
		
		
		
		
		
		<div class="container" align="center">

			<h:form styleClass="form-signin">

				<div>
					<label class="sr-only" for="inputCode"></label>
					<h:inputText id="inputFirstName" styleClass="form-control"
						value="#{customerOrderCreateController.code}" required="true"
						requiredMessage="Codice obbligatorio">
						<h:outputLabel value="Codice" />
					</h:inputText>
					<h:message for="inputCode" />
				</div>

				<div>
					<label class="sr-only" for="inputQuantity"></label>
					<h:inputText id="inputQuantity" styleClass="form-control"
						value="#{customerOrderCreateController.quantity}" required="true"
						requiredMessage="Quantit� obbligatoria">
						<h:outputLabel value="Quantit�" />
					</h:inputText>
					<h:message for="inputQuantity" />
				</div>

				<div>
					<div class="checkbox"></div>
					<h:commandLink
						action="#{customerOrderCreateController.createOrderLine}">
						<button class="btn btn-lg btn-primary btn-block" type="submit">Inserisci
							nell'ordine</button>
					</h:commandLink>
					<div class="checkbox"></div>
					<h:commandLink
						action="#{customerOrderCreateController.createOrder}">
						<button class="btn btn-lg btn-primary btn-block" type="submit">Conferma
							Ordine</button>
					</h:commandLink>
				</div>
			</h:form>
		</div>


	</f:view>
</body>
</html>