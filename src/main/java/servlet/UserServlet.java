package servlet;


import bo.BoFactory;
import bo.custom.UserBo;
import com.google.gson.Gson;
import dto.UserDto;
import dto.request.RequestLoginDto;
import dto.request.RequestUserDto;
import dto.response.StandardResponse;
import io.jsonwebtoken.Jwts;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.*;
import java.sql.SQLException;
import java.util.stream.Collectors;


@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private UserBo userBo= BoFactory.getInstance().getBo(BoFactory.BoType.USER);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if (req.getParameter("type").equals("signup")){
            RequestUserDto requestUserDto=new Gson().fromJson(req.getReader(),RequestUserDto.class);
            UserDto userDto=new UserDto(
                    requestUserDto.getEmail(),
                    requestUserDto.getfName(),
                    requestUserDto.getlName(),
                    requestUserDto.getContact(),
                    requestUserDto.getPassword(),
                    true
            );
            resp.setContentType("application/json");
            String jsonObj="";
            try {
                if (userBo.createUser(userDto)){
                    jsonObj=new Gson().toJson(
                            new StandardResponse(201,"User saved!",null)
                    );
                    resp.getWriter().write(jsonObj);
                }else {
                    jsonObj=new Gson().toJson(
                            new StandardResponse(500,"Internal Server Error!",null)
                    );
                    resp.getWriter().write(jsonObj);
                }
            } catch (Exception e) {
                jsonObj=new Gson().toJson(
                        new StandardResponse(500,e.getMessage(),e)
                );
                resp.getWriter().write(jsonObj);
            }
        }else {
            resp.setContentType("application/json");
            String jsonObj="";
            RequestLoginDto requestLoginDto=
                    new Gson().fromJson(req.getReader(),RequestLoginDto.class);

            try{
                jsonObj=new Gson().toJson(
                        new StandardResponse(200,"Successful",userBo.login(requestLoginDto.getEmail(),requestLoginDto.getPassword()))
                );
                resp.getWriter().write(jsonObj);
            }catch (Exception e){
                e.printStackTrace();
                jsonObj=new Gson().toJson(
                        new StandardResponse(500,e.getMessage(),e)
                );
                resp.getWriter().write(jsonObj);
            }
        }


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do Get</h1>");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do Put</h1>");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("<h1>Do Delete</h1>");
    }
}
