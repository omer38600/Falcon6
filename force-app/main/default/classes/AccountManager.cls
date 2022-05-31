public class AccountManager {
    public static void AccountDescription() {
        list<account> accList =[select name, id, CreatedDate FROM Account WHERE CreatedDate = TODAY ];
        // System.debug(accList);
       

       for (account eachacc : accList) {
       
        eachacc.Description = eachacc.Name + eachacc.CreatedDate;
       
        // System.debug('Account description is ' + ' =' + eachacc.Name + ' - ' + eachacc.CreatedDate);
       
       }
       update accList;

    }
}
