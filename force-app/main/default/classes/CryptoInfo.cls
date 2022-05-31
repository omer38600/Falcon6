public class CryptoInfo {
    
    public Map<string , integer> cryptoMap = new Map<string , integer>();

    public integer showPrice( string coinName) {

        integer a;
    
        a = cryptoMap.get(coinName);    
    
        return a; 
    
        
    }
}
