@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount()
    {
        RestRequest request = RestContext.request;        
        String accid = request.requestURI.substringBetween('/Accounts/','/contacts');        
        Account acc = [Select ID, Name, (Select ID, Name from Contacts) from Account where ID = :accid];
        
        return acc;
    }

}