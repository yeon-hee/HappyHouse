<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Join Member</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/header.jsp" %>

<div class="container">
		<!-- ======= Breadcrumbs ======= -->
		<section>
		<div>
			<div class="container">
				<div class="mt-2 mb-2">
					<h1>Join Member</h1>
				</div>
			</div>
		</div>
		</section>
		<!-- End Breadcrumbs -->
		<!-- section start -->
		<section id="index_section">
			<div class="card col-sm-12 mt-1" style="min-height: 450px;">
				<div class="card-body">

<!-- here start -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<c:if test="${userId == null}">
           <h2>회원가입을 진행합니다.</h2>
	<form id="join_form" name="join_form" method="post">
	<label for="mbr_id"><strong>ID  <span id="id_chk_res"></span></strong></label>
	<input type="text" id="mbr_id" name="id" class="form-control mb-3" placeholder="ID" maxlength="20" required="required" />

	<label for="mbr_pwd"><strong>Password<span id="pwd_chk_res" class="text-danger"></span></strong></label>
	<input type="password" id="mbr_pwd" name="password" class="form-control mb-3" placeholder="Password" maxlength="20" required="required" />

	<label for="mbr_nm"><strong>성명<span id="nm_chk_res" class="text-danger"></span></strong></label>
	<input type="text" id="mbr_nm" name="name" class="form-control mb-3" placeholder="성명" maxlength="10" required="required" />

	<label for="mbr_addr1"><strong>주소 </strong></label>
	<input type="text" id="mbr_addr1" name="address" class="form-control mb-3"  placeholder="주소" required="required" />

	<label for="mbr_tel"><strong>전화번호<span id="tel_chk_res" class="text-danger"></span></strong></label>
	<input type="text" id="mbr_tel" name="phoneNumber" class="form-control mb-3" placeholder="전화번호" maxlength="20" required="required" />

	<input type="submit" class="btn btn-primary btn-block" value="등록" maxlength="50"
               formaction="${pageContext.request.contextPath}/user/sign.do"/>
    
</form>
</c:if>

  <%--  <c:if test="${userId == null}">
      <form method="post">
           <h1>회원가입을 진행합니다.</h1>
             아이디 : <input type="text" name="userId"/> <br>
              비밀번호 : <input type="text" name="password"/> <br>
               이름 : <input type="text" name="name"/> <br>
               주소 : <input type="text" name="address"/> <br>
               전화번호 : <input type="text" name="phoneNumber"/> <br><br>
            <input type="submit" value="등록"  
               formaction="${pageContext.request.contextPath}/user/sign.do"/>
         <input type="submit" value="취소" 
               formaction="${pageContext.request.contextPath}/index.jsp"/>  
         </form>
   </c:if> --%>
   
   
   <c:if test="${userId != null}">
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">회원 가입 완료</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			<a style="margin:0 auto" href="${pageContext.request.contextPath}/index.jsp">메인화면</a>
   </c:if>
   <!-- here end -->

				</div>
			</div>
		</section>
		<!-- section end -->
		<footer class="col-ms-12 bg-dark rounded mt-1"></footer>
	</div>
	
<%@ include file="/WEB-INF/copyright.jsp" %>
</body>
</html>