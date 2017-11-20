public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accts) {
        List<Account> ValidAccounts = new List<Account>();
        
        for (Account a : accts) {         
            ValidAccounts.add(new Account(id=a.Id, ShippingState = a.BillingState));            
        }

        if (ValidAccounts.size() > 0) {
            Update ValidAccounts;
        }

    }

}