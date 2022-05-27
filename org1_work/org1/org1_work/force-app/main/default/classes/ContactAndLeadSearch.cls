public class ContactAndLeadSearch {
public static List<List<SObject>> searchContactsAndLeads(String lastname)
{
    list<list<SObject>> cll=[FIND:lastname IN ALL FIELDS Returning Contact(Name),Lead(Name)];
    return cll;
}
}