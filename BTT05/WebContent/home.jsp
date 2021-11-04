<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JSP</title>

</head>
<style>
.content {
	padding: 0 30px;
	height: calc(100vh - 19.2vh);
}
</style>
<body>
	<%@ page import="javax.servlet.RequestDispatcher" %>
	<%@ page import="Model.accountModel"%>
	<%@ page import="Controller.AccountList"%>
	<jsp:useBean id="AccountInfo" class="Model.accountModel"
		scope="application"></jsp:useBean>
	<jsp:setProperty property="*" name="AccountInfo" />
	<%

		String confirmPass = request.getParameter("confirmPass");
	if (confirmPass != null) {
		if (confirmPass.equals(AccountInfo.getPassword())) {
			for (int i = 0; i < AccountList.listAccount.size(); i++) {
				if (AccountList.listAccount.get(i).getUsername().equals(AccountInfo.getUsername())) {
					RequestDispatcher rq = request.getRequestDispatcher("register");
					rq.forward(request, response);
					break;
				}
			}
			AccountList.listAccount.add(AccountInfo);
		}
		AccountList.listAccount.add(AccountInfo);
	} 
	else {
		int flag= 0;
		for(int i=0; i< AccountList.listAccount.size(); ++i)
		{
			if (AccountList.listAccount.get(i).getUsername().equals(AccountInfo.getUsername()) && AccountList.listAccount.get(i).getPassword().equals(AccountInfo.getPassword()))
			{
				flag=1;
				break;
			}	
		}
		
		if (flag == 0)
		{
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("login");
            requestDispatcher.forward(request, response);
		}

	}
	%>
	<%@include file="header.jsp"%>
	<div class="content">Welcome to Employee Management System</div>
	<%@include file="footer.jsp"%>

</body>

</html>