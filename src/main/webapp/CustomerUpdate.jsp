<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>Title</title>
</head>
<body>
	<h1>Customer Manager</h1>
	<br>
	<div class="row">
		
		<div class="col-sm-4">
			
			<form method="post" action="updateCustomer">
				<div align="left">
					<label class="form-label">Id</label>
					<input type="text" class="form-control" placeholder="Customer Id" name="cid" id="cid" value="${ctm.id}" readonly>
				</div>
				
				<div align="left">
					<label class="form-label">Name</label>
					<input type="text" class="form-control" placeholder="Customer Name" name="cname" id="cname" value="${ctm.name}" required>
				</div>
				
				<div align="left">
					<label class="form-label">Address</label>
					<input type="text" class="form-control" placeholder="Address" name="address" id="address" value="${ctm.address }" required>
				</div>
				
				<div align="left">
					<label class="form-label">Phone</label>
					<input type="text" class="form-control" placeholder="Phone" name="phone" id="phone" value="${ctm.phone}" required>
				</div>
				<br>
				<div align="right">
					<input type="submit" id="submit" value="update" class="btn btn-info">
					<input type="reset" id="reset" value="reset" name="reset" class="btn btn-warning">
				</div>
			</form>
		</div>
		
	</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>

</html>