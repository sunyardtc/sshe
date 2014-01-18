<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(function() {
		$('#user_reg_regForm').form({
			url : '${pageContext.request.contextPath}/userAction!reg.action',
			success : function(r) {
				var obj = jQuery.parseJSON(r);
				if (obj.success) {
					$('#reg_regDialog').dialog('close');
				}
				$.messager.show({
					title : '提示',
					msg : obj.msg
				});
			}
		});
		$('#user_reg_regForm input').bind('keyup', function(event) {/* 增加回车提交功能 */
			if (event.keyCode == '13') {
				$('#reg_regForm').submit();
			}
		});
	});
</script>
<div id="reg_regDialog" style="width: 250px;" class="easyui-dialog" data-options="title:'注册',closed:true,modal:true,buttons:[{
				text:'注册',
				iconCls:'icon-edit',
				handler:function(){
					$('#reg_regForm').submit();
				}
			}]">
	<form id="reg_regForm" method="post">
		<table>
			<tr>
				<th>登录名</th>
				<td><input name="name" class="easyui-validatebox" data-options="required:true,missingMessage:'登陆名称必填'" /></td>
			</tr>
			<tr>
				<th>密码</th>
				<td><input name="pwd" type="password" class="easyui-validatebox" data-options="required:true" /></td>
			</tr>
			<tr>
				<th>重复密码</th>
				<td><input name="rePwd" type="password" class="easyui-validatebox" data-options="required:true,validType:'eqPwd[\'#reg_regForm input[name=pwd]\']'" /></td>
			</tr>
		</table>
	</form>
</div>