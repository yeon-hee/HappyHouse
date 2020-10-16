<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
      
      function searchArticle() {
         if(document.getElementById("sword").value == "") {
            alert("모든 목록 조회!!");
         }
         document.getElementById("searchform").action = "${pageContext.request.contextPath}/apart/mainList.do";
         document.getElementById("searchform").submit();
      }
      
      function pageMove(pg) { 
         document.getElementById("pg").value=pg;
         document.getElementById("pageform").action = "${pageContext.request.contextPath}/apart/mainList.do";
         document.getElementById("pageform").submit();
      }
      </script>


</head>
<%@ include file="/WEB-INF/header.jsp" %>

<!-- Content section -->
  <section class="py-5">
    <div class="container">
	<body style="margin-left:12px; margin-top:15px">
	<div>
		<form name="pageform" id="pageform" method="GET" action="">
			<input type="hidden" name="act" id="act" value="lists"> <input
				type="hidden" name="pg" id="pg" value="">
		</form>

		<c:if test="${ list ==null }">

		</c:if>
		<c:if test="${ list !=null }">

			<form method="post"
				action="${pageContext.request.contextPath}/apart/mainList.do">
				<a href="${pageContext.request.contextPath}/index.jsp">메인화면</a><br>
				<br>

				<h2 style="text-align:center;">아파트 거래 정보</h2>
				<br>
				<form id="searchform" method="get" class="form-inline" action="">
					<input type="hidden" name="act" id="act" value="lists"> <input
						type="hidden" name="pg" id="pg" value="1">

					<table class="type11" style="text-align:center;">
						<thead>
							<tr>
								<th scope="cols">번호</th>
        						<th scope="cols">동</th>
        						<th scope="cols">아파트 이름</th>
        						<th scope="cols">거래 금액</th>
        						<th scope="cols">거래 종류</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="list" items="${list}">
								<tr>
									<td>${list.no}</td>
									<td>${list.dong}</td>
									<td><a
										href="${pageContext.request.contextPath}/apart/image.do?aptName=${list.aptName}&dealAmount=${list.dealAmount}&buildYear=${list.buildYear}&floor=${list.floor}&no=${list.no}&area=${list.area}&dealDay=${list.dealDay}&dong=${list.dong}&jibun=${list.jibun}">${list.aptName}</a></td>
									<td>${list.dealAmount}</td>
									<c:if test="${list.type == 1}">
										<td>아파트 매매</td>
									</c:if>
									<c:if test="${list.type == 2}">
										<td>아파트 전월세</td>
									</c:if>
									<c:if test="${list.type == 3}">
										<td>다세대 매매</td>
									</c:if>
									<c:if test="${list.type == 4}">
										<td>다세대 전월세</td>
									</c:if>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</form>

			<table>
				<tr>
					<td>
						<!-- page 출력부분 --> <br>${navigation.navigator}
					</td>
				</tr>
			</table>
		</c:if>
	</div>
 </div>
  </section>
   <%@ include file="/WEB-INF/copyright.jsp" %>
    <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>