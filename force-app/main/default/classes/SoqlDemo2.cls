// public class SoqlDemo2 {          // relatinship soql for from child to parent contact is child account is parent query on contact

//     public static void  childToParent_Soql1 () {
//     List<contact> listCnt = [select id, name , account.name FROM Contact WHERE Account.industry = 'Energy'];
    
//     for (contact eachContact : listCnt) {
//         string accName = eachContact.Account.Name;
//         System.debug('contact name is ' + eachContact.name + 'its account is ' + accName);

//     }

//   }
//     public static void sampleSoql4(){ //relationship from parent to child query made for parent and inner query for child
//     List<Account> accountwithOppList = [select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
      
//    for ( account eachAcc : accountwithOppList) {
//        System.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
//        List<opportunity> eachAccOpps = eachAcc.Opportunities;
//        for (Opportunity opp : eachAccOpps) {
//         System.debug(' opp name '+ opp.Name + ', opp amount ' + opp.Amount);
//        }
//        System.debug('_____________________');
//    }

// }
//   public static void sampleSoql5(){

//   list<Salesforce_Project__c> listsp = [select id , name, ( select name, id from Salesforce_Ticket__r) from Salesforce_Project__c];

//   for (Salesforce_Project__c eachSP : listsp) {
//   System.debug('name is ' + eachSP.Name + 'id is '+ eachSP.Id);
//   List<Salesforce_Ticket__c> listst = eachSP.Salesforce_Tickets__r;
//   for (Salesforce_Ticket__c eachst : listst) {
//       System.debug('ticket name is ' + eachst.Name);
      
//   }
      
//   }

//   }


// }

public class SoqlDemo2 {
  public static void childToParent_Soql1() {
      //querying contact records.
      List<contact> listCnt = [select id, name, account.name from contact where account.industry = 'Energy'];

      for (contact eachContact : listCnt) {
          string accName = eachContact.Account.Name;
          system.debug('contact name is ' + eachContact.name + ' its acc is ' + accName);
      }
  }

  public static void sampleSoql4() {
      list<account> accountWithOpplist =[select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed Won') from account where type = 'Customer - Direct'];
      //list<account>
          //--> list<oppotunities>
      for (account eachAcc : accountWithOpplist) {
          system.debug('acc name is ' + eachAcc.name + ', annual revenue is ' + eachAcc.AnnualRevenue);
          List<Opportunity> eachAccOpps = eachAcc.Opportunities;
          for (Opportunity opp : eachAccOpps) {
              system.debug(' opp name ' + opp.Name + ', opp amount ' + opp.Amount); //YES
          }
          system.debug('-----------------');
      }
  }
}
