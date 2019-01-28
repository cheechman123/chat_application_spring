<#import "parts/common.ftl" as c><#-- импортирует шаблон и обозначает его как с -->
<#-- вызов шаблона отображения страницы -->
<@c.page>
List of users
<#-- вывод списка пользователей и их прав в виде таблицы с использованием списка -->

<table>
    <thead>
    <tr>
    <#-- имя и роль пользователя -->
        <th>Name</th>
        <th>Role</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <#-- сам вывод -->
    <#list users as user>
    <tr>
        <td>${user.username}</td>
    <#-- если ролей несколько, то они выводятся с сепаратором ", " -->
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
    <#-- ссылка на редактирование пользователя по id, передаваемому в ссылке ниже -->
        <td><a href="/user/${user.id}">edit</a></td>
    </tr>
    </#list>
    </tbody>
</table>
</@c.page>