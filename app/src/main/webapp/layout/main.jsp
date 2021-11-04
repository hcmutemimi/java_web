<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
<tiles:getAsString name="title"/></title>

<style type="text/css">
header{
	height: 5%;
	width: 100%;
	position: relative;
	background-color: #f4f4f4;

}
.row {
	display: flex;
	height: 95%;
}
aside{
	width: 15%;
	position: relative;
	background-color: #f4f4f4;
	border-top: 1px solid #a0a0a0;
}
section{
	width: 85%;
	position: relative;
}
</style>

</head>
<body>
	<header>
		<tiles:insertAttribute name="navbar" />
	</header>

	<div class="row">
		<aside>
			<tiles:insertAttribute name="menu" />
		</aside>
		<section>
			<tiles:insertAttribute name="body" />
		</section>
	</div>

</body>
</html>