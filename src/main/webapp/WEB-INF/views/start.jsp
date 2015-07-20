<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%
String contextRoot = request.getContextPath();
%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
</body>
<script type="text/javascript">

console.log("${ctx}")
console.log("${contextRoot}");

</script>
</html>
