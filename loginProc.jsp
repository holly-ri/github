<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class = "member.MemberMgr"></jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String msg = "�α��ο� �����߽��ϴ�.";
	
	boolean result = mMgr.loginMember(id, pwd);
	if(result) {
		session.setAttribute("idKey", id);
		msg= "�α��ο� ����";
	}
%>
<script>
	alert("<%=msg%>");
	location.href="login.jsp";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>