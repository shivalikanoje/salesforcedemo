public class myname{
    string myfullname='bittu';
    string myjob='salesforce commpany';
    integer myrollnumber=42;
    double mytutionfrees=10000.0;
    integer age=26;

    public void putdata(){
        system.debug('my fullname='+myfullname);
        system.debug('my job in company='+myjob);
        system.debug('my roll number='+myrollnumber);
        system.debug('my tution frees='+mytutionfrees);
        system.denug('my age='+age);

    }
}
myname mn = new myname();
mn.putdata();
