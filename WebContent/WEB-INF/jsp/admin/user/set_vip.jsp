<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/inc/taglibs.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <title>网站信息</title>  
    <link rel="stylesheet" href="${path }/admin/css/pintuer.css"/>
    <link rel="stylesheet" href="${path }/admin/css/admin.css"/>
    <script src="${path }/public/js/jquery-1.8.2.min.js"></script>
    <script src="${path }/admin/js/pintuer.js"></script>  
    <script type="text/javascript" src="<%=request.getContextPath()%>/public/js/ajaxfileupload.js"></script>
    
    <script type="text/javascript">
    function yanzheng(){
    	$("#form").submit();
    }
    
    </script> 
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>链接信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${path}/admin/user/set_vip.do" id="form">
      <div class="form-group">
        <div class="label">
          <label>用户：</label>
        </div>
        <div class="field">
          <input type="text" class="input" value="${user.loginname}" size="100" id="name" readonly="readonly"/>
          <input type="hidden" name="userId" value="${user.id}" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>VIP等级：</label>
        </div>
        <div class="field">
	        <select class="input" name="vipLevel">
		        	<c:forEach items="${jifenGroupList}" var="jifenGroup">
		        	<option value="${jifenGroup.classname}" <c:if test="${jifenGroup.classname ==user.vipLevel }">selected="selected"</c:if> >${jifenGroup.classname}</option>
	        		</c:forEach>
	        </select>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button border-main icon-check-square-o" type="button" onclick="yanzheng();"> 提交</button>
          <button class="button border-red icon-tags" type="button" onclick="window.history.go(-1);"> 返回</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>