<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>비밀번호 찾기</title>
</head>
<body>
<%@ include file="/WEB-INF/header.jsp" %>
<c:if test="${errorMessage == null}">
   
<!-- modal start -->
	<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
		
	<c:if test="${password == null}">
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">찾으실 아이디를 입력하세요</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
				 <form method="post" action="${pageContext.request.contextPath}/user/password.do">
				      <input type="text" name="userId" class="form-control mb-3" placeholder="아이디"/>
				      <input type="submit" value="찾기" class="btn btn-danger">
				      </form>
   </c:if>
   <c:if test="${password != null}">
  	 <div class="modal-header">
		<h4 class="modal-title">찾으신 아이디의 비밀번호입니다 : <strong>${password}</strong></h4>
	</div>
	
      <a style="margin:0 auto" href="${pageContext.request.contextPath}/user/logincon.do">로그인</a>
   </c:if>
   	</div>
	</div>
</c:if>  
 
 
      
<c:if test="${errorMessage != null}">
   
<!-- modal start -->
	<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
		
	<c:if test="${password == null}">
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">입력하신 아이디가 존재하지 않습니다</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			<a style="margin:0 auto" href="${pageContext.request.contextPath}/user/passwordcon.do">뒤로가기</a>
   </c:if>
   	</div>
	</div>
</c:if>  
   
   
      <%@ include file="/WEB-INF/copyright.jsp" %>
   
	<%-- <c:if test="${password != null}">
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">찾으실 아이디를 입력하세요</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
				 <form method="post" action="${pageContext.request.contextPath}/user/password.do">
				      아이디 : <input type="text" name="userId"/>
				      <input type="submit" value="찾기" class="btn btn-danger">
				      </form>
   </c:if> --%>
	
	
<!-- modal end -->




  <%--  <c:if test="${errorMessage == null}">
   <c:if test="${password == null}">
      <h3>찾으실 아이디를 입력하세요</h3>
      <form method="post" action="${pageContext.request.contextPath}/user/password.do">
      아이디 : <input type="text" name="userId"/>
      <input type="submit" value="찾기">
      </form>
   </c:if>
   
   <c:if test="${password != null}">
      <h3>찾으신 아이디의 비밀번호입니다 : ${password}</h3>
      <a href="${pageContext.request.contextPath}/user/login.jsp">로그인</a>
   </c:if>
   </c:if> --%>
   
  <%--  <c:if test="${errorMessage != null}">
      <h3>입력하신 아이디가 존재하지 않습니다</h3>
      <a href="${pageContext.request.contextPath}/user/password.jsp">뒤로가기</a>
   </c:if>
   <%@ include file="../copyright.jsp" %> --%>
   
</body>
</html>