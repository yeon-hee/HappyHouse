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

      <section>
         <c:choose>
            <c:when test="${not empty Donglist}">
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
               <a href="${pageContext.request.contextPath}/index.jsp">메인화면</a><br>
               <br> 정렬할 옵션을 선택하세요 : 
               <form method="post">
               		<select name="order_option">
               			<option value="oaptName" <c:if test="${opt eq '아파트'}">selected</c:if>>아파트 이름 </option>
               			<option value="oprice"<c:if test="${opt eq '가격'}">selected</c:if>>가격</option>
            		</select> &nbsp;
            		<input type="hidden" name="dong">
            		<input type="submit" value="검색" class="btn btn-warning"
            		formaction="${pageContext.request.contextPath}/apart/dong_sort.do"/><br><br>
            	</form>
           
               <h1>(${dong}) 로 검색한 결과입니다</h1><br>
               
               <c:forEach items="${Donglist}" var="Donglist">
                  <tr>
                  <td>${Donglist.no}</td>
                  <td>${Donglist.dong}</td>
                  <td>${Donglist.aptName}</td>
                  <td>${Donglist.dealAmount}</td>
                  <c:if test="${Donglist.type == 1}"><td>아파트 매매</td></c:if>
                  <c:if test="${Donglist.type == 2}"><td>아파트 전월세</td></c:if>
                  <c:if test="${Donglist.type == 3}"><td>다세대 매매</td></c:if>
                  <c:if test="${Donglist.type == 4}"><td>다세대 전월세</td></c:if>
                  </tr>
               </c:forEach>
               </tbody>
      </table>
            </c:when>
            <c:otherwise>
               <h3>검색한 동에 대한 정보는 없습니다.</h3>
               <a href="${pageContext.request.contextPath}/apart/dong.jsp">뒤로가기</a><br>
            </c:otherwise>
         </c:choose>
      </section>
   
    </div>
  </section>

   <%@ include file="/WEB-INF/copyright.jsp" %>
    <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>