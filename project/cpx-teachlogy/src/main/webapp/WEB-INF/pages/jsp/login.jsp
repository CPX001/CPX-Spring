<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- 导入表达式 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/pages/commonCss.jsp"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/modernizr.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/js/custom.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#login').submit(function(){
            var u = jQuery('#username').val();
            var p = jQuery('#password').val();
            if(u == '' && p == '') {
                jQuery('.login-alert').fadeIn();
                return false;
            }
        });
    });
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>深圳市城鲜品智能科技有限公司</title>
</head>
<body class="loginpage">
	<div class="loginpanel">
    	<div class="loginpanelinner">
        
        <div class="logo animate0 bounceIn"><img src="${pageContext.request.contextPath}/themes/images/logo.png" alt="欢迎光临" /></div>
        
        <form id="login" action="${pageContext.request.contextPath}/LoginUserServlet" method="post">
            <div class="inputwrapper login-alert">
                <div class="alert alert-error">Invalid username or password</div>
            </div>
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="username" id="username" placeholder="请输入用户名" />
            </div>
            <div class="inputwrapper animate2 bounceIn">
                <input type="password" name="password" id="password" placeholder="请输入密码" />
            </div>
            <div class="inputwrapper animate3 bounceIn">
                <button name="submit">Sign In</button>
            </div>
            <div class="inputwrapper animate4 bounceIn">
                <label><input type="checkbox" class="remember" name="signin" /> Keep me sign in</label>
            </div>
            
        </form>
    </div><!--loginpanelinner-->
</div><!--loginpanel-->

<div class="loginfooter">
    <p>&copy; 2013. Shamcey Admin Template. All Rights Reserved.</p>
</div>
</body>
</html>