@isTest
public class AddPrimaryContactTest {
@isTest static void setup() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            accounts.add(new Account(
                name='Test Account_1'+ i, BillingState = 'NY'
            ));
        }        
        for (Integer i = 0; i < 50; i++) {
            accounts.add(new Account(
                name='Test Account_2'+ i, BillingState = 'CA'
            ));
            
        insert accounts;
            Contact cont = new Contact(LastName = 'Test Queue Contact');
            insert cont;
            
        AddPrimaryContact updater = new AddPrimaryContact(cont, 'CA');
        Test.startTest();
        System.enqueueJob(updater);
        Test.stopTest();
        
        System.assertEquals(50, [select count() from Account where BillingState = 'CA']);
    	}
    }        
        
}