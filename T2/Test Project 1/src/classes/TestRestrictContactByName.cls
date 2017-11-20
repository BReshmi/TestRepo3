@isTest
public class TestRestrictContactByName {
    @istest static void RestrictContactByNameTest()
    {
        Contact ct = new Contact(Lastname = 'INVALIDNAME');
        Database.SaveResult result = database.insert(ct, false);
        
        system.assert(!result.isSuccess());
        
    }
}