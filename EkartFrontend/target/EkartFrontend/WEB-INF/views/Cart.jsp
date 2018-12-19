<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h3 align="center">Cart</h3>

<table class="table bordered" >
  <tr bgcolor="yellow">
   
    <td>SL# </td>
    <td>ProductName</td>
    <td> Quantity</td>
    <td>Price </td>
    <td>TotalPrice</td>

  </tr>
  
  <c:forEach items="cartItems" var="cart">
  <form action="<c:url value="/updateCartItems/${cart.cartId}"/>" method="get">
  <tr>
  	<td>${cart.productName}</td>
    <td><input type="text" name="quantity" value="${cart.quantity}"/>
    <td> ${cart.price}</td>
    <td>${cart.quantity}*${cart.price}/-</td>
    <td>
    	<input type="submit" value="update" class="btn btn-success"/>
    	<a  class="btn btn-danger" href="<c:url value="/deleteCartItems/${cart.cartId}"/>" method="get"></a>
    	</td>
    </tr>
    </form>
  </c:forEach>
  <tr bgcolor="cyan">
  	<td colspan="4">GrandTotal</td>
  	<td colspan="2">${grandTotal}/-</td>
  	</tr>
  	<tr bgcolor="cyan">
  	<td colspan="3"><a href="<c:url value="/productDisplay"/>">Continue Shopping</a></td>
  	<td colspan="2"><a href="<c:url value="/checkout"/>"></a></td>
  	</tr>
  	
</table>

