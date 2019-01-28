<#import "parts/common.ftl" as c><#-- импортирует шаблон и обозначает его как с -->
<#import "parts/login.ftl" as l>
<#-- начало работы шаблона -->
<@c.page>
<div class = "mb-1">Add new user</div><#-- отступ на 1 колонку снизу от надписи -->
<div class = "form">
    ${message?ifExists}<#-- если пользователь существует, выведется сообщение -->
    <@l.login "/registration" true/><#-- вызов макроса формы логина с путем Регистрация и значением true для поля isRegister -->
</div>
</@c.page>
<#-- конец работы шаблона -->

<!--<form action="/registration" method="post">-->
    <!--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
    <!--<div><label> Password: <input type="password" name="password"/> </label></div>-->
    <!--<input type="hidden" name = "_csrf" value = "{{_csrf.token}}"/>-->
    <!--<div><input type="submit" value="Sign In"/></div>-->
<!--</form>-->
