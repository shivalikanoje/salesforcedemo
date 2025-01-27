//MAP IN SALESFORCE
map<string,string> fruitsColoursMap = new map<string,string>();
fruitsColoursMap.put('red', 'apple');
fruitsColoursMap.put('yellow','banana');
fruitsColoursMap.put('pink', 'watermelon');
fruitsColoursMap.put('green', 'kiwi');
system.debug('show the map fruits name ='+fruitsColoursMap);
fruitsColoursMap.put('orange','papaya');
//get(key)
system.debug('show the 3th index fruits name='+fruitsColoursMap.get('green'));
//size
system.debug('show the count fruits  size name list='+fruitsColoursMap.size());
//isempty
system.debug('is fruits name is empty?='+fruitsColoursMap.isEmpty());
//contains(key)
system.debug('after contains key method='+fruitsColoursMap.containsKey('pink'));
//keyset
system.debug('after set key methode='+fruitsColoursMap.keyset());
//values
system.debug('after values methode='+fruitsColoursMap.values());
//clone()
map<string,string> fruitsMapClone =  fruitsColoursMap.clone();
system.debug('after clone methode='+fruitsMapClone);
//equals
map<string,string> fruitsPutData = new map<string,string>{'black'=> 'berry'};
system.debug('after equals methode='+fruitsPutData.equals(fruitsMapClone));
//putAll
fruitsColoursMap.putAll(fruitsPutData);
system.debug('after put All methode='+fruitsColoursMap);
//remove(key)
fruitsColoursMap.remove('yellow');
system.debug('after remove methode='+fruitsColoursMap);
//clear
fruitsColoursMap.clear();
system.debug('after clear methode='+fruitsColoursMap);




