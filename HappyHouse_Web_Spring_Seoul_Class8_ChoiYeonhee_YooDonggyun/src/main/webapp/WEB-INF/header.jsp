<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/css/full-width-pics.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<c:choose>
<c:when test="${name != null}">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Happy House</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
          
          	<a class="nav-link" href="http://127.0.0.1:9001/index.html">QnA게시판
              <span class="sr-only">(current)</span>
           </a>
            </li>
            <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/logout.do">로그아웃
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
               <a class="nav-link" href="${pageContext.request.contextPath}/user/infocon.do">회원정보</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/mainList.do?act=list&pg=1">아파트 거래정보</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   </c:when>
    <c:otherwise>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
           <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">Happy House</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/signcon.do">회원가입
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/user/logincon.do">로그인</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/apart/mainList.do">아파트 거래정보</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
      </c:otherwise>
   </c:choose>


  <!-- Header - set the background image for the header in the line below -->
  <header class="py-5 bg-image-full" style="background-image: url('https://unsplash.it/1900/1080?image=1076');">
    <div style="height: 200px;">
       <h2 style="text-align:center; color:white;">WELCOME HAPPY HOUSE</h2>
       <div style="text-align:center; color:white;">
          <p style="margin-top:10px;">여기서 아파트를 검색해보세요!</p>
       </div>
       <div style="text-align:center; margin-top:30px;">
       <a href="${pageContext.request.contextPath}/apart/search.do" style="background-color:#EB7035;border:1px solid #EB7035;border-radius:3px;color:#ffffff;display:inline-block;font-family:sans-serif;font-size:16px;line-height:44px;text-align:center;
       text-decoration:none;width:150px;-webkit-text-size-adjust:none;mso-hide:all;">실거래가 검색</a>
       </div>
    </div>
  </header>
</body>
</html>