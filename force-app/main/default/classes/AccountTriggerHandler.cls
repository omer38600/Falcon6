// public class AccountTriggerHandler {
//     public static void updateAccountDescription(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){
//          for(account eachAcc: accTriggerNew){
//             boolean updateDesc = false;
//             if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){  // this is for instead of trigger.isInsert 
//                 updateDesc = true;
//             }
//             if(accTriggerOldMap != null){
//                 Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
//                 string oldAccountActive = oldAccount.Active__c;
//                 //check if active is updated
//                 //active is changed to 'Yes'
//                 if(eachAcc.Active__c == 'Yes' && oldAccountActive != 'Yes') {
//                     updateDesc = true;
//                 }
//             }
//             if(updateDesc){
//                 eachAcc.Description = 'Account is now active. Enjoy!';
//             }
//         }
//     }
//     public static void updateVipForAllAcontacts(List<account> accTriggerNew,
//                                                 List<account> accTriggerOld,
//                                                 Map<id, account> accTriggerNewMap,
//                                                 Map<id, account> accTriggerOldMap){ 

// set<id> setAccIDs = new set<id>();
// for (account  eachAcc :accTriggerNew) {

//     if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c){  //eachAcc.VIP__c is for new updated field, for the old one
//                                                // 
//         setAccIDs.add(eachAcc.id);
//     }
    
// }
// list<contact> listContacts = [select id, name, account.id, vip__c from Contact where Account.Id in :setAccIDs];

// for(Contact eachCon : listContacts){

//     account newAcc = accTriggerNewMap.get(eachCon.Account.id);

//     Boolean newAccvip = newAcc.vip__c;

//     eachCon.vip__c = newAccvip;

// }
// if(!listContacts.isEmpty()){
//     update listContacts;
// }

// }
// }

public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew,
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap){
        system.debug('inside handler method');
         for(account eachAcc: accTriggerNew){
            boolean updateDesc = false;
            if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
                updateDesc = true;
            }
            if(accTriggerOldMap != null){
                Account oldAccount = accTriggerOldMap.get(eachAcc.ID);
                
                string oldAccountActive = oldAccount.Active__c;
                //check if active is updated
                //active is changed to 'Yes'
                if(eachAcc.Active__c == 'Yes' &&
                    oldAccountActive != 'Yes'
                ) {
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.Description = 'Account is now active. Enjoy!';
            }
        }
    }
    public static void updateVipForAllAcontacts(list<account> accTriggerNew, list<account> accTriggerOld, 
                                    Map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){
            system.debug('update all contact\'s VIP field');
            set<id> setAccIds = new Set<id>();
            for(account eachAcc: accTriggerNew){
                if(eachAcc.Vip__c != accTriggerOldMap.get(eachAcc.Id).Vip__c){
                    setAccIds.add(eachAcc.Id);
                }
            }

            List<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

            for(contact eachContact : listContacts){
                Account newAccount = accTriggerNewMap.get(eachContact.account.id);
                boolean newAccVip = newAccount.vip__c;

                eachContact.vip__c = newAccVip;
            }
            if(!listContacts.isEmpty()){
                update listContacts;
            }


    }
    public static void MethodAssignmentStatus(List<Account> acctrigerNew){
       
        List<Account> accList = acctrigerNew;

        List<Contact> conlist = new List<Contact>();

        try{
        for( Account each : accList){
        Contact con = new Contact();
        con.LastName = each.Name;
        con.AccountId = each.Id;
        conlist.add(con);
     }
     if(!conlist.isEmpty()){
         insert conlist;
         System.debug('conlist is inserted succesfully');
     }
    }
    catch (exception ex){
        for( Account each : accList){
        
        each.addError('DML error:  required status field on contact object is null');    
        System.debug('DML error');

        }
    }
    }
}