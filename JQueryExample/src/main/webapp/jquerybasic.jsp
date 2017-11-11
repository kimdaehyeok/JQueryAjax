<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="/JQueryExample/js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>
</head>

<script>
	$(document).ready(function(){
		$("#getGetButton").click(function(){
			alert($('#getText').val());
			$.ajax({
				url : '/JQueryExample/jquery.do',
				type : 'GET',
				dataType:'text',
				data : {
						"text" : $('#getText').val()
					},
				success:function(data)
				{
					alert(data);
				},
				error:function(data){
					alert(data);
				}
			});
		});
	});
	
	$(document).ready(function(){
		$("#getPostButton").click(function(){
			alert($('#getText').val());
			$.ajax({
				url : '/JQueryExample/jquery.do',
				type : 'POST',
				dataType:'text',
				data : {
						"text" : $('#getText').val()
					},
				success:function(data)
				{
					var jsonObject = jQuery.parseJSON(data);
					alert(jsonObject.name);
					alert(jsonObject.age);
				},
				error:function(data){
					alert(data);
				}
			});
		});
	});
</script>

<body>

<input type="text" id = "getText" value=""/>
<button id="getGetButton">JSON GET Button</button>
<button id="getPostButton">JSON POST Button</button>

</body>
</html>