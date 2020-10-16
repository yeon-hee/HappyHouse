<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/header.jsp" %>
  <!-- Content section -->
  <section class="py-5">
    <div class="container">
      
    <a href="${pageContext.request.contextPath}/apart/dong_move.do" style="background-color:#33B9F2;border:1px solid #33B9F2;border-radius:6px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:16px;line-height:44px;text-align:center;
       margin-left:380px; text-decoration:none;width:150px;-webkit-text-size-adjust:none;mso-hide:all;">동별 검색</a>
	<a href="${pageContext.request.contextPath}/apart/name_move.do" style="background-color:#33B9F2;border:1px solid #33B9F2;border-radius:6px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:16px;line-height:44px;text-align:center;
       margin-left:50px; text-decoration:none;width:150px;-webkit-text-size-adjust:none;mso-hide:all;">아파트별 검색</a>
       
    </div>
  </section>
  
	<%@ include file="/WEB-INF/copyright.jsp" %>
    <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   
</body>
</html>