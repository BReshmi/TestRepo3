@isTest
private class AccountTriggerTest {

    @isTest static void TestCreateNewAccountInBulk() {
               
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        
        for(Integer i=0; i < 200; i++) {
            accts.Add(new Account(Name='Test2 Account ' + i, BillingState = 'CA'));
        }              

        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();

        // Verify that 200 new Accounts were inserted
       // List<Account> verifyAccts = [SELECT Id FROM Account where ShippingState = 'CA'];
        System.assertEquals(200, [select count() from Account where ShippingState = 'CA']);    
                                   
    }
}