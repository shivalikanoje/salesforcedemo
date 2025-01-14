// Integer: 32-bit signed integer.
integer myrollnumber=23;
system.debug('my roll number='+myrollnumber);

// Long: 64-bit signed integer.
long myaccountnumber=35366373767l;
system.debug('my account number='+myaccountnumber);

// Double: 64-bit floating point.
double collagefees = 25000.0;
system.debug('my collage fees='+collagefees);

// Decimal: Arbitrary precision number.
decimal salary=40000.0;
system.debug('my salary='+salary);

// String: Sequence of characters.
string firstname='shivali';
system.debug('my first name='+firstname);

// Boolean: Represents true or false.
boolean b1=true;
system.debug(b1);
boolean b2=false; 
system.debug(b2);
boolean b3=2>7;
system.debug(b3);

// Date: Represents a date (no time component).
date collagejoindate = date.newInstance(2023,11,22);
system.debug(collagejoindate);
date todaydate=date.today();
system.debug(todaydate);
date futuredate=todaydate.addDays(3);
system.debug(futuredate);

// Time: Represents a time of day.
time lasttime = time.newInstance(15,10,2,4);
system.debug(lasttime);

// Datetime: Represents both date and time.
datetime lastdatetime= datetime.newInstance(2025,1,11, 18,10,5);
system.debug(lastdatetime);

// ID: Represents a 15-character or 18-character Salesforce ID.
Id mycollageid='ABV124d56677454523';
system.debug(mycollageid);

// 32-bit -> 2,147,483,647 | 64-bit -> 9,223,372,036,854,775,807


