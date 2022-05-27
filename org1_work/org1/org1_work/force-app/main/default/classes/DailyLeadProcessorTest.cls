@isTest
private class DailyLeadProcessorTest {
public static String CRON_EXP='0 0 0 15 7 ? 2022';
    static testmethod void testscheduleJob() 
    {
        List<Lead> leads=new List<Lead>();
        for(Integer i=0;i<200;i++)
        {
            Lead l=new Lead(FirstName='First '+i,LastName='LastName',Company='The Inc');
            leads.add(l);
         }
        insert leads;
        Test.startTest();
        String jobId=system.schedule('ScheduleApexTest',CRON_EXP,new DailyLeadProcessor());
        Test.stopTest();
        List<Lead> checkleads=new List<Lead>();
        checkleads=[select Id from Lead where LeadSource='Dreamforce' and Company='The Inc'];
        System.assertEquals(200, checkleads.size(),'Leads were not createde');
        
    }
}