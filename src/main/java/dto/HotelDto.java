package dto;

import lombok.*;

import java.util.ArrayList;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class HotelDto {
    private String id;
    private String name;
    private int star;
    private ArrayList address;
    private boolean activeState;
    private String location;
    private String designation;
    private String type;
}
