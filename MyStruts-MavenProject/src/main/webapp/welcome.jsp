<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Information</title>
</head>
<body>
	<h1>Struts 2 Hello World Example</h1>

	<h2 >
		Hello your details are stored

		<s:form action="welcome" namespace="/welcome">

			<s:property value="Username" />
		</s:form>
	</h2>
</body>
</html>