<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if(id=="") {
			alert("아이디를 입력하세요");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300, height=150");
	}
	function zipSearch() {
		url ="zipSearch.jsp?search=n"
		window.open(url, "ZipSearch", "width=500, height=300, scrollbars=yes")
	}
</script>
</head>
<body>
	<form name="regFrm" method="post" action="memberProc.jsp">
		<table border="1" align="center" width="800">
			<tr bgcolor="#B2CCFF" align="center">
				<td  colspan="3"><b>회원 가입</b></td>
			</tr>
			<tr>
				<td width="20%">아이디</td>
				<td width="50%">
					<input name="id" size="20" placeholder="영문과 숫자만 가능"> 
					<input type="button" value="ID중복확인" onClick="idCheck(this.form.id.value)">
				</td>
				<td width="30%">아이디를 적어 주세요.</td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pwd" size="20"></td>
				<td>패스워드를 적어주세요.</td>
			</tr>
			<tr>
				<td>패스워드 확인</td>
				<td><input type="password" name="repwd" size="20"></td>
				<td>패스워드를 확인합니다.</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="name" size="20">
				</td>
				<td>이름을 적어주세요.</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					남<input type="radio" name="gender" value="1" checked> 
					여<input type="radio" name="gender" value="2">
				</td>
				<td>성별을 선택 하세요.</td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input name="birthday" size="10">ex)830815</td>
				<td>생년월일를 적어 주세요.</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input name="email" size="30">
				</td>
				<td>이메일를 적어 주세요.</td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input name="zipcode" size="10" readonly>
					<input type="button" value="우편번호찾기" onClick="zipSearch()">
				</td>
				<td>우편번호를 검색하세요.</td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input name="address" size="45"></td>
				<td>주소를 적어 주세요.</td>
			</tr>
			<tr>
				<td>취미</td>
				<td>인터넷<input type="checkbox" name="hobby" value="인터넷">&emsp;
					여행<input type="checkbox" name="hobby" value="여행">&emsp;
					게임<input type="checkbox" name="hobby" value="게임">&emsp; 
					영화<input type="checkbox" name="hobby" value="영화">&emsp; 
					운동<input type="checkbox" name="hobby" value="운동">&emsp;
				</td>
				<td>취미를 선택 하세요.</td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job">
						<option value="0" selected>선택하세요.
						<option value="회사원">회사원
						<option value="연구전문직">연구전문직
						<option value="교수학생">교수학생
						<option value="일반자영업">일반자영업
						<option value="공무원">공무원
						<option value="의료인">의료인
						<option value="법조인">법조인
						<option value="종교,언론,에술인">종교.언론/예술인
						<option value="농,축,수산,광업인">농/축/수산/광업인
						<option value="주부">주부
						<option value="무직">무직
						<option value="기타">기타
					</select>
				</td>
				<td>직업을 선택 하세요.</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				    <input type="button" value="회원가입" onClick="inputCheck()">&emsp; 
				    <input type="reset" value="다시쓰기">&emsp;
				    <input type="button" value="로그인" onClick="location.href='login.jsp'">
				 </td>
			</tr>
		</table>
	</form>
</body>
</html>