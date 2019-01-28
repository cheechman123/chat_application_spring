<#import "parts/common.ftl" as c><#-- импортирует шаблон и обозначает его как с -->
<#import "parts/login.ftl" as l>
<@c.page>
<#--<div class = "form">-->
<!-- работа шаблона с формой логин, перенаправление запроса на метод Логин и обозначение переменной isRegister как false, так как страница не является регистрационной -->
<@l.login "/login" false/>

<#--</div>-->
</@c.page>




<!--<form action="/login" method="post">-->
    <!--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
    <!--<div><label> Password: <input type="password" name="password"/> </label></div>-->
    <!--<input type="hidden" name = "_csrf" value = "{{_csrf.token}}"/>-->
    <!--<div><input type="submit" value="Sign In"/></div>-->
<!--</form>-->

