package servlet;

import com.google.gson.Gson;
import dao.CrudUtil;
import dto.HotelDto;
import dto.UserDto;
import dto.request.RequestImageDto;
import dto.request.RequestRoomDto;
import dto.response.DataResponse;
import dto.response.StandardResponse;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import util.IdGenerator;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

@WebServlet("/room")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("OK");
        if (request.getParameter("type").equals("list")){
            System.out.println("OK OK");
            //data
            try {
                String location=request.getParameter("location");
                ResultSet set = CrudUtil.execute("SELECT * FROM Hotel WHERE destination LIKE ?",
                        location);
                String jsonObj="";

                ArrayList<HotelDto> hotelList=new ArrayList<>();
                while (set.next()){
                    HotelDto h=new HotelDto(
                            set.getString(1),
                            set.getString(2),
                            set.getInt(3),
                            null,
                            set.getBoolean(5),
                            null,
                            set.getString(7),
                            set.getString(8)
                    );
                    hotelList.add(h);
                }
                DataResponse resp=new DataResponse(
                        hotelList.size(),hotelList
                );
                jsonObj=new Gson().toJson(
                        new StandardResponse(200,"Data",resp)
                );
                response.getWriter().write(jsonObj);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("type").equals("room")) {
            RequestRoomDto d = new Gson().fromJson(request.getReader(), RequestRoomDto.class);
            response.setContentType("application/json");
            String jsoObj = "";
            try {
                if (CrudUtil.execute("INSERT INTO Room VALUES(?,?,?,?,?,?)",
                        IdGenerator.getId(16),
                        d.getType(), d.isDeals(), d.getDescription(), d.getHotel(), d.getCost())) {

                    jsoObj = new Gson().toJson(
                            new StandardResponse(201, "Saved!", null)
                    );
                    response.getWriter().write(jsoObj);
                } else {

                    jsoObj = new Gson().toJson(
                            new StandardResponse(500, "Try Again!", null)
                    );
                    response.getWriter().write(jsoObj);
                }

            } catch (Exception e) {
                e.printStackTrace();
                jsoObj = new Gson().toJson(
                        new StandardResponse(500, e.getMessage(), e)
                );
                response.getWriter().write(jsoObj);
            }
        } else {

        }
    }
}
