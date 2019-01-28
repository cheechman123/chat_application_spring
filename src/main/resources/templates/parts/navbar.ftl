<#include "secutiry.ftl"><#-- импортирует страницу и вставляет ее как часть кода -->
<#import "login.ftl" as l><#-- импортирует шаблон и обозначает его как l -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<#-- название проекта -->
    <a class="navbar-brand" href="/">Sweater</a>
<#-- отображение кнопки меню с тремя полосками, если размер экрана меньше чем указан в navbar-expand-lg (тут указан lg, то есть большой) -->
<#-- если же экран больше или нужного размера, то ссылки ниже будут отображаться -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
<#-- те самые "ссылки ниже", то есть они отображаются либо в меню, когда экран маленький, либо в строке сверху -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Messages</a>
            </li>
        <#-- если пользователь Админ, то ему отображается ссылка на список пользователей и возможность редактирования -->
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User list</a>
            </li>
            </#if>
        </ul>
    <#-- отображение имени пользователя и вызов шаблона формы выхода из аккаунта -->
        <div class="navbar-text mr-3">${name}</div>
        <@l.logout />
    </div>
</nav>