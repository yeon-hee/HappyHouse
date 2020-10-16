<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



   <h1>아파트에 대한 상세 정보</h1><br>
   
   <h4>주택명 : ${param.aptName}</h4>
   <h4>거래 금액 : ${param.dealAmount}</h4>
   <h4>월세 금액 : ${param.rentMoney}</h4>
   <h4>건축 연도 : ${param.buildYear}</h4>
   <h4>전용 면적 : ${param.area}</h4>
   <h4>거래일 : ${param.dealDay}</h4>
   <h4>법정동 : ${param.dong}</h4>
   <h4>지번 : ${param.jibun}</h4>
   
   <%-- <c:set var="dong" value=${param.dong } /> --%>
   <c:set var="dong">${param.dong}</c:set>
   
   <c:out value="${param.dong}">dong</c:out>
   <%-- dong = ${param.dong} --%>   
   
   
   <% String himg = "/img/다세대주택.jpg";%>
    <c:choose>
      <c:when test="${param.aptName eq '건양하늘터'}">
      	<%-- <img src="<c:url value='/img/건양하늘터.jpg' />" /> --%>
      	<%himg = "/img/건양하늘터.jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '경희궁의아침2단지' || param.aptName eq '경희궁의아침3단지'  || param.aptName eq '경희궁의아침4단지'}">
      	<%-- <img src="<c:url value='/img/경희궁의아침.jpg' />" /> --%>
      	<%himg = "/img/경희궁의아침.jpg";%>
      </c:when>      
      <c:when test="${param.aptName eq '광화문풍림스페이스본(101동~105동)' || param.aptName eq '광화문풍림스페이스본(106동)'}">
      	<%-- <img src="<c:url value='/img/광화문풍림스페이스본.jpg' />" /> --%>
      	<%himg = "/img/광화문풍림스페이스본.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '교북동' &&  param.aptName eq '경희궁자이(4단지)'}">
      	<%-- <img src="<c:url value='/img/교북동경희궁자이(4단지).jpg' />" /> --%>
      	<%himg = "/img/교북동경희궁자이(4단지).jpg";%>
      </c:when>
       <c:when test="${param.aptName eq '동성아파트(1동)'}">
      	<%-- <img src="<c:url value='/img/동성아파트.jpg' />" /> --%>
      	<%himg = "/img/동성아파트.jpg";%>
      </c:when>
      <%-- <c:when test="${param.dong eq '무악동'}">
      		<c:when test="${param.aptName eq '인왕산아이파크' }">
      			<img src="<c:url value='/img/무악동인왕산아이파크.jpg' />" />
      			<%himg = "/img/무악동인왕산아이파크.jpg";%>
     		 </c:when>
     		  <c:when test="${param.aptName eq '현대' }">
     			 	<img src="<c:url value='/img/무악동현대.jpg' />" />
     			 	<%himg = "/img/무악동현대.jpg";%>
      		</c:when>
      </c:when>
      <c:when test="${param.dong eq '숭인동'}">
      			<c:when test="${param.aptName eq '롯데캐슬천지인' }">
     			 	<img src="<c:url value='/img/숭인동롯데캐슬천지인.jpg' />" />
     			 	<%himg = "/img/숭인동롯데캐슬천지인.jpg";%>
     			 </c:when>
     			 <c:when test="${param.aptName eq '삼전솔하임2차' }">
      				<img src="<c:url value='/img/숭인동삼전솔하임2차.jfif' />" />
      				<%himg = "/img/숭인동삼전솔하임2차.jfif";%>
      			</c:when>
      			<c:when test="${param.aptName eq '숭인한양LEEPS' }">
      				<img src="<c:url value='/img/숭인동숭인한양LEEPS.jfif' />" />
      				<%himg = "/img/숭인동숭인한양LEEPS.jfif";%>
     			 </c:when>
      			<c:when test="${param.aptName eq '종로센트레빌' }">
    			  	<img src="<c:url value='/img/숭인동종로센트레빌.jfif' />" />
    			  	<%himg = "/img/숭인동종로센트레빌.jfif";%>
   			   </c:when>
   			   <c:when test="${param.aptName eq '종로중흥S클래스' }">
   				   	<img src="<c:url value='/img/숭인동종로중흥S클래스.jfif' />" />
   				   	<%himg = "/img/숭인동종로중흥S클래스.jfif";%>
   			   </c:when>      
      </c:when> --%>
      <c:when test="${param.aptName eq '신동아블루아광화문의 꿈' }">
      	<%-- <img src="<c:url value='/img/신동아블루아광화문.jpg' />" /> --%>
      		<%himg = "/img/신동아블루아광화문.jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '아남1' }">
      	<%-- <img src="<c:url value='/img/아남1.jpg' />" /> --%>
      	<%himg = "/img/아남1.jpg";%>
      </c:when>
      <%-- <c:when test="${param.dong eq '창신동'}">
      		<c:when test="${param.aptName eq '덕산' }">
		      		<img src="<c:url value='/img/창신동덕산.jpg' />" />
		      			<%himg = "/img/창신동덕산.jpg";%>
		      </c:when>
		      <c:when test="${param.aptName eq '두산' }">
		     	 	<img src="<c:url value='/img/창신동두산.jpg' />" />
		     	 	<%himg = "/img/창신동두산.jpg";%>
		      </c:when>
		       <c:when test="${param.aptName eq '창신쌍용1' }">
		   		   	<img src="<c:url value='/img/창신동창신쌍용1.jpg' />" />
		   		   	<%himg = "/img/창신동창신쌍용1.jpg";%>
		      </c:when>
		      <c:when test="${param.aptName eq '창신쌍용2' }">
		   		   	<img src="<c:url value='/img/창신동창신쌍용2.jpg' />" />
		   		   	<%himg = "/img/창신동창신쌍용2.jpg";%>
		      </c:when>
      </c:when> --%>
      <c:when test="${param.dong eq '평동' && param.aptName eq '경희궁자이(3단지)' }">
      	<%-- <img src="<c:url value='/img/평동경희궁자이(3단지).jpg' />" /> --%>
      	<%himg = "/img/평동경희궁자이(3단지).jpg";%>
      </c:when>
     <%--  <c:when test="${param.dong eq '평창동'}">
	      	<c:when test="${param.aptName eq '갑을' }">
		      	<img src="<c:url value='/img/평창동갑을.jpg' />" />
		      	<%himg = "/img/평창동갑을.jpg";%>
		      </c:when>
		      <c:when test="${param.aptName eq '삼성' }">
		      	<img src="<c:url value='/img/평창동삼성.jfif' />" />
		      	  	<%himg = "/img/평창동삼성.jfif";%>
		      </c:when>
		      <c:when test="${param.aptName eq '엘리시아' }">
		      	<img src="<c:url value='/img/평창동엘리시아.jfif' />" />
		      	<%himg = "/img/평창동엘리시아.jfif";%>
		      </c:when>
      </c:when> --%>
      <c:when test="${param.aptName eq '현대뜨레비앙' }">
      	<%-- <img src="<c:url value='/img/현대뜨레비앙.jpg' />" /> --%>
      	<%himg = "/img/현대뜨레비앙.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '홍파동' && param.aptName eq '경희궁자이(2단지)' }">
 <%--      	<img src="<c:url value='/img/홍파동경희궁자이(2단지).jpg' />" /> --%>
      	 	<%himg = "/img/홍파동경희궁자이(2단지).jpg";%>
      </c:when>
      <c:when test="${param.aptName eq '효성쥬얼리시티' }">
      	<%-- <img src="<c:url value='/img/효성쥬얼리시티.jfif' />" /> --%>
      	<%himg = "/img/효성쥬얼리시티.jfif";%>
      </c:when>
       <c:when test="${param.aptName eq 'CS타워' }">
      	<%-- <img src="<c:url value='/img/CS타워.jfif' />" /> --%>
      	<%himg = "/img/CS타워.jfif";%>
      </c:when>
      
      
       <c:when test="${param.dong eq '무악동' && param.aptName eq '인왕산아이파크' }">
      <%-- 	<img src="<c:url value='/img/무악동인왕산아이파크.jpg' />" /> --%>
      	<%himg = "/img/무악동인왕산아이파크.jpg";%>
      </c:when>
       <c:when test="${param.dong eq '무악동' && param.aptName eq '현대' }">
      	<%-- <img src="<c:url value='/img/무악동현대.jpg' />" /> --%>
      	 	<%himg = "/img/무악동현대.jpg";%>
      </c:when> 
       <c:when test="${param.dong eq '숭인동' && param.aptName eq '롯데캐슬천지인' }">
      	<%-- <img src="<c:url value='/img/숭인동롯데캐슬천지인.jpg' />" /> --%>
      	<%himg = "/img/숭인동롯데캐슬천지인.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '삼전솔하임2차' }">
      <%-- 	<img src="<c:url value='/img/숭인동삼전솔하임2차.jfif' />" /> --%>
      	<%himg = "/img/숭인동삼전솔하임2차.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '숭인한양LEEPS' }">
      	<%-- <img src="<c:url value='/img/숭인동숭인한양LEEPS.jfif' />" /> --%>
      		<%himg = "/img/숭인동숭인한양LEEPS.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '종로센트레빌' }">
      	<%-- <img src="<c:url value='/img/숭인동종로센트레빌.jfif' />" /> --%>
      	<%himg = "/img/숭인동종로센트레빌.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '숭인동' && param.aptName eq '종로중흥S클래스' }">
      	<%-- <img src="<c:url value='/img/숭인동종로중흥S클래스.jfif' />" /> --%>
      	<%himg = "/img/숭인동종로중흥S클래스.jfif";%>
      </c:when> 
      
       <c:when test="${param.dong eq '창신동' && param.aptName eq '덕산' }">
      	<%-- <img src="<c:url value='/img/창신동덕산.jpg' />" /> --%>
      	<%himg = "/img/창신동덕산.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '창신동' && param.aptName eq '두산' }">
      	<%-- <img src="<c:url value='/img/창신동두산.jpg' />" /> --%>
      	<%himg = "/img/창신동두산.jpg";%>
      </c:when>
       <c:when test="${param.dong eq '창신동' && param.aptName eq '창신쌍용1' }">
      	<%-- <img src="<c:url value='/img/창신동창신쌍용1.jpg' />" /> --%>
      	<%himg = "/img/창신동창신쌍용1.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '창신동' && param.aptName eq '창신쌍용2' }">
      	<%-- <img src="<c:url value='/img/창신동창신쌍용2.jpg' />" /> --%>
      	<%himg = "/img/창신동창신쌍용2.jpg";%>
      </c:when> 
      
       <c:when test="${param.dong eq '평창동' && param.aptName eq '갑을' }">
      	<%-- <img src="<c:url value='/img/평창동갑을.jpg' />" /> --%>
      	<%himg = "/img/평창동갑을.jpg";%>
      </c:when>
      <c:when test="${param.dong eq '평창동' && param.aptName eq '삼성' }">
      <%-- 	<img src="<c:url value='/img/평창동삼성.jfif' />" /> --%>
      	<%himg = "/img/평창동삼성.jfif";%>
      </c:when>
      <c:when test="${param.dong eq '평창동' && param.aptName eq '엘리시아' }">
      	<%-- <img src="<c:url value='/img/평창동엘리시아.jfif' />" /> --%>
      	<%himg = "/img/평창동엘리시아.jfif";%>
      </c:when> 
      
    </c:choose>  
    
    <%-- <c:if test="${himg eq null }">
    	<%himg = "/img/다세대주택.jpg";%>
    </c:if> --%>
    <img src="<c:url value="<%=himg %>" />" />
    
</body>
</html>