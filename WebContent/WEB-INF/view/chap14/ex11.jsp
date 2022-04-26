<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>

<script>
	$(document).ready(function() {
		$(".delete-button").click(function(e) {
			e.preventDefault();
			
			let check= confirm("삭제하시겠습니까??");
			
			if (check) {
				$(this).closest("form").submit();
			}
		});
	});
</script>

<title>Insert title here</title>
</head>
<body>
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Last Name</th>
      <th scope="col">First Name</th>
      <th scope="col">Birth Date</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <c:forEach items="${employeeList }" var="employee" >
    	<tr>
		    <th scope="row">${employee.id }</th>
		    <td>${employee.lastName }</td>
		    <td>${employee.firstName }</td>
		    <td>${employee.birthDate }</td>
		    <td>
		    
		    	<form action="" method="post">
		    		<input type="hidden" name="id" value=${employee.id } />
			    	<button class="delete-button"><i class="fa-solid fa-trash-can"></i></button>
			    	
		    	</form>
		    	
			</td>
    	</tr>
    </c:forEach>
  </tbody>
</table>
</body>
</html>