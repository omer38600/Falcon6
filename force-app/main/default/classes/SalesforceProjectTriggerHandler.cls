public class SalesforceProjectTriggerHandler {
    public static void createDefaultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew){
       try{
            List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();

            for(Salesforce_Project__c sp: spTriggerNew){
                DefaultTicketInfo_c__c ticketInfo = DefaultTicketInfo_c__c.getOrgDefaults();

                Salesforce_Ticket__c st = new Salesforce_Ticket__c();
                st.Subject__c = ticketInfo.Subject__c;
                st.Description__c = ticketInfo.Description__c;
                st.Salesforce_Project__c = sp.Id;
                st.Priority__c = 'High';
                listST.add(st);
            }
    
            if(!listST.isEmpty()){
                insert listST;
            }
       } catch(Exception ex){
           for (salesforce_project__c sp : spTriggerNew) {
               sp.addError('Error in default ticket creation. Please contact your administrator');
           }
       }
      
   }
    @future
    public static void updateProjectDescription(set<id> setSpId){
        List<Salesforce_Project__c> lstSP = [select id, description__c from Salesforce_Project__c where id in :setSpId];
        System.debug('called future method');

        for( Salesforce_Project__c spRecord : lstSP){
            spRecord.Description__c = spRecord.Description__c + 'updated from future';
        }
        System.debug('sp to update = ' + lstSP);
        update lstSP;
    }
    // we did soql first in soql we need id we cannot fetch from org thats why we put parameter which later on we will pass from trigger
//
public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, 
List<Salesforce_Project__c> spTriggerOld,
Map<id, Salesforce_Project__c> spTriggerNewMap,
Map<id, Salesforce_Project__c> spTriggerOldMap) {
    //get set<id> where status is changed.
    set<id> spIds = new set<id>();
    for (salesforce_project__c sp : spTriggerNew) {
        //if new record status != old record status
        //status is changed to 'Completed'
         if(sp.Status__c != spTriggerOldMap.get(sp.id).Status__c
         && sp.Status__c == 'Completed'){
             spIds.add(sp.Id);
         }
    }
    if(!spIds.isEmpty()){
      updateTicketStatusCompleted(spIds);
    }
}
@future
// we pass parameter set ids in future method then do spoql to fetch theese ids
private static void updateTicketStatusCompleted(set<id> spIds) {
    List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c where Salesforce_Project__c in :spIds and status__c != 'Completed'];
    for (salesforce_ticket__c st : listST) {
        st.Status__c = 'Completed';
    }
    if (!listST.isEmpty()) {
        update listST;
    }
}
}