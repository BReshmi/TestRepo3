@isTest
public class AccountManagerTest {
    @isTest static void AccountManagerTest()
    {
       	ID recId = createId();
    	RestRequest request = new RestRequest();
    	request.requestURI   = 'https://na1.salesforce.com/services/apexrest/Accounts/' + recId + '/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        
        Account acc = AccountManager.getAccount();
             
        System.assertEquals('Just Created', acc.Name);
    }   
    
    static ID createId()
    {
        Account acc = new Account(Name='Just Created');
        insert acc;
        
        Contact con = new Contact(LastName='New Contact', AccountId = acc.id);
        
        insert con;
        
        return acc.id;
    }

}