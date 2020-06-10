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
<title>Log IN</title>
<!-- Bootstrap core CSS -->

  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="resources/css/full-width-pics.css" rel="stylesheet">
</head>
<body>
  <%@ include file="/WEB-INF/header.jsp" %>
<c:if test="${errorMessage == null}">
<!-- modal start -->
	<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">

			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">LogIn</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
				<form method="post" action="${pageContext.request.contextPath}/user/login.do">
			<div class="modal-body">
				
				<div class="form-group">
					<label for="uId">ID:</label>
					<input type="text" name="id" id="uId" class="form-control" placeholder="Enter ID">
				</div>
				<div class="form-group">
					<label for="uPass">Password:</label>
					<input type="password"  name="password" id="uPass" class="form-control" placeholder="Enter Password">
				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				 <input type="submit" value="로그인"  class="btn btn-primary" 
             	  formaction="${pageContext.request.contextPath}/user/login.do"/>
           		 <input type="submit" value="비밀번호 찾기" class="btn btn-danger"
            	   formaction="${pageContext.request.contextPath}/user/passwordcon.do"/>
			</div>
				</form>

		</div>
	</div>
<!-- modal end -->
</c:if>
  <%--  <c:if test="${errorMessage == null}">
      <form method="post" action="${pageContext.request.contextPath}/user/login.do">
         <h1>로그인 하여 주세요</h1>
         <label for="uId">아이디</label> :
          <input type="text" name="userId" id="uId" /><br>
          <label for="uPass">비밀번호</label> :
          <input type="password" name="password" id="uPass"/><br><br>
          <input type="submit" value="로그인"  
               formaction="${pageContext.request.contextPath}/user/login.do"/>
            <input type="submit" value="비밀번호 찾기" 
               formaction="${pageContext.request.contextPath}/user/password.jsp"/>
      </form>
   </c:if> --%>
   
<c:if test="${errorMessage != null}">
<!-- modal start -->
	<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
			<p style="color:red">다시 로그인 하여 주세요</p>
			
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">LogIn</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
				<form method="post" action="${pageContext.request.contextPath}/user/login.do">
			<div class="modal-body">
				
				<div class="form-group">
					<label for="uId">ID:</label>
					<input type="text" name="id" id="uId" class="form-control" placeholder="Enter ID">
				</div>
				<div class="form-group">
					<label for="uPass">Password:</label>
					<input type="password"  name="password" id="uPass" class="form-control" placeholder="Enter Password">
				</div>
			</div>

			<!-- Modal footer -->
			<div class="modal-footer">
				 <input type="submit" value="로그인"  class="btn btn-primary" 
             	  formaction="${pageContext.request.contextPath}/user/login.do"/>
           		 <input type="submit" value="비밀번호 찾기" class="btn btn-danger"
            	   formaction="${pageContext.request.contextPath}/user/passwordcon.do"/>
			</div>
				</form>

		</div>
	</div>
<!-- modal end -->
</c:if>

   

     <%--  <form method="post" action="${pageContext.request.contextPath}/user/login.do">
         ${errorMessage}<br>
         <h1>다시 로그인 하여 주세요</h1>
         <label for="uId">아이디</label> :
          <input type="text" name="userId" id="uId" /><br>
          <label for="uPass">비밀번호</label> :
          <input type="password" name="password" id="uPass"/><br>
          <input type="submit" value="로그인"/><br><br>
      </form> --%>

   
     <%@ include file="/WEB-INF/copyright.jsp" %>
   
</body>
</html>