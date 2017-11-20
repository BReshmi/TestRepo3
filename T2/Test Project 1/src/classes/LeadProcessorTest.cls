@isTest
public class LeadProcessorTest {
    
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        // insert 200 leads
        for (Integer i=0;i<10;i++) {
            leads.add(new Lead(LastName = 'ABC' + i, Company='Test' + i, IsDuplicate__c = true, DateChecked__c = System.Today()-1));
        }
        insert leads; 
        
        
        
    }

    static testmethod void test() {
		List <Lead> ld = [select id, DateChecked__c, LastName from Lead where LastName like '%ABC%' and DateChecked__c =: System.Today()]; 
        
        for(Lead l:ld)
        {
            l.DateChecked__c = System.Today()-1;            
        }
        upsert ld;
        
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();

        // after the testing stops, assert records were updated properly
        System.assertEquals(10, [select count() from Lead where LastName like '%ABC%' and DateChecked__c =: System.Today()-1]);
    }    

}