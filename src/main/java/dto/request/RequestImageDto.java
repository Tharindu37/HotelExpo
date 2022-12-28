package dto.request;

import lombok.*;

import java.io.File;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Data
public class RequestImageDto {
    private File image;
}
