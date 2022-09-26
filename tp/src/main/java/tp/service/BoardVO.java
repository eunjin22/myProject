package tp.service;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardVO {
   
   private Integer boardNo;
   private String userId;
   private String title;
   private String content;
   private String createDate;
   private String boardType;
      
   public BoardVO(String title,String content,String createDate,String boardType,String userId) {
      this.title=title;
      this.content=content;
      this.createDate=createDate;
      this.boardType=boardType;
      this.userId=userId;
   }
}