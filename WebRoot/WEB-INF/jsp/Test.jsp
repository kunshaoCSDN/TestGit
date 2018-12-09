<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" 
		src="${pageContext.request.contextPath }/js/jquery.min.js" ></script>
</head>
<script type="text/javascript">
function test(){
var string = $("#mytest").val();
$.ajax({
url:"${pageContext.request.contextPath}/test",
type:"post",
data:JSON.stringify(string),
contextType:"application/json;charset=utf=8",
success:function(data){
	alert(data);
}
});
}
</script>
<body>
	<input type="text" id="mytest" >
	<button onclick="test()" >按钮</button>
</body>
</html>