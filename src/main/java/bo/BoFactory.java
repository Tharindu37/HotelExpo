package bo;

import bo.custom.impl.UserBoImpl;
import dao.DaoFactory;

public class BoFactory {
    private static BoFactory boFactory;
    private BoFactory(){}

    public enum BoType{
        USER
    }
    public static BoFactory getInstance(){
        return boFactory==null?boFactory=new BoFactory():boFactory;
    }
    public <T> T getBo(BoType type){
        switch (type){
            case USER:
                return (T) new UserBoImpl();
            default:
                return null;
        }
    }
}
