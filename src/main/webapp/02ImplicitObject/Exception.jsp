<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
<html>
<head><title>내장 객체 - exception</title></head>
<body>
<%
int status = response.getStatus();  

if (status == 404) {
    out.print("404 에러가 발생하였습니다.");
    out.print("<br/>파일 경로를 확인해주세요.");
}
else if (status == 405) {
    out.print("405 에러가 발생하였습니다.");
    out.print("<br/>요청 방식(method)을 확인해주세요.");
}
else if (status == 500) {
    out.print("500 에러가 발생하였습니다.");
    out.print("<br/>소스 코드에 오류가 없는지 확인해주세요.");
}
%>
<br>
<img src="../images/Error.jpg" width="300" >
<img src="../images/da1a426384e0e.jpg" width="400" />
</body>
</html>







=======
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - exception</title>
</head>
<body>
<%
int status = response.getStatus();

if(status == 400){
	out.print("404에러가 발생하였습니다.");
	out.print("<br/>파일 경로를 확인해주세요 .");
}
else if(status ==405){
	out.print("405에러가 발생하였습니다.");
	out.print("<br/>요청방식(method)를확인해주세요 .");
}
else if(status ==500){
	out.print("500에러가 발생하였습니다.");
	out.print("<br/>소스 코드에 오류가 없는지 확인해주세요 .");
}   
%>
<br>
<img src="../images/da1a426384e0e.jpg" alt="오류 페이지" />
<br />

</body>
</html>
>>>>>>> refs/remotes/origin/main
