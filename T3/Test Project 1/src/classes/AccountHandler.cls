public with sharing class AccountHandler {

    public static Account insertNewAccount(String yash) {

        try {
                 Account acct = new Account(Name = yash);
                // Insert the account 
                insert acct;
            
            return acct;
            } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' +
                            e.getMessage());
                return null;
            }
    }

}


//Changes by ReshmiB