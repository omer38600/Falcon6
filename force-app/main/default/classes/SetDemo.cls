public class SetDemo {
    public static void citySet() {

       Set<string> cities = new Set<string>();
       cities.add('Berlin');
       cities.add('Tokyo');
       cities.add('Dubai');
       cities.add('Nairobi');
       cities.add('Istanbul');
       System.debug('set of cities '+ cities);

    }

    public static Set<Integer> setFromList(List<Integer> intList){
        Set<integer> intSet = new Set<integer>();
        intSet.addAll(intList);
        return intSet;
    }    

    public static Set<String> capitalizaSet( Set<String> setString){

    Set<string> upperCase = new Set<string>(); 

    for (string eachStr : setString) {

        string tempStr = eachStr.toUpperCase();
        
        upperCase.add(tempStr);
    }

    return upperCase;

  }
}

