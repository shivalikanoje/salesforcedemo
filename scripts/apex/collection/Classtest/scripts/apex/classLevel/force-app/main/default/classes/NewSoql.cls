Public Class AggregateFunctions{
    public static void AggregateMethode(){
        List<Opportunity> sk =[SELECT count(Amount) from Opportunity ];
        system.debug(sk);
    }

    public static void MinData(){
        List<Opportunity> KK =[SELECT min(Amount) from Opportunity ];
        system.debug(KK);
    }

    public static void MaxData(){
        List<Opportunity> MK =[SELECT Max(Amount) from Opportunity ];
        system.debug(MK);
    }

    public static void SumData (){
        List<Opportunity> SS =[SELECT sum(Amount) from Opportunity ];
        system.debug(SS);
    }

    public static void AvgData(){
        List<Opportunity> SB =[SELECT AVG(Amount) from Opportunity ];
        system.debug(SB);
    }


}
// MIN , MAX , AVG, SUM , COUNT
