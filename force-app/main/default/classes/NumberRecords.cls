public class NumberRecords {
    
    List<integer> listOfNumbers = new List<integer>();

    public void NumberCheck(integer num) {

        boolean x = listOfNumbers.contains(num);
    
        if (x==true) {
            System.debug('number exists');
            
        }

        else {
            System.debug('number not found');
        }
    
    }
}
