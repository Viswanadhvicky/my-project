package Mine_vest;
import java.util.ArrayList;
import java.util.*;

public class StatesCapital {
public ArrayList<String> statecapital=new ArrayList<String>();
public StatesCapital()
{
  statecapital.add("Telangana,Hyderabad");
  statecapital.add("Karnataka,Bangluru");
  statecapital.add("Maharastra,Mumbai");
  
}
public String getStateCapital(int k)
{
	return statecapital.get(k);
}
	
}
