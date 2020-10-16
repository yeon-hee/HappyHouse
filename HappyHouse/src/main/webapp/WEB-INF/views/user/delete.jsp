<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 탈퇴</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   <%@ include file="/WEB-INF/header.jsp" %>
<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
	<h1 style="margin:0 auto">회원 탈퇴</h1>
   
   <c:if test="${userId != null}">
  	 <div class="modal-header">
  	 		<form style="margin:0 auto" method="post" action="${pageContext.request.contextPath}/user/delete.do">
		<input type="submit" value="삭제" class="btn btn-primary"/>
      		<input type="submit" value="취소" class="btn btn-danger"
      		formaction="${pageContext.request.contextPath}/index.jsp"/>  
      		   		</form>
      		
	</div>
   </c:if>
	<c:if test="${userId == null}">
  	 <div class="modal-header">
		<h4 style="margin:0 auto" class="modal-title"><strong>회원 정보 삭제 완료</strong></h4>
	</div>
	
      <a style="margin:0 auto" href="${pageContext.request.contextPath}/index.jsp">메인화면</a>
   </c:if>
      		</div>
      		</div>
      			<%@ include file="/WEB-INF/copyright.jsp" %>
</body>
</html>