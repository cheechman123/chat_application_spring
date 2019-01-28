<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div class = "mb-1">Add new user</div>
<div class = "form">
    ${message?ifExists}
    <@l.login "/registration" true/>
</div>
</@c.page>


<!--<form action="/registration" method="post">-->
    <!--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
    <!--<div><label> Password: <input type="password" name="password"/> </label></div>-->
    <!--<input type="hidden" name = "_csrf" value = "{{_csrf.token}}"/>-->
    <!--<div><input type="submit" value="Sign In"/></div>-->
<!--</form>-->
