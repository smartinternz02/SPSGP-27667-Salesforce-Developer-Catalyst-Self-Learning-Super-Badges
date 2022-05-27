public class ContactSearch {
public static list<Contact> searchForContacts(String lastName,String mpc)
{
    list<Contact>conlist=[select Id,Name from Contact where LastName=:lastName and MailingPostalCode=:mpc];
    return conlist;
}
}