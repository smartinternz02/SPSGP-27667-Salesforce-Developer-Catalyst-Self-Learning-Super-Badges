@isTest
public class LeadProcessorTest {
@isTest
    public static void testit()
    {
        list<Lead> l_list=new list<Lead>();
        for(Integer i=0;i<200;i++)
        {
            Lead l=new Lead();
            l.LastName='name '+i;
            l.Company='Company';
            l.Status='Random Status';
            l_list.add(l);
        }
        insert l_list;
        Test.startTest();
        LeadProcessor lp1=new LeadProcessor();
        Id batchId=Database.executeBatch(lp1);
        Test.stopTest();
        
     }
}