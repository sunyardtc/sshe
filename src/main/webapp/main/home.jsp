<%@ page language="java" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
<head>
	<title>Welcome!</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/jquery.min.js"></script>
	<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="jslib/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js"></script>
	<link rel="stylesheet" href="jslib/jquery-easyui-1.3.5/themes/bootstrap/easyui.css" type="text/css"></link>
	<link rel="stylesheet" href="jslib/jquery-easyui-1.3.5/themes/icon.css" type="text/css"></link>
</head>

<body class="easyui-layout" style="background-image: url('image/green.jpg');">
	<div data-options="region:'north',title:'North',split:true,border:false" style="height:100px;">1</div>
	<div data-options="region:'south'" style="height:100px;">2</div>
	<div data-options="region:'west',title:'菜单',split:true" style="width:120px;"></div>
	<div data-options="region:'center',title:'center'" style="padding:5px;background:#eee;">center div;</div>
</body>
</html>
