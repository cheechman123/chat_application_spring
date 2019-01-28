<#import "parts/common.ftl" as c><#-- импортирует шаблон и обозначает его как с -->

<@c.page>
User editor
<!-- форма с перенаправлением запросов на user, выводит форму для редактирования имени пользователя и его прав -->
<form action="/user" method="post">
    <!-- выводит имя пользователя и тут же его можно редактировать -->
    <input type="text" name="username" value="${user.username}">
    <!-- вывод списка ролей пользователя и возможность убрать или добавить пользователю права -->
    <#list roles as role>
    <div>
        <!-- вывод чекбоксов с правами пользователя -->
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
</form>
</@c.page>
