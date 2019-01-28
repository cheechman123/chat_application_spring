<#macro login path isRegisterForm><#-- макрос формы регистрации -->
<form action="${path}" method="post"><#-- action="${path}" означает перенаправление на определенную страницу в зависимости от переданного значения в макрос -->
<#--  -->
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">User Name : </label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control" placeholder="User name">
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password: </label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="Password">
        </div>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
<#-- если это форма НЕ регистрации, то показать ссылку для добавления нового пользователя -->
    <#if !isRegisterForm><a href = "/registration">Add new user</a></#if>
    <button class="btn btn-primary" type="submit">
    <#-- если это форма регистрации, то показать Create, иначе если форма Логин, то Sign In -->
        <#if isRegisterForm>Create<#else >Sign In</#if>
    </button>

</form>
</#macro>

<#-- макрос формы выхода из профиля -->
<#macro logout>
<div class="logout_form">
    <form action="/logout" method="post">
    <#-- эта строка нужна в каждой форме с методом post, без нее данная форма работать не будет -->
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button class="btn btn-primary" type="submit">Sign Out</button>
    </form>
</div>
</#macro>

