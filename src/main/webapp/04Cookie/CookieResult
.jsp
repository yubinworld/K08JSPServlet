<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieResult.jsp</title>
</head>
<body>
	<!--
	쿠키 
	: 클라이언트의 상태 정보를 유지하기 위한 기술로 클라이언트의 
	PC에 파일형태로 저장된다. 쿠키 하나의 크기는 4kb이고, 300개까지
	만들 수 있다.
	  -->
	<h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			String cookieName = cookies[i].getName();
			String cookieValue = cookies[i].getValue();
			out.println(String.format("쿠키명 : %s - 쿠키값 : %s<br>",
										cookieName, cookieValue));
					
		}
	}
	%>
</body>
</html>