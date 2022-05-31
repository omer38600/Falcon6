public class AccountBatchAssignment implements Database.Batchable<SObject> {
    
    public Database.QueryLocator start(database.BatchableContext bc){
        database.QueryLocator q1 = database.getQueryLocator([select id, name from account]);
        system.debug(q1);
        return q1;

    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        list<account> updateAccounts = new list<account>();
        for (account acc : scope) {
                acc.Number_of_contacts__c = 5;
                updateAccounts.add(acc);
    } 
    update updateAccounts;

    }
    public void finish(Database.BatchableContext bc){
    
    system.debug('it finished batch');
    
    }
}