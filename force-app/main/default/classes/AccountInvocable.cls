public with sharing class AccountInvocable {

  @InvocableMethod(label='Delete Closed Opps'
  description='Deletes all the closed opportunities when an account goes inactive or hold'
  category='Account') 
  public static void deleteOpportunities(list<Id> accountIds ) {
    List<Opportunity> opps = [select id from Opportunity where AccountId IN : accountIds and StageName IN('Closed Won', 'Closed Lost')];
   
   if(!opps.isEmpty()) {
    delete opps;
   }
    

  }
}
