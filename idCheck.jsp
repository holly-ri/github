<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="member.MemberMgr"/>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=id %>
	<% if(result) {
		out.print("는 존재하는 ID입니다 .<br/><br/>");
	} else {
		out.print("는 사용가능합니다. <br/><br/>");
	}
	%>
	<a href="#" onClick="self.close()">닫기</a>
</body>
</html>





