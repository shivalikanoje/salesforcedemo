public  class DmlClass {
    public  static void DmlClassMethode() {  // single one record standard 
        Account ClassDml = new Account();
        ClassDml.name='salesforce class';
        ClassDml.phone='2342345366';
        ClassDml.AnnualRevenue=4500000;
        insert ClassDml;

    }

    // single record custom record
    public static void DmlDataMethode(){
        school_student__c school = new school_student__c();
        school.First_Name__c = 'shivali';
        school.Last_Name__c= 'kanoje';
        school.email_id__c= 'shivali@gmail.com';
        school.phone_number__c='8973773378';
        school.school_fees__c=250000;
        insert school;
    }

    // single update

    public static void DmlPutData(){
        school_student__c  Schoolc =[SELECT  id,First_Name__c, Last_Name__c,school_fees__c, email_id__c, phone_number__c from school_student__c where First_Name__c ='kunal'];
        Schoolc.phone_number__c='8975526173';
        Schoolc.school_fees__c=7500000;
        update Schoolc ;
    }
    public static void MethodeAcc(){
        List<Account> DataLs = new  List<Account>();
        Account acc = new Account();
        acc.name='mr.pahade';
        acc.phone='123456789';
        DataLs.add(acc);

        Account acc1 =[select  id,Name,Phone, AnnualRevenue,Website from Account where Name ='Dickenson plc'];
        acc1.Phone = '9404113084';
        acc1.Website='www.google.com';
        DataLs.add(acc1);   
        upsert DataLs;   
    }

    public static void DeleteDml(){
        account dmlDelete = [select id,Name, Phone, AnnualRevenue, Website from account where Name ='rani'];
        Delete dmlDelete;
    }

    public static void UnDeleteMethode(){
        Account DmlUnDelete =[select id,Name, Phone, AnnualRevenue, Website from account where Name ='rani'];
        undelete DmlUnDelete;
    }
}