package wrmsys;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

public class JuiceType {
	  @PrimaryKey
	  @Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	  private Long juiceTypeId;
	  
	  private String juiceName;
	  
	  private String juiceColor;
	  
	  private String juiceDescription;
}
