public class NewDataBaseDml {
    public static void  DataBaseMethode(){
        list<account> AccList = new list<account>();
        account acc = new account();
        acc.Name = 'alex';
        acc.AccountNumber = '24354325635';
        acc.Rating = 'hot';
        acc.Website = 'www.alex.com';
        AccList.add(acc);

        account skAcc = new account();
        skAcc.Name = 'shophiya';
        skAcc.AccountNumber = '87878798787';
        skAcc.Rating = 'Cold';
        skAcc.Website = 'www.shophiya.com';
        AccList.add(skAcc);

        account pkAcc = new account();
        pkAcc.Name = 'shivam';
        pkAcc.AccountNumber = '78637267222';
        pkAcc.Rating = 'hot';
        pkAcc.Website = 'www.shivam.com';
        AccList.add(pkAcc);

        account ssAcc = new account();
        ssAcc.Name = 'harry';
        ssAcc.AccountNumber = '83736376833';
        ssAcc.Rating = 'hot';
        ssAcc.Website = 'www.harry.com';
        AccList.add(ssAcc);


        list<database.SaveResult>  GetResult = database.insert(AccList, false);

        for(database.SaveResult  objResult : GetResult){
            if(objResult.isSuccess()){
                System.debug(objResult.getId());
            }
            else{
                for(database.error  objError : objResult.getErrors()){
                    system.debug('objerror='+objError.getfields());
                    system.debug('objerror='+objError.getMessage());
                    system.debug('objerror='+objError.getStatusCode());
                }
            }
        }
    }

    //database.update

    public static void UpdateMethode(){
        list<Opportunity> oppList = new List<Opportunity>();
        Opportunity  Os = new Opportunity();
        List<Opportunity> sk =[select id,Name, Type, OrderNumber__c  from Opportunity where Name ='shivali'];
        for(Opportunity opp : sk){
            opp.Type = 'New Customer';
            opp.OrderNumber__c ='222';
            oppList.add(opp);
    
        }

        Opportunity pp = new Opportunity();
        List<Opportunity> ListO =[select id,Name, Type, OrderNumber__c  from Opportunity where name = 'selina'];
        for(opportunity abb : ListO){
            abb.Type = 'Existing Customer - Upgrade';
            abb.OrderNumber__c = '675';
            oppList.add(abb);
        }
        list<Database.SaveResult> lResult = database.update(oppList , false);
    
        for(Database.SaveResult  dataResult : lResult){
            if(dataResult.isSuccess()){
                system.debug('is success='+ dataResult.getId());
            }
            else{
                for(Database.Errors  dataError : dataResult.getErrors()){
                    system.debug('data error='+ dataError.getFields());
                    system.debug('data error='+ dataError.getMessage());
                    system.debug('data error='+ dataError.getSatusCode());
                }
            }
        
                
                
        
    }
    }

    //upsert database
    public static void upsertMethode(){
        account nk = new account();
        List<Account> accM = new list<account>();
        nk.Name = 'arya';
        nk.Phone = '457363878';
        accM.add(nk);


        account kk = new account();
        kk.Name = ' jerry';
        kk.Phone = '347253765738';
        accM.add(kk);

        account mm = new account();
        mm.Name = 'shina';
        mm.Phone = '89736576262';
        accM.add(mm);


        account dd =[select  id , Name, Active__c, AnnualRevenue, AccountNumber from Account where name = 'sid'];
        for( account acck : dd){
            acck.Active__c = 'No';
            acck.AccountNumber = '6387487383';
            accM.add(acck);

        }
        list<database.SaveResult> ListResults = database.upsert(accM ,false);
        for(database.SaveResult  Dsave : ListResults){
            if(Dsave.isSuccess()){
                system.debug('isSucces='+ListResults.getId());
            }
            else{
                for(dataError Derror : ListResults.getErrors()){
                    system.debug('Derroe='+Derror.getFields());
                    system.debug('Derror='+Derror.getMessage());
                    System.debug('Derror='+Derror.getSatusCode());
                }
            }
        }










    }



   

        
    


  

}