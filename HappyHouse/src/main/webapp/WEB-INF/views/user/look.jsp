<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>회원 정보 조회</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style>
table.type11 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    margin: 20px 10px;
}
table.type11 thead th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #fff;
    background: #e7708d;
    margin: 20px 10px;
}
table.type11 tbody th {
    width: 150px;
    padding: 10px;
}
table.type11 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
}
table.type11 .even {
    background: #fdf3f5;
}
</style>

<body>
<%@ include file="/WEB-INF/header.jsp" %>


<div class="modal-dialog modal-md" style="vertical-align: middle;">
		<div class="modal-content">
		
	<c:if test="${people == null}">
			<!-- ModalHeader -->
			<div class="modal-header">
				<h4 class="modal-title">조회할 회원의 아이디를 입력하세요</h4>
				<button type="button" class="close dataDismiss" data-dismiss="modal">&times;</button>
			</div>
			
			<!-- Modal body -->
				 <form method="post" action="${pageContext.request.contextPath}/user/look.do">
				      <input type="text" id="uId" name="userId" class="form-control mb-3" placeholder="아이디"/>
				      <input type="submit" value="찾기" class="btn btn-primary">
				      </form>
   </c:if>
   
   </div>
   </div>
	
	<c:if test="${people != null}">
			<h1>아이디 ${people.id}님의 회원 정보</h1>
	
	 <table class="type11" style="text-align:center;">
                  <thead>
                     <tr>
                        <th scope="cols">ID</th>
                    <th scope="cols">비밀번호</th>
                    <th scope="cols">이름</th>
                    <th scope="cols">주소</th>
                    <th scope="cols">전화번호</th>
                     </tr>
                  </thead>      
               <tbody>
                  <tr>
                  <td>${people.id}</td>
                  <td>${people.password}</td>
                  <td>${people.name}</td>
                  <td>${people.address}</td>
                  <td>${people.phoneNumber}</td>
                  </tr>
               </tbody>
               </table>
               
		<%-- <h1>아이디 ${people.id}님의 회원 정보</h1>
			아이디 : ${people.id}<br>
			비밀번호 : ${people.password}<br>
			이름 : ${people.name}<br>
			주소 : ${people.address}<br>
			전화번호 : ${people.phoneNumber}<br><br> --%>
			
			<form style="margin:0 auto" method="post" >
      		<input type="submit" value="메인화면" class="btn btn-primary"
      		formaction="${pageContext.request.contextPath}/index.jsp"/> 
      		</form>
	</c:if>
	      			<%@ include file="/WEB-INF/copyright.jsp" %>

</body>
</html>