//standard object( parent to child)
public class SoqlExample {
    public SoqlExampleMethode() {
        List<Account> kk =[SELECT id,Name, type, AnnualRevenue, (SELECT id from Contacts )from account];
        system.debug(kk);

    }
    //(coustom  child to parent)

    public static void  ChildParent(){
        List< Student__c> SK=[ select id,Name__c, teacher__r.Name__c from Student__c ];
        system.debug(SK);
    }
    // standard child to parent
    public static void Standard(){
        List<Contact> BK = [select id,Name, Description,Department,Account.Name, Account.AnnualRevenue, Account.AccountSource  from contact];
        system.debug(BK);
    }

    //(coustom parent to child)
    public static  void parentChildDta(){
        List<teacher__c> AA = [select id,(select id,Name__c from Students__r ) from teacher__c  ];
        system.debug(AA);

    }




    
}
