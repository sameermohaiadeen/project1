<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<title>Sportify-ProductDisplay</title>
<style>
div{
font-family: monotype corsiva;
	font-size: 1em;
	font-weight: bold;
	}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div ng-app = "addToCartApp" ng-controller="addToCartCtrl"> 
<!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">SPORTIFY</p>
                <div class="list-group">
                    <a href="categoryDropdown/1" class="list-group-item">Cricket</a>
                    <a href="categoryDropdown/2" class="list-group-item">Badminton</a>
                    <a href="categoryDropdown/3" class="list-group-item">FootBall</a>
                    <a href="categoryDropdown/4" class="list-group-item">Skating</a>
                    <a href="categoryDropdown/5" class="list-group-item">Cycling</a>
                    <a href="categoryDropdown/6" class="list-group-item">TableTennis</a>
                    <a href="categoryDropdown/7" class="list-group-item">Tennis</a>
                    <a href="categoryDropdown/8" class="list-group-item">BasketBall</a>
                    <a href="categoryDropdown/9" class="list-group-item">VolleyBall</a>
                    <a href="categoryDropdown/10" class="list-group-item">Hockey</a>
                    <a href="categoryDropdown/11" class="list-group-item">BaseBall</a>
                </div>
            </div>
   <div class="col-md-9">

                
                <div class="row">
<h1 style="text-align:center;">${product.name }</h1>
	<div style="margin-left:5px">
<img src="${product.imageUrl}" class="img-responsive"  height="250px" width="250px" >


						<h3>Name:${product.name }</h3>
							<h3>Price:RS.${product.price}</h3>
							
							<h3>Description:${product.description }</h3>
							
					
					<c:if test="${empty successlogin}">
					<a href="Login"><button class="btn btn-primary">Login to add to Cart
											</button></a>
					</c:if>	
					<c:if test="${not empty successlogin}">	
									<button class="btn btn-primary"
										   ng-click="addItemToCart('${product.id}')"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to Cart
											</button>
							</c:if>
				
						
							<p>15 reviews</p>
							<p>
								<span class="glyphicon glyphicon-star"></span>
								 <span class="glyphicon glyphicon-star"></span>
								  <span	class="glyphicon glyphicon-star"></span>
								   <span class="glyphicon glyphicon-star"></span>
									 <span class="glyphicon glyphicon-star"></span>
							</p>
						
</div>
</div>
	

<a href="categoryback"><button type="button" class="btn btn-primary" >Back to Categories</button></a>

                    

                    
                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->


 <script>
 

 var cartApp = angular.module ("addToCartApp", []);

 cartApp.controller("addToCartCtrl", function ($scope, $http){
 	
 	 /*
      * retrieveCart method is used to get all cart items at the starting of the application
      */
     $scope.retrieveCart = function (cartId) {
         $scope.cartId = cartId;
         $scope.refreshCartItems(cartId);
     };
     
     
     /*
      * removeItemFromCart method is used to remove a item from the cart
      */
     $scope.removeItemFromCart = function (id) {
    	 alert("enter to remove button")
         $http['delete']('http://localhost:9090/sportifyUI/removeItem/'+id).success(function (data) {
        	 alert("Item removed from the cart!")
             $scope.refreshCartItems();
         });
     };

 	 /*
      * addItemToCart method is used to add items into the cart
      */
     $scope.addItemToCart = function (id) {
         $http.put('http://localhost:9090/sportifyUI/categoryDropdown/productDisplay/usercart/cart/addItem/'+id).success(function (data) {
             alert("Item added to the cart!!!")
             
         });
     };
    
    
     /*
      * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
      */
     $scope.GrandTotalOfItems = function () {
         var grandTotal=0;

         for (var i=0; i<$scope.cart.cartItems.length; i++) {
             grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

         return grandTotal;
     };
     /*
 	 * refreshCartItems method is called by others methods in same controller to refresh the cart
 	 */
     $scope.refreshCartItems = function () {
         $http.get('http://localhost:9090/sportifyUI/refreshCart/'+$scope.cartId).success(function (data) {
            $scope.cart=data;
         });
     };
     
     /*
      * clearCartItems method is used to delete all items from the cart
      */
     $scope.clearCartItems = function () {
     	$http['delete']('http://localhost:9090/sportifyUI/clearCartItems/'+$scope.cartId).success(function (data)
     			{$scope.refreshCartItems()
     		});
     };
 });

</script>



</body>
</html>