<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="Style.css">

<title>Edit Form</title>
</head>
<body>
<%@page import="com.jsp.bean.UserDao,com.jsp.bean.Payment_Bean"%>

<%
String id=request.getParameter("id");
Payment_Bean u=UserDao.getRecordById(Integer.parseInt(id));
%>

<h2 class="shadow-lg p-3 mb-5 bg-white rounded" >Checkout Form</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
     <form action="edituser.jsp" method="post">
     <input type="hidden" name="id" value="<%=u.getId()%>"/>
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fullName" name="fullName" value="<%= u.getFullName()%>">
            
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" value="<%= u.getEmail()%>">
            
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" value="<%= u.getAddress()%>">
            
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" value="<%= u.getCity()%>">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" value="<%= u.getState()%>">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" value="<%= u.getZip()%>">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname"value="<%= u.getCardname()%>">
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="cardnumber" value="<%= u.getCardnumber()%>">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" value="<%= u.getExpmonth()%>" >
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" value="<%= u.getExpyear()%>">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" value="<%= u.getCvv()%>">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping Address Same as Billing
        </label>
        <input type="submit" value="PAY" class="btn">
      </form>
    </div>
  </div>

</body>
</html>