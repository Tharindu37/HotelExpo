package dto.response;

import dto.HotelDto;
import lombok.*;

import java.util.ArrayList;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class DataResponse {
    private long dataCount;
    private ArrayList<HotelDto> hotels;
}
