public class AccountHandlerInfo {

    public static List<Account> insertNewAccount(list<string> accname) {

        list<account> acc1 = new list<account>();

        if (!accname.isEmpty()) {
            for (string eachacc : accname) {
                account acc = new account();
                acc.Name = eachacc;
                acc1.add(acc);  
        }
        insert acc1;
        return acc1;
    }
        else{
            
             System.debug('the parameter is blank');
                
            }
            insert acc1;
            return acc1;
        }

        // public static void createAccount1(){
        // set<id> accid = new Set<Id>();
        // list<contact> conlist = [select name, id, accout.]

        // }


        @future

        public static void createAccount(set<id> AccIds){

            List<Account> accList = [select name, id, Number_of_contacts__c, (select name, id from Contacts WHERE AccountId in : AccIds) from Account where id in :AccIds ];

            for (account acc : accList) {

                List<Contact> conList = acc.Contacts;

                acc.Number_of_contacts__c = conList.size();
            } 
            update accList;


        }

    }
