<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="mMgr" class = "member.MemberMgr"></jsp:useBean>
<jsp:useBean id="bean" class = "member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>
<%
	boolean result = mMgr.insertMember(bean);
	String msg = "ȸ�����Կ� ���� �߽��ϴ�.";
	String location = "member.jsp";
	if(result) {
		msg = "ȸ�����Կ� �����߽��ϴ�.";
		location = "login.jsp"; 
	}
%>
<script type="text/javascript">
	alert("<%=msg%>");
	location.href = "<%=location %>";
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