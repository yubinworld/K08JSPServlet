package utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieManager {

    /*
    큐키생성 : 생성시 response 내장객체가 필요하므로 매개변수를 
    	통해 jsp에서 전달받아야한다. 나머지는 쿠키명,쿠키값, 
    	유효시간 설정을 위한 값이다.
     */
    public static void makeCookie(HttpServletResponse response, String cName,
            String cValue, int cTime) {
    	//쿠키를 생성자를 통해 생성한다.
        Cookie cookie = new Cookie(cName, cValue);
        //경로를 설정한다.
        cookie.setPath("/");
        //시간을 설정한다.
        cookie.setMaxAge(cTime);
        //응답헤더에 추가하여 클라이언트측으로 전송한다.
        response.addCookie(cookie);
        //이를통해 클라이언트의 웹브라우저에는 하나의 코키가 저장된다. 
    }
    
    //쿠키값읽기 : request 내장객체가 필요하므로 매개변수로 기술한다.
    public static String readCookie(HttpServletRequest request, String cName) {
        String cookieValue = "";   
        //생성된 쿠키를 배열로 읽어온다.
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
        	//읽어온 쿠키의 갯수만큼 반복한다.
            for (Cookie c : cookies) {
            	//쿠키명을 얻어온다.
                String cookieName = c.getName();
                //내가찾는 쿠키명이 있는지 확인한다.
                if (cookieName.equals(cName)) {
                	//쿠키명이 일치하면 쿠키값을 읽어서 저장한다.
                    cookieValue = c.getValue();
                }
            }
        }
        return cookieValue; 
    }
    /*
     쿠키삭제 : 쿠키는 삭제를 위한 별도의 메서드가 없다. 빈값과 유지	
     	시간을 0으로 설정하면 삭제된다. 따라서 앞에서 정의한
     	makeCookie() 메서드를 재활용한다.
     */

    public static void deleteCookie(HttpServletResponse response, String cName) {
        makeCookie(response, cName, "", 0);
    }
}