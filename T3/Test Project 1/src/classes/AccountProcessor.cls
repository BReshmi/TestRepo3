public class AccountProcessor {
@future
    public static void countContacts(List<Id> accIds)
    {
        List<Account> acc = [Select id, Number_of_Contacts__c, (select id from contacts) from Account where id IN :accIds];
        for(Account a : acc)
        {
            a.Number_of_Contacts__c = a.contacts.size();
        }
        update acc;
    }

}