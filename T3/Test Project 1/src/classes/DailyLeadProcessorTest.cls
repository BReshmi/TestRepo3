@isTest
private class DailyLeadProcessorTest {

    // Dummy CRON expression: midnight on March 15.
    // Because this is a test, job executes
    // immediately after Test.stopTest().
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';

    static testmethod void testScheduledJob() {

        // Create some out of date Opportunity records
         List<Lead> leads = new List<Lead>();
        // insert 200 leads
        for (Integer i=0;i<200;i++) {
            leads.add(new Lead(LastName = 'XYZ' + i, Company='TestDaily' + i));
        }
        insert leads;        
        
        // Get the IDs of the opportunities we just inserted
        Map<Id, Lead> mlead = new Map<Id, Lead>(leads);
        List<Id> ldIds = new List<Id>(mlead.keySet());

        Test.startTest();
        // Schedule the test job
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP, 
            new DailyLeadProcessor());         
        
        Test.stopTest();
              
        System.assertEquals(200, [select count() from Lead where LeadSource = 'DreamForce' AND ID in: ldIds]);

    }
}