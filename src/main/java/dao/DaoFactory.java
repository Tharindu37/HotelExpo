package dao;

import dao.custom.impl.UserDaoImpl;

public class DaoFactory {
    private static DaoFactory daoFactory;
    private DaoFactory(){}

    public enum DaoType{
        USER
    }
    public static DaoFactory getInstance(){
        return daoFactory==null?daoFactory=new DaoFactory():daoFactory;
    }
    public  <T> T getDao(DaoType type){
        switch (type){
            case USER:
                return (T) new UserDaoImpl();
            default:
                return null;
        }
    }
}
