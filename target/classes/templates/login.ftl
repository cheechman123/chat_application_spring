<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<#--<div class = "form">-->
<@l.login "/login" false/>

<#--</div>-->
</@c.page>




<!--<form action="/login" method="post">-->
    <!--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
    <!--<div><label> Password: <input type="password" name="password"/> </label></div>-->
    <!--<input type="hidden" name = "_csrf" value = "{{_csrf.token}}"/>-->
    <!--<div><input type="submit" value="Sign In"/></div>-->
<!--</form>-->

