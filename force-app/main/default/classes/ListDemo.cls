public class ListDemo {
    public static void candidatesList() {
        //1. creating empty list string collection

    List<string> listCandidates = new List<string>(); // since it is a static method no need to create 
    //an instance for calling the method we can call it directly
    
    listCandidates.add('Marc');
    listCandidates.add('Ellon');
    listCandidates.add('Bill');
    listCandidates.add('Marc');
    System.debug('candidates are '+ listCandidates);

    integer val = listCandidates.indexOf('Bill');
    System.debug(val);

    } 

    public void candidatesList2() {

    List<string> listCandidates = new List<string>(); // since it is not a static method we need to create an intance for it
    
    listCandidates.add('Marc');
    listCandidates.add('Ellon');
    listCandidates.add('Bill');
    listCandidates.add('Marc');
    System.debug('candidates are '+ listCandidates);

    string valueat3 = listCandidates.get(3);
    System.debug(valueat3);
    
    } 

   public static void randomIntegerList(){
   
   List<integer> listInteger = new List<integer>(); // since it is a static method no need to create
    //an instance for calling the method we can call it directly

   listInteger.add(10); // index = 0
   listInteger.add(15); // index = 1
   listInteger.add(21); // index = 2
   listInteger.add(15); // index = 3
   listInteger.add(15); // index = 4

   // get index 3 value===>>>
   integer index3value = listInteger.get(3);

   //OR

   integer index3value2 = listInteger[3];

   System.debug('value at index 3 is = ' + index3value2);

   System.debug('list of random integers = ' + listInteger);
   
   }
   
   // now new method vill be for a string mehod with return

public static string candidatesList3(integer indx) { 
    //1. creating empty list string collection and checking for index

List<string> listCandidates3 = new List<string>(); // since it is a static method no need to create 
//an instance for calling the method we can call it directly

listCandidates3.add('Marc');
listCandidates3.add('Ellon');
listCandidates3.add('Bill');
listCandidates3.add('Marc');
System.debug('candidates are '+ listCandidates3);

string returnString = '';

if (indx>=0 && indx< listCandidates3.size()) {
    
    returnString = listCandidates3[indx];

}
else {
    returnString = 'No such value found';
   
}

return returnString;

} 

public static void iterateIntegerList( ){
    List<integer> listInteger = new List<integer>();
   listInteger.add(10); 
   listInteger.add(15); 
   listInteger.add(21);
   listInteger.add(15);
   listInteger.add(16); 
for (integer eachinteger : listInteger) {
    System.debug(eachinteger);
    
}

}

}




