<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
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

<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="/WEB-INF/header.jsp" %>

	<section class="py-5">
   <div class="container">
   <a href="${pageContext.request.contextPath}/index.jsp">메인화면</a><br>
   <div style="text-align:center;">
   <h1>아파트에 대한 상세 정보</h1><br>
   
   <% String himg = "/img/다세대주택.jpg";%>
    <c:choose>
      <c:when test="${param.aptName eq '건양하늘터'}">
      	<%himg = "/img/건양하늘터.jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '경희궁의아침2단지' || param.aptName eq '경희궁의아침3단지'  || param.aptName eq '경희궁의아침4단지'}">
      	<%himg = "/img/경희궁의아침.jpg";%>
      </c:when>      
      <c:when test="${param.aptName eq '광화문풍림스페이스본(101동~105동)' || param.aptName eq '광화문풍림스페이스본(106동)'}">
      	<%himg = "/img/광화문풍림스페이스본.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '교북동' &&  param.aptName eq '경희궁자이(4단지)'}">
      	<%himg = "/img/교북동경희궁자이(4단지).jpg";%>
      </c:when>
       <c:when test="${param.aptName eq '동성아파트(1동)'}">
      	<%himg = "/img/동성아파트.jpg";%>
      </c:when>
     
      <c:when test="${param.aptName eq '신동아블루아광화문의 꿈' }">
      		<%himg = "/img/신동아블루아광화문.jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '아남1' }">
      	<%himg = "/img/아남1.jpg";%>
      </c:when>
     
      <c:when test="${param.dong eq '평동' && param.aptName eq '경희궁자이(3단지)' }">
      	<%himg = "/img/평동경희궁자이(3단지).jpg";%>
      </c:when>
     
      <c:when test="${param.aptName eq '현대뜨레비앙' }">
      	<%himg = "/img/현대뜨레비앙.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '홍파동' && param.aptName eq '경희궁자이(2단지)' }">
      	 	<%himg = "/img/홍파동경희궁자이(2단지).jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '효성쥬얼리시티' }">
      	<%himg = "/img/효성쥬얼리시티.jfif";%>
      </c:when>
       <c:when test="${param.aptName eq 'CS타워' }">
      	<%himg = "/img/CS타워.jfif";%>
      </c:when>
      
      <c:when test="${param.aptName eq '인왕산아이파크' }">
      	<%himg = "/img/무악동인왕산아이파크.jpg";%>
      </c:when>
       <c:when test="${param.dong eq '무악동' && param.aptName eq '현대' }">
      	 	<%himg = "/img/무악동현대.jpg";%>
      </c:when> 
       <c:when test="${param.dong eq '숭인동' && param.aptName eq '롯데캐슬천지인' }">
      	<%himg = "/img/숭인동롯데캐슬천지인.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '삼전솔하임2차' }">
      	<%himg = "/img/숭인동삼전솔하임2차.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '숭인한양LEEPS' }">
      		<%himg = "/img/숭인동숭인한양LEEPS.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '종로센트레빌' }">
      	<%himg = "/img/숭인동종로센트레빌.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '종로중흥S클래스' }">
      	<%himg = "/img/숭인동종로중흥S클래스.jfif";%>
      </c:when> 
      
       <c:when test="${param.dong eq '창신동' && param.aptName eq '덕산' }">
      	<%himg = "/img/창신동덕산.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '창신동' && param.aptName eq '두산' }">
      	<%himg = "/img/창신동두산.jpg";%>
      </c:when>
       <c:when test="${param.dong eq '창신동' && param.aptName eq '창신쌍용1' }">
      	<%himg = "/img/창신동창신쌍용1.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '창신동' && param.aptName eq '창신쌍용2' }">
      	<%himg = "/img/창신동창신쌍용2.jpg";%>
      </c:when> 
      
       <c:when test="${param.dong eq '평창동' && param.aptName eq '갑을' }">
      	<%himg = "/img/평창동갑을.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '평창동' && param.aptName eq '삼성' }">
      	<%himg = "/img/평창동삼성.jfif";%>
      </c:when>
      
      
    </c:choose>  
    <c:if test="${param.dong eq '평창동' }">
      	<c:if test="${param.aptName eq '엘리시아' }">
      		<%himg = "/img/평창동엘리시아.jfif";%>
      	</c:if>
      </c:if> 
    
    <img src="<c:url value="<%=himg %>" />" />
    
    <div style="clear:both;">
   </div>
   </div>
   
   
   <table class="type11" style="text-align:center;">
    <thead>
    <tr>
        <th scope="cols">아파트 이름</th>
        <th scope="cols">건설 년도</th>
        <th scope="cols">거래가</th>
        <th scope="cols">거래 일자</th>
        <th scope="cols">면적</th>
        <th scope="cols">층</th>
        <th scope="cols">지번</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${param.aptName}</td>
        <td>${param.buildYear}</td>
        <td>${param.dealAmount}</td>
        <td>${param.dealDay}</td>
        <td>${param.area}</td>
        <td>${param.floor}</td>
        <td>${param.jibun}</td>
    </tr>
    </tbody>
</table>
   
   
   </div>
  </section>
   
<%@ include file="/WEB-INF/copyright.jsp" %>
    <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>