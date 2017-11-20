public class AddPrimaryContact implements Queueable {
    String state;
	Contact cont;// = new Contact();
    
    public AddPrimaryContact(Contact con, String st)
    {
        state = st;
        cont = con;
    }
    
    public void execute(QueueableContext context) {
        List<Account> accounts = [Select id, (Select id from contacts) from Account where BillingState =:state];
        List<Contact> lstContact = new List<Contact>();

        for (Account account : accounts) {
            Contact c = cont.clone(false,false,false,false);
			c.AccountId = account.Id;
          		lstContact.Add(c);
          // perform other processing or callout
        }
        insert lstContact;
    }

}