package com.chat.hello.domain;

import org.springframework.security.core.GrantedAuthority;
//перечисление для содержания ролей пользователей
public enum Role implements GrantedAuthority {
    USER, ADMIN;

    //возвращает значение роли (обозначено как USER, ADMIN...)
    @Override
    public String getAuthority() {
        return name();
    }
}
