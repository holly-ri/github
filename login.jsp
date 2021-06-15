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
<title>로그인</title>
<script type="text/javascript">
	function loginCheck() {
		if(document.loginFrm.id.value == "") {
			alert("아이디를 입력하세요");
			document.loginFrm.id.focus();
			return;
		}
		if(document.loginFrm.pwd.value == "") {
			alert("비밀번호를 입력하세요");
			document.loginFrm.pwd.focus();
			return;
		}
		document.loginFrm.submit();
	}
</script>
</head>
<body align="center">
<% if(id != null) { %>
	<%=id %>님 환영 합니다.
	<p>모든 화면 사용 가능합니다</p>
	<a href="logout.jsp">로그아웃</a>
<% } else { %>
		<form name="loginFrm" method="post" action="loginProc.jsp">
			<h4>로그인</h4>
			<p>아 이 디 : <input name="id"></p>
			<p>비밀번호 : <input type="password" name="pwd"></p>
			<input type="button" value="로그인" onclick="loginCheck()">&emsp;
			<input type="button" value="회원가입" onClick="location.href='member.jsp'">
		</form>
<% } %>
</body>
</html>