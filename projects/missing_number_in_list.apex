set<integer> predefinedSet = new set<integer>{1, 2, 3, 4, 5, 6};

list<integer> numberList = new list<integer>{3, 4, 4, 5, 6, 7, 8};  
system.debug('numberList='+numberList);
//remove the duplicates from the list
set<Integer> removeDuplicatesSet = new set<integer>(numberList);
system.debug('remove Duplicates Number='+removeDuplicatesSet);

//empty list
list<integer> missingNumberList = new list<integer>();
// using for loop 
for(Integer putData : predefinedSet){
    system.debug('putData='+putData);
    if(!numberList.contains(putData)){
        missingNumberList.add(putData);
    }
}
system.debug('missingNumberList='+missingNumberList);




