set<string> companySet = new set<string>();
companySet.add('wipro');
companySet.add('mind tree');
companySet.add('TCS');
companySet.add('info tech');
system.debug('after set='+companySet);
companySet.add('infosys');
system.debug('after set company name='+companySet);
// size
system.debug('show the count='+companySet.size());
//isempty
system.debug('is set company name empty?='+companySet.isEmpty());
//contains
system.debug('contains methode='+companySet.contains('SBI'));
//clone
set<string> companySet2 = companySet.clone();
system.debug('after clone methode='+companySet);
//equals
list<string> companyList = new list<string>{'salesforce','google'};
system.debug('after equal methode='+companySet.equals(companySet2));
//addAll
companySet.addAll(companyList);
system.debug('after add all methode='+companySet);
// remove(string)
companySet.remove('TCS');
system.debug('after remove methode='+companySet);
//clear
companySet.clear();
system.debug('after clear methode='+companySet);
