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
<title>�����ȣ �˻�</title>
<script>
	function loadSearch() {
		frm = document.zipFrm;
		if(frm.area3.value == "") {
			alert("���θ��� �Է��ϼ���");
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
	���θ� �Է� : <input name = "area3">&emsp;
	<input type="button" value="�˻�" onClick="loadSearch();"><br/><br/>
	<%
		if(search.equals("y")) {
			if(vlist.isEmpty()) {
				out.print("�˻��� ����� �����ϴ�.<br/>");
			} else {
				out.print("�˻� ��, �Ʒ� �����ȣ�� Ŭ���ϸ� �ڵ����� �Էµ˴ϴ�.<br/><br/>");
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
	<a href="#" onclick="self.close()">�ݱ�</a>
	<input type="hidden" name="search" value="y">
</form>
</body>
</html>






