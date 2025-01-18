list<string> fruitsList = new list<string>();
fruitsList.add('kiwi');
fruitsList.add('papayaa');
fruitsList.add('apple');
fruitsList.add('beetroot');
system.debug('show the fruits name list='+fruitsList);
fruitsList.add('mango');
system.debug('show the after list='+fruitsList);
//get
system.debug('show the 3th index='+fruitsList.get(3));
//size
system.debug('fruits list count='+fruitsList.size());
//isempty
system.debug('is fruits list is empty?='+fruitsList.isempty());
// contanis
system.debug('contains methode='+fruitsList.contains('lichi'));
//set
fruitsList.set(1,'sugar cane');
system.debug('show the after list set='+fruitsList);
//sort
fruitsList.sort();
system.debug('sorting list='+fruitsList);
// clone
list<string> fruitsList1=fruitsList.clone();
system.debug('after clone methode='+fruitsList);
//equals
list<string> fruitsList2 = new list <string>{'banana','orange'};
system.debug('equal mwthode='+fruitsList.equals(fruitsList1));
//addAll
fruitsList.addAll(fruitsList);
system.debug('after add all methode='+fruitsList);
//Remove
fruitsList.remove(2);
system.debug('after remove list='+fruitsList);
//clear
fruitsList.clear();
system.debug('all fruits list clear='+fruitsList);








