<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("idKey");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<script type="text/javascript">
	function loginCheck() {
		if(document.loginFrm.id.value == "") {
			alert("���̵� �Է��ϼ���");
			document.loginFrm.id.focus();
			return;
		}
		if(document.loginFrm.pwd.value == "") {
			alert("��й�ȣ�� �Է��ϼ���");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body align="center">
<% if(id != null) { %>
	<%=id %>�� ȯ�� �մϴ�.
	<p>��� ȭ�� ��� �����մϴ�</p>
	<a href="logout.jsp">�α׾ƿ�</a>
<% } else { %>
		<form name="loginFrm" method="post" action="loginProc.jsp">
			<h4>�α���</h4>
			<p>�� �� �� : <input name="id"></p>
			<p>��й�ȣ : <input type="password" name="pwd"></p>
			<input type="button" value="�α���" onclick="loginCheck()">&emsp;
			<input type="button" value="ȸ������" onClick="location.href='member.jsp'">
		</form>
<% } %>
</body>
</html>