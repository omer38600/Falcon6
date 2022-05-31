trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    if(trigger.isAfter && trigger.isInsert){
        System.debug('trigger called');
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newmap.keySet());
        System.debug('future method called already. second method calling');
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(trigger.new);
    }

    if (trigger.isAfter && trigger.isUpdate) {
        SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}

   

