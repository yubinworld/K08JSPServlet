<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<html>
<head><title>내장 객체 - out</title></head>
<body>
    <%
    //out객체를 통해 print()메서드를 호출하면 인수로 전달된 내용은
    //브라우저에 즉시 출력되지는 않고 버퍼에 저장된다. 
    out.print("출력되지 않는 텍스트");
    //버퍼에 저장된 내용을 삭제한다. 그러면 해당 내용은 출력되지않는다.
    out.clearBuffer();  

    out.print("<h2>out 내장 객체</h2>");
    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
    out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>"); 

    //버퍼에 저장된 내용을 플러시(출력) 한다. 
    out.flush();   
    //버퍼의 모든 내용이 출력되므로 크기는 원상복구 된다. 
    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");
	
    //타입에 상관없이 다양한 값을 출력할수 있도록 오버로딩 되어있다.
    out.println(1);
    out.println(false);
    out.print('가');
    /*
    print()와 println()의 차이는 출력값뒤에 \n하나를 추가하는 정도이다.
    웹브라우저에서는 줄바꿈을 위해 <br>태그가 필요하므로 두 메서드의 
    차이는 스페이스 한칸이 들어가는 정도이다. 
    */
    %>
</body>
</html>


