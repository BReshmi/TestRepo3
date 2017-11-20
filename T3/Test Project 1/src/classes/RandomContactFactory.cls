public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer count, String lastnm)
    {
        List<Contact> ct = new List<Contact>();
        
        for(Integer i=1; i<= count; i++)
        {
            ct.add(new Contact(Firstname = 'Test' + i, Lastname = lastnm));
        }
        return ct;
    }

}