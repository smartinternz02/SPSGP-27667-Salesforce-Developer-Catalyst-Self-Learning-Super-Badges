public class AccountProcessor {
@future
public static void countContacts(List<Id> accountIds)
{
    List<Account> accountsToUpdate =new list<Account>();
    List<Account> accounts=[select Id,Name,(Select Id from contacts)from Account where Id in:accountIds];
    for(Account acc:accounts)
    {
        List<Contact> contactList=acc.Contacts;
        acc.Number_Of_Contacts__c=contactList.size();
        accountsToUpdate.add(acc);
    }
    update accountsToUpdate;
}
}