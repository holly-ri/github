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
		out.print("�� �����ϴ� ID�Դϴ� .<br/><br/>");
	} else {
		out.print("�� ��밡���մϴ�. <br/><br/>");
	}
	%>
	<a href="#" onClick="self.close()">�ݱ�</a>
</body>
</html>





