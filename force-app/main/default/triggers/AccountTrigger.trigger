//trigger AccountTrigger on Account (before update) {
// System.debug('before insert account trigger fired');

//}



//     //true when code is running in before context
// if(Trigger.isBefore){
//     System.debug('before insert account trigger fired');
// }    
// ////true when code is running in after context
// if(Trigger.isAfter){
// System.debug('after insert trigger called');
// }
// /*

// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    // if (trigger.isAfter && trigger.isUpdate) {
    //     map<id, account> newAccmap = trigger.newMap;
    //     map<id, account> oldAccmap = trigger.oldMap;
        
    //     set<id> setAccId = newAccmap.keySet();

    //     for (id eachId : setAccId) {
    //         System.debug('====================');
    //         System.debug('eachID is '+ eachId);

    //     Account newAccount = newAccmap.get(eachId);
    //     System.debug('New account name :' + newAccount.Name);

    //     Account oldAccount = oldAccmap.get(eachId);
    //     System.debug('Old account name :' + oldAccount.Name);
            
    //     }
    // }

    // integer countUpdatedWebsites = 0;

    // if (trigger.isAfter && trigger.isUpdate) {
    //     map<id, account> newAccmap = trigger.newMap;
    //     map<id, account> oldAccmap = trigger.oldMap;
        
    //     set<id> setAccId = newAccmap.keySet();

    //     for (id eachId : setAccId) {

    //     Account newAccount = newAccmap.get(eachId);
    //     string newWebsite = newAccount.Website;

    //     Account oldAccount = oldAccmap.get(eachId);
    //     string oldWebsite = oldAccount.Website;

    //     if (oldWebsite != newWebsite) {
    //         System.debug('for account ' +  newAccount.name + ' newwebsite is ' + newWebsite);
    //         countUpdatedWebsites++;
            
    //     }
            
    //     }
    //     System.debug('# of account website updated' + countUpdatedWebsites);
    // }
    
        // trigger AccountTrigger on Account (before insert, before update, after insert, after update){
        //     if(trigger.isBefore){
        //         system.debug('Before insert/update trigger on Account object');
        //         for(Account eachAcc : Trigger.new){
        //             if(trigger.isInsert && eachAcc.Active__c == 'Yes' ){
        //               eachAcc.Description = 'Account is active now.Enjoy!';    
                
        //             }
        //             if(trigger.isUpdate){
        //                 if(eachAcc.Active__c == 'Yes' && trigger.newMap.get(eachAcc.Id) != trigger.oldMap.get(eachAcc.Id)){
        //                     eachAcc.Description = 'Account is now active enjoy';
        //                 }
        //             }

        //         }
        //     }
        // }

        // trigger AccountTrigger on Account (before insert, before update, after insert, after update){
        //     if(trigger.isBefore){
        //         system.debug('Before insert/update trigger on Account object');
        //         Boolean updatedDescription = false;
        //         for(Account eachAcc : Trigger.new){
        //             if(trigger.isInsert && trigger.newMap.get(eachAcc.Id).Active__c  == 'Yes' ){
        //                 updatedDescription = true;
                
        //             }
        //             if(trigger.isUpdate){
        //                 if(eachAcc.Active__c == 'Yes' && trigger.newMap.get(eachAcc.Id).Active__c != trigger.oldMap.get(eachAcc.Id).Active__c){
        //                     updatedDescription = true;
                            
        //                 }
        //             }

        //         }
        //     }
        // }

        // trigger AccountTrigger on Account (before update){
        // if(trigger.isUpdate){                             //important we do not need dml for insert or update in triggers
        // for (account eachacc : trigger.new) { 
        //     eachacc.Description = eachacc.Name + eachacc.CreatedDate;
        // }
        // }

        // }

        //important note: if we want to do changes on fields it should be before trigger in order
        // to make changes to the fields. if after trigger it is read only we cannot change//
        // //
        // trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
        //     if(trigger.isBefore){
        //         system.debug('before insert/update trigger called');
        //         AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
                
        //     }
        // }

        // trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
        //     if(trigger.isAfter && trigger.isUpdate){
        //         AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
                
        //     }
        // }

        // trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
        //     if(trigger.isBefore){
        //         system.debug('before insert/update trigger called');
        //         AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        //         system.debug('before insert/update trigger end.');
                
        //     }
        //     if(trigger.isAfter && trigger.isUpdate){
        //         AccountTriggerHandler.updateVipForAllAcontacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        //     }
        // }

        trigger AccountTrigger on Account (before insert){
        AccountTriggerHandler.MethodAssignmentStatus(trigger.new);

        }

    //         List<Account> accList = trigger.new;

    //         List<Contact> conlist = new List<Contact>();

    //         try{
    //         for( Account each : accList){
    //         Contact con = new Contact();
    //         con.LastName = each.Name;
    //         con.AccountId = each.Id;
    //         conlist.add(con);
    //      }
    //      if(!conlist.isEmpty()){
    //          insert conlist;
    //          System.debug('conlist is inserted succesfully');
    //      }
    //     }
    //     catch (exception ex){
    //         for( Account each : accList){
            
    //         each.addError('DML error required status field on contact object');    
    //         System.debug('DML error');
    //         }
    //     }
    // }


