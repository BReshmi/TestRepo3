public class ContactSearch {

    public static List<Contact> searchForContacts(String lastnm, String mailingpstlcode) {

        try {
                List<Contact> conts = new List<Contact>();
            	conts = [select Name from Contact where LastName =:lastnm and mailingpostalcode =: mailingpstlcode ];
            
            return conts;

        } catch (DmlException e) {
                System.debug('A DML exception has occurred: ' +
                            e.getMessage());
                return null;
            }
    }
}