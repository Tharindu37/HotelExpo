package bo.custom;

import adviser.UnAuthorized;
import bo.SuperBo;
import dto.UserDto;
import dto.response.LoginResponseDto;

import java.sql.SQLException;

public interface UserBo extends SuperBo {
    public boolean createUser(UserDto dto) throws SQLException, ClassNotFoundException;
    public LoginResponseDto login(String email, String password) throws SQLException, ClassNotFoundException, UnAuthorized;
}
