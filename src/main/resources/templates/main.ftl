<#import "parts/common.ftl" as c><#-- импортирует шаблон и обозначает его как с -->


<@c.page><#-- начало работы шаблона с -->
<div class="form-row"><#-- форма для ввода фильтра -->
    <div class="form-group col-md-6"><#-- 6 - это отступ в 6 колонок -->
        <form method="get" action="/main" class="form-inline">
            <input type="text" name="filter" class="form-control" value="${filter?ifExists}"<#-- выводит значение фильтра, если такое существует -->
                   placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-2">Search</button> <#-- отступ слева от кнопки в 2 колонки -->
        </form>
    </div>
</div>
<div><#-- ссылка, при нажатии на которую выпадает форма ввода сообщения -->
    <a class="btn btn-primary mb-3" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
       aria-controls="collapseExample">
        Add new message
    </a>
</div>
<div class="collapse" id="collapseExample"><#-- сворачивающееся меню добавления сообщения, которое открывается при нажатии на ссылку выше -->
    <div class="form-group ">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Enter name">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="email" placeholder="Enter email">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="tag" placeholder="Tag">
            </div>

            <div class="form-group"><#-- выбор файла -->
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label class="custom-file-label" for="customFile">Choose file</label>
                </div>
            </div>

            <div class="form-group"><input type="hidden" name="_csrf" value="${_csrf.token}">
                <button class="btn btn-primary" type="submit">Add</button>
            </div>
        </form>
    </div>
</div>

<#-- -->
<div class = "card-columns"><#-- отображение сообщений в виде карточек (в несколько колонок) с помощью списка -->
    <#list messages as message>
        <div class="card my-3" style="width: 18rem">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.name}</span>
                <span>${message.email}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No Messages
    </#list>
</div>
</@c.page><#-- конец работы шаблона с -->
