public class SoqlClassDemo{
    public static void SoqlClassMethode(){
        list<account> ListAcc =[SELECT id,Name, AccountNumber, AnnualRevenue, AccountSource from Account];
        system.debug(ListAcc);       
    }
    public static void DemoClass(){
        List<Account> acck =[SELECT id, Name From Account  ORDER BY Name DESC];
        System.debug(acck);
    }
    public static void WhereDemo(){
        List<Contact> ConAcc =[SELECT  id,name, Email, Description, Department From contact WHERE Name IN ('Pat Stumuller','Jane Grey','Edna Frank') LIMIT 2];
        system.debug( ConAcc);
    }
    public static void DemoEqual(){
        List<Contact> sk=[SELECT ID, Department,LeadSource from Contact WHERE Department ='Technology'];
        system.debug(sk);
    }
    public static void DemoNotEqual(){
        List<contact> AB =[SELECT id,Department, Description, LeadSource from Contact WHERE Department !='Technology'];
        system.debug(AB);
    
    }
    public static void LessThan(){
        List<Opportunity> DK =[SELECT id,StageName, Amount from Opportunity WHERE Amount < 50000];//(small to big)
        system.debug(DK);
    }
    public static void GreaterThan(){
        List<Opportunity> SK =[SELECT id,StageName, Amount from Opportunity WHERE Amount > 10000];//(big to small)
        system.debug(SK);
    }
    public static void DataOffSet(){
        List<Contact> Mk =[SELECT id,Name From contact Offset 4];
        system.debug(MK);
    }
    public static  void likey(){
        List<Account> LK =[select id,name,Active__c from Account WHERE name like 'U%' AND Active__c ='Yes' LIMIT 3 ];
        system.debug(LK);
    }
    public static void NotIn(){
        List<Account> NI =[select id,name,Active__c from Account where Not Name IN('GenePoint','Pyramid Construction Inc.','sForce')];
        system.debug(NI);
    }
    public static  void Date(){
        List<Account> Bk =[SELECT id,name,CreatedDate from Account WHERE CreatedDate <LAST_90_DAYS ];
        System.debug(BK);
    }
    public static void  CreatedDate(){
        List<account> SK =[SELECT Id,Name,CreatedDate from Account WHERE CreatedDate <2025-02-17T00:34:27.051+05:30 ];
        system.debug(SK);
    }

    }

// WHERE,AND,OR,LIKE,ORDER BY , IN , NOT IN, !=(NOT NULL),=(EQUAL),(>),(<), OFFSET, CREATED DATE,
    
        
    
    


