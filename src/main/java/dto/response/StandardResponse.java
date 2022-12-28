package dto.response;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class StandardResponse {
    private int code;
    private String message;
    private Object data;
}
