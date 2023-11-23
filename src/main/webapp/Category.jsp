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
	<div class="navbar navbar-expand-lg navbar-light bg-">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active">
				<a class="nav-link" href="home">Customer</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="homeCategory">Category</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="homePet">Pet</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href="index.jsp">Log out</a>
			</li>
		</ul>
	</div>
	<h1>Category Manager</h1>
	<br>
	<div class="row">
		
		<div class="col-sm-4">
			
			<form method="post" action="addCat">
				
				<div align="left">
					<label class="form-label">Name</label>
					<input type="text" class="form-control" placeholder="Category Name" name="cname" id="cname" required>
				</div>
				
				<br>
				<div align="right">
					<input type="submit" id="submit" value="submit" class="btn btn-info">
				</div>
			</form>
		</div>
		<div class="col-sm-8">
			
			<div class="panel-body">
				<table id="tbl-student" class="table table-responsive table-bordered"  width="100%">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
						
						<c:forEach items="${listP}" var="o" >
	                       			<tr>
	                       				<td><p>${o.id}</p></td>
	                       				<td><p>${o.name}</p></td>
	                       				<td><a href="updateCat?cid=${o.id}">Update</a></td>
	                       				<td><a href="#" onclick="showMess(${o.id})">Delete</a></td>
	                       			</tr>
	                            </c:forEach>
						
				</table>
			</div>
		</div>
	</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
<script>
	function showMess(id){
		var option = confirm('Are you sure to delete ?');
		if(option === true){
			window.location.href = 'deleteCategory?cid='+id;
		}
	}
</script>
</html>