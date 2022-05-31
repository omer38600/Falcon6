public class EmployeeInfo {

    public Map<integer, string> employeeMap = new Map<integer, string>();
      
    string a = '';

    public string showInfo( integer empNumber) {    

        a = employeeMap.get(empNumber);
        
        return a;

    }

    // public integer showPrice( string coinName) {

    //     integer a;
    
    //     Map<string , integer> cryptoMap = new Map<string , integer>();
        
    //     cryptoMap.put('ABC', 50000);  
    //     cryptoMap.put('DEF', 78000);      

    // a = cryptoMap.get(coinName);    

    // return a; 

    // }
}
