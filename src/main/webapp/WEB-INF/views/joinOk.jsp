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
										
										int checkId = Integer.parseInt(request.getAttribute("checkId").toString());                              			
									
										if(checkId == 1) {
									%>
										<script language="JavaScript">
											alert("�Է��Ͻ� ���̵� ������Դϴ�.");
											history.go(-1);
										</script>		
									<% } %>
									
									<tr>
										<td class="td-type01">
											${mName}�� ȸ�� ������ ���ϵ帳�ϴ�!!	
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