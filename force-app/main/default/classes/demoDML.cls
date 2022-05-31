public with sharing class demoDML {
    public demoDML() {
        System.debug('Welcome to the world of SOQL. Please enter the key character to search.');
    }

    public static void dmlInsert( string keychar){

    string a =  '%' + keychar + '%';

    List<Account> accList = [select name, id from Account where name like : a];

    integer b = accList.size();

    if(b>0) {

        for (account eachAcc : accList) {
        
        string accountName = eachAcc.Name;

        Contact con = new Contact();
        con.LastName = accountName;
        con.AccountId = eachAcc.Id;  
        insert con;
        System.debug(accountName + ' copied from account');
        System.debug('+++++++++++++++++++++++++++++++++');
    
        }
        
    }
}
}
