<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 관리</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <%@ include file="/WEB-INF/header.jsp" %>

<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
	<h1 style="margin:0 auto">회원 정보 관리</h1>
   
  	 <div class="modal-header">
  	   	 <form style="margin:0 auto" method="post" >
  	 
      		<input type="submit" value="회원정보 조회" class="btn btn-danger"
      		formaction="${pageContext.request.contextPath}/user/lookcon.do"/>  
      		
      		<input type="submit" value="회원정보 수정" class="btn btn-danger"
      		formaction="${pageContext.request.contextPath}/user/modifycon.do"/>  
      		
      		<input type="submit" value="회원정보 삭제" class="btn btn-danger"
      		formaction="${pageContext.request.contextPath}/user/deletecon.do"/>  
      		
      		</form>
	</div>
		</div>
		</div>
	
	<%-- <h1>회원 정보</h1>
	<a href="${pageContext.request.contextPath}/user/look.jsp">회원정보 조회</a><br>
	<a href="${pageContext.request.contextPath}/user/modify.jsp">회원정보 수정</a><br>
	<a href="${pageContext.request.contextPath}/user/delete.jsp">회원정보 삭제</a><br> --%>
	      			<%@ include file="/WEB-INF/copyright.jsp" %>
	
</body>
</html>