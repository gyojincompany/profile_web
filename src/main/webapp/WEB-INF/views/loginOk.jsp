<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>## LeeGyojin Profile Home</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<%@ include file="include/header.jsp" %>

	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
		<tbody>
			<tr>
				<td><span class="title01">DEVELOPER GYOJIN'S PROFILE</span></td>
			</tr>
			<tr>
				<td><span class="title02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span></td>
			</tr>
			<tr>
				
				<table width="70%" border="0" cellspacing="0" cellpadding="10">
					<tbody>
						<tr>							
							<td height="500" bgcolor="#D5D5D5">
								<center>
								<table border="0" cellspacing="0" cellpadding="10">
									
									<%
										//int checkId = (int)request.getAttribute("checkId");
										//int checkPw = (int)request.getAttribute("checkPw");
										
										int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
                              			int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString());
									
										if(checkId == 0) {
									%>
										<script language="JavaScript">
											alert("���̵� �������� �ʽ��ϴ�.");
											history.go(-1);
										</script>									
									
									<%
										} else if (checkPw == 0) {
									%>
										<script language="JavaScript">
											alert("��й�ȣ�� Ʋ���ϴ�.");
											history.go(-1);
										</script>
									<%
										} else {										
											
											session.setAttribute("ValidMem", "yes");
										}
									
									%>										
									
									<tr>
										<td class="td-type01">
											${mName}�� �ȳ��ϼ���.<br>	
											�α��ο� �����ϼ̽��ϴ�.<br>
										</td>
									</tr>
									<tr>
										<td class="td-type01" align="center">		
											<input id="button01" type="button" value="ȸ����������" onclick="javascript:window.location='infoModify'">
										</td>										
									</tr>
									
																	
								</table>
								</center>							
							</td>														
						</tr>		
					</tbody>				
				</table>
				
			</tr>			
		</tbody>	
	</table>
	</center>
	
	<%@ include file="include/footer.jsp" %>	
</body>
</html>