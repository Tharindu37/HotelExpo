package dto.request;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RequestLoginDto {
    private String email;
    private String password;
}
