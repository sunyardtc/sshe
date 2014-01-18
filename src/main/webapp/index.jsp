<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Welcome!</title>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/jquery.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="jslib/jquery-easyui-1.3.5/themes/bootstrap/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="jslib/jquery-easyui-1.3.5/themes/icon.css" type="text/css"></link>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.1/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jslib/jquery-easyui-1.3.1/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" href="jslib/jquery-easyui-1.3.1/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="jslib/jquery-easyui-1.3.1/themes/icon.css" type="text/css"></link>
<style>
body {
	background-image: url('image/green.jpg');
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

td {
	overflow: hidden;
}

form {
	padding: 0px;
	margin: 0px;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#index_loginForm').form({
			url : '${pageContext.request.contextPath}/userAction!login.action',
			success : function(r) {
				var obj = jQuery.parseJSON(r);
				if (obj.success) {
					window.url="/main/home.jsp";
				}
				$.messager.show({
					title : '提示',
					msg : obj.msg
				});
			}
		});
		$('#index_loginForm input').bind('keyup', function(event) {/* 增加回车提交功能 */
			if (event.keyCode == '13') {
				$('#index_loginForm').submit();
			}
		});

		window.setTimeout(function() {
			$('#index_loginForm input[name=name]').focus();
		}, 0);
		
		$('#index_reg').click(function(){
			$('#reg_regDialog').dialog('open');
		});
	});
</script>
</head>
<body>	
<div >
 <table width="100%" height="100%">
 	<tr height="35%"></tr>
 	<tr>
 		<td>
 			<table width="100%" height="100%" >
 				<tr><td width="30%"/>
 					<td>
 						<form action="" method="post" style="padding: 0px;margin: 0px;">
 						<table width="100%" height="100%">
							<tr height="20%"></tr>
							<tr height="25%" >
								<th width="40%" align="right">用户名：</th><td><input type="text" name="u.username"></td>
							</tr>
							<tr height="25%">
								<th width="40%" align="right">密&nbsp;&nbsp;码：</th><td><input type="password" name="u.pwd"></td>								
							</tr>
							<tr ><td align="center" colspan="2"><button type="submit">登录</button>&nbsp;&nbsp;<button id="index_reg">注册</button>&nbsp;&nbsp;</td></tr>
						</table></form>
					</td>
 					<td width="30%"/>
 				</tr>
 			</table>
 		</td>
 	</tr>
 	<tr height="23%"></tr>
 
 </table>
</div>

	<jsp:include page="/reg.jsp"></jsp:include>

</body>
</html>
