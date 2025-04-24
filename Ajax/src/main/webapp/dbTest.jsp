<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>
<h2>데이터베이스 연결 테스트</h2>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
        String dbURL = "jdbc:mysql://localhost:3306/AJAX";
        String dbID = "root";
        String dbPassword = "admin1234";
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        out.println("<p>데이터베이스 연결 성공!</p>");
        
        // USER 테이블 데이터 확인
        String sql = "SELECT COUNT(*) FROM USER";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        if(rs.next()) {
            out.println("<p>USER 테이블에 " + rs.getInt(1) + "개의 레코드가 있습니다.</p>");
        }
        
        // 실제 데이터 확인
        sql = "SELECT * FROM USER LIMIT 5";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        out.println("<h3>USER 테이블 데이터 샘플:</h3>");
        out.println("<table border='1'>");
        out.println("<tr><th>이름</th><th>나이</th><th>성별</th><th>이메일</th></tr>");
        
        while(rs.next()) {
            out.println("<tr>");
            out.println("<td>" + rs.getString("userName") + "</td>");
            out.println("<td>" + rs.getInt("userAge") + "</td>");
            out.println("<td>" + rs.getString("userGender") + "</td>");
            out.println("<td>" + rs.getString("userEmail") + "</td>");
            out.println("</tr>");
        }
        
        out.println("</table>");
        
    } catch(Exception e) {
        out.println("<p>데이터베이스 연결 실패: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        try {
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>