package dto.request;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
public class RequestRoomDto {
    private String type;
    private boolean deals;
    private String description;
    private  int hotel;
    private double cost;
}
