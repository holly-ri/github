<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if(id=="") {
			alert("���̵� �Է��ϼ���");
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
				<td  colspan="3"><b>ȸ�� ����</b></td>
			</tr>
			<tr>
				<td width="20%">���̵�</td>
				<td width="50%">
					<input name="id" size="20" placeholder="������ ���ڸ� ����"> 
					<input type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">
				</td>
				<td width="30%">���̵� ���� �ּ���.</td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td><input type="password" name="pwd" size="20"></td>
				<td>�н����带 �����ּ���.</td>
			</tr>
			<tr>
				<td>�н����� Ȯ��</td>
				<td><input type="password" name="repwd" size="20"></td>
				<td>�н����带 Ȯ���մϴ�.</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input name="name" size="20">
				</td>
				<td>�̸��� �����ּ���.</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					��<input type="radio" name="gender" value="1" checked> 
					��<input type="radio" name="gender" value="2">
				</td>
				<td>������ ���� �ϼ���.</td>
			</tr>
			<tr>
				<td>�������</td>
				<td><input name="birthday" size="10">ex)830815</td>
				<td>������ϸ� ���� �ּ���.</td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input name="email" size="30">
				</td>
				<td>�̸��ϸ� ���� �ּ���.</td>
			</tr>
			<tr>
				<td>�����ȣ</td>
				<td><input name="zipcode" size="10" readonly>
					<input type="button" value="�����ȣã��" onClick="zipSearch()">
				</td>
				<td>�����ȣ�� �˻��ϼ���.</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input name="address" size="45"></td>
				<td>�ּҸ� ���� �ּ���.</td>
			</tr>
			<tr>
				<td>���</td>
				<td>���ͳ�<input type="checkbox" name="hobby" value="���ͳ�">&emsp;
					����<input type="checkbox" name="hobby" value="����">&emsp;
					����<input type="checkbox" name="hobby" value="����">&emsp; 
					��ȭ<input type="checkbox" name="hobby" value="��ȭ">&emsp; 
					�<input type="checkbox" name="hobby" value="�">&emsp;
				</td>
				<td>��̸� ���� �ϼ���.</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<select name="job">
						<option value="0" selected>�����ϼ���.
						<option value="ȸ���">ȸ���
						<option value="����������">����������
						<option value="�����л�">�����л�
						<option value="�Ϲ��ڿ���">�Ϲ��ڿ���
						<option value="������">������
						<option value="�Ƿ���">�Ƿ���
						<option value="������">������
						<option value="����,���,������">����.���/������
						<option value="��,��,����,������">��/��/����/������
						<option value="�ֺ�">�ֺ�
						<option value="����">����
						<option value="��Ÿ">��Ÿ
					</select>
				</td>
				<td>������ ���� �ϼ���.</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				    <input type="button" value="ȸ������" onClick="inputCheck()">&emsp; 
				    <input type="reset" value="�ٽþ���">&emsp;
				    <input type="button" value="�α���" onClick="location.href='login.jsp'">
				 </td>
			</tr>
		</table>
	</form>
</body>
</html>