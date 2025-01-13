public class myname{
    string myfullname='shivali';
    string myjob='salesforce';
    integer myrollnumber=32;
    double mytutionfrees=10000.0;
    public void putdata(){
        system.debug('my fullname='+myfullname);
        system.debug('my job in company='+myjob);
        system.debug('my roll number='+myrollnumber);
        system.debug('my tution frees='+mytutionfrees);

    }
}
myname mn = new myname();
mn.putdata();
