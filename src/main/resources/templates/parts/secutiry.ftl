<#-- объявление переменной типа boolean, обозначающая, авторизован пользователь или нет -->
<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>
<#-- если переменная истинна, то объявляются переменные с объектом пользователя и его именем, а так же флагом Админ он или нет -->
<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()

    >
<#-- если переменная ложная, то есть пользователь не авторизован, то пишется, что пользователь не авторизован и он не Админ -->
<#else >
    <#assign
    name = "unknown"
    isAdmin = false
    >
</#if>