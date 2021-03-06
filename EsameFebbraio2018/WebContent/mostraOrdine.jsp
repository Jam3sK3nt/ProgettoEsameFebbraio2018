<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
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
<title>Ordine selezionato</title>
</head>
<body>
	<f:view>
	<nav class="navbar navbar-customblue">
			<div class="container-fluid">
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
						<li><h:commandLink action="#{orderController.listOrders}"><button
										type="button" class="btn btn-default navbar-btn">Torna indietro</button></h:commandLink></li>
					</ul>
					</h:form>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	
	<h1 align="center">Ordine Selezionato</h1>
		<h:form>
			<ul class="list-group">
					<c:forEach var="orderline" items="${orderController.orderlines}">
					<li class="list-group-item">Id : ${orderline.id} - Prezzo per unita':
						${orderline.unitPrice} - Quantita' : ${orderline.quantity}</li>
				</c:forEach>
			</ul>
		</h:form>
	
	</f:view>
</body>
</html>