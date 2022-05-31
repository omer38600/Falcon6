public class SoqlDemo {

    public static void accountSOQL1() {

    List<account> Listacc = [ select Id , name FROM Account WHERE name LIKE '%A%'];
   
    System.debug('account list is '+ Listacc);
    System.debug('the size of the list is ' + Listacc.size());
    
    Account acc = [Select Id, Name FROM Account ORDER BY CreatedDate DESC LIMIT 1];

    System.debug('the latest account is ' + acc);
    
    }
    
    public static void accountSOQL2() {

    Account LatestAcc = [Select Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
    
    System.debug('latest account created is ' + LatestAcc);

    string accName = LatestAcc.Name;
    string accPhone = LatestAcc.Phone;
    System.debug('acc name is ' + accName);
    System.debug('acc phone is ' + accPhone);
    System.debug('acc account number is ' + LatestAcc.AccountNumber);

    } 
    
    public static void accountSoql3(){

        List<account> listAcc1 = [Select Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC ];

        System.debug('all accounts are ' + listAcc1);

        for (account eachAccount : listAcc1) {

        id accid = eachAccount.Id;
        string accName = eachAccount.Name;
        string accPhone = eachAccount.Phone;
        System.debug('acc name is ' + accName);
        System.debug('acc phone is ' + accPhone);   

        System.debug('account number is ' + eachAccount.AccountNumber);
        System.debug('_______________________');
    
        }
            
    }

    public static void soqlDemo_Filter() {
    
    string accNmeFilter = 'Softinnovas';
    
    List<account> listAcc2 = [select id , name FROM account where name = : accNmeFilter];
    System.debug(listAcc2);

    }

}
