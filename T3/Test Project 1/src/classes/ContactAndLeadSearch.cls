public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String str)
    {
        list<list<SObject>> searchList = [FIND :str IN ALL FIELDS RETURNING lead(FirstName, LastName), contact(firstname, lastname)];
        
        return searchList;
    }
}