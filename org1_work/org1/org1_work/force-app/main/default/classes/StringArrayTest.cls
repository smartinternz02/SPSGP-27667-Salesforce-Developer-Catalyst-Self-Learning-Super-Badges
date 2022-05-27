public class StringArrayTest {
public static List<String> generateStringArray(Integer n)
{
    list<String> list1=new list<String>();
    for(Integer i=0;i<n;i++)
    {
        
        list1.add('Test '+i);
       
    }
     System.debug(list1);
   return list1;
}
}