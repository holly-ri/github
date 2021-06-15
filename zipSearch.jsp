<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.*" %>
<%@ page import = "member.ZipcodeBean" %>
<jsp:useBean id="mMgr" class="member.MemberMgr"></jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");
	String search = request.getParameter("search");
	String area3 = null;
	Vector<ZipcodeBean> vlist = null;
	if(search.equals("y")) {
		area3 = request.getParameter("area3");
		vlist = mMgr.zipcodeRead(area3);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>우편번호 검색</title>
<script>
	function loadSearch() {
		frm = document.zipFrm;
		if(frm.area3.value == "") {
			alert("도로명을 입력하세요");
			frm.area3.focus();
			return;
		}
		frm.action = "zipSearch.jsp"
		frm.submit();
	}
	function sendAdd(zipcode, adds) {
		opener.document.regFrm.zipcode.value = zipcode;
		opener.document.regFrm.address.value = adds;
		self.close();
	}
</script>
</head>
<body>
<form name="zipFrm" method="post">
	도로명 입력 : <input name = "area3">&emsp;
	<input type="button" value="검색" onClick="loadSearch();"><br/><br/>
	<%
		if(search.equals("y")) {
			if(vlist.isEmpty()) {
				out.print("검색된 결과가 없습니다.<br/>");
			} else {
				out.print("검색 후, 아래 우편번호를 클릭하면 자동으로 입력됩니다.<br/><br/>");
			}
			for(int i = 0; i <vlist.size(); i++) {
				ZipcodeBean bean = vlist.get(i);
				String rZipcode = bean.getZipcode();
				String rArea1 = bean.getArea1();
				String rArea2 = bean.getArea2();
				String rArea3 = bean.getArea3();
				String adds = rArea1 + rArea2 + rArea3 + " ";
	%>
	<a href="#" onClick="javascript:sendAdd('<%=rZipcode %>','<%=adds %>')">
		<%=rZipcode %><%=adds %></a><br/>
	<%
			}
		}
	%>	 
	<a href="#" onclick="self.close()">닫기</a>
	<input type="hidden" name="search" value="y">
</form>
</body>
</html>






