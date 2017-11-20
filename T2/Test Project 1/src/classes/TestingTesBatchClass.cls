@isTest
private class TestingTesBatchClass {

    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        // insert 6 leads
        for (Integer i=0; i<6; i++) {
            leads.add(new Lead(lastname='Test Lead '+i, 
                Company='Test Company', Status='Open - Not Contracted' ));
        }
        insert leads;
        
        List<Lead> dupleads = new List<Lead>();
        for (Integer i=0; i<4; i++) {
            dupleads.add(new Lead(lastname='Test Lead '+i, 
                Company='Test Company', Status='Open - Not Contracted', IsDuplicate__c = true));
        }
        insert dupleads;
        
        List<Lead> obj1= new List<Lead>();
        
        for(Lead ld : dupleads)
        {
            ld.DateChecked__c = system.today()-5;
            obj1.Add(ld);
        }
        
        update obj1;
            
        List<Lead> dupdeleteleads = new List<Lead>();
        for (Integer i=4; i<6; i++) {
            dupdeleteleads.add(new Lead(lastname='Test Lead '+i, 
                Company='Test Company', Status='Open - Not Contracted', IsDuplicate__c = true, DateChecked__c = system.today()-33));
        }
        insert dupdeleteleads;
        
        List<Lead> obj2= new List<Lead>();
        
        for(Lead ld : dupdeleteleads)
        {
            ld.DateChecked__c = system.today()-5;
            obj2.Add(ld);
        }
        
        update obj2;
        
    }

    static testmethod void test() {        
        Test.startTest();
        TestBatchclass uca = new TestBatchclass();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();

        // after the testing stops, assert records were updated properly
        System.assertEquals(2, [select count() from Lead where IsVisible__c = false]);
    }
    
}