public class listOfOdds {
    public listOfOdds() {
        System.debug('welcome!!!');

    }
    public void ListOdd(integer num){

     List<integer> listNum = new List<integer>();

    for (Integer i = 1; i < num; i++){
        
       if (  math.mod(i, 2) == 1) {
           
     listNum.add(i);
    }

       }

       System.debug(listNum);
}
}