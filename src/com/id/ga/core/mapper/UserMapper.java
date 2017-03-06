package com.id.ga.core.mapper;

import java.sql.SQLException;

import com.id.ga.core.model.User;

public interface UserMapper {

	int checkLogin(User user) throws SQLException;
}
