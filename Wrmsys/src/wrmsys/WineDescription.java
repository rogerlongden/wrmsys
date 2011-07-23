package wrmsys;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

public class WineDescription {
	
	  @PrimaryKey
	  @Persistent(valueStrategy=IdGeneratorStrategy.IDENTITY)
	  private Long wineDescriptionId;

	  @Persistent
	  private String wineDescription; 
	  
}
