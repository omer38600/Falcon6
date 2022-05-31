@isTest
public class SoqlDemo2Test {
    @TestSetup  // this is kind of creating record for whole test class we can use for different methods kinda variables
    private static void setupData(){
    Account acc1 = new Account();
      acc1.name = 'SI Test';
      acc1.Industry = 'Energy';

      Account acc2 = new Account();
      acc2.name = 'UI Test';
      acc2.Industry = 'UI Test';

      Account acc3 = new Account();
      acc3.name = 'PI Test';
      acc3.Industry = 'Banking';

      list<account> listAcc = new List<Account>{acc1, acc2, acc3};
      insert listAcc;

      list<contact> listContact = new list<Contact>();

      for (Integer i = 0; i < 300; i++) {
          Contact c = new Contact();
          c.LastName = 'Test SOQl';
          if(i<100){
              c.accountid = acc1.id;
          } 
          else if( i<200){
              c.accountid = acc2.id;
          }
          else if(i<300){
              c.accountid = acc3.id;
          }
          listContact.add(c);
      }
      insert listContact;
        
    }
@isTest
    public static void testmethod1() {
      
      Test.startTest();
      SoqlDemo2.childToParent_Soql1();
      Test.stopTest();

    }
    @isTest
    private static void sampleSoql4TEST() {
        list<account> listAccounts = [select id, name from Account];
        for (account acc : listAccounts) {
            acc.Type = 'Customer - Direct';
        }
        update listAccounts;
         
    List<Opportunity> createOpps = new List<Opportunity>();
    for (Integer i = 0; i < 300; i++) {
        Opportunity o = new Opportunity();
        o.name ='opp1';
        o.StageName = 'Closed Lost';
        o.CloseDate = date.today();

        if(i<100){
            o.AccountId = listAccounts[0].id;
        }    
       else if(i<200){
            o.AccountId = listAccounts[1].id;
        }
        else if(i<300){
            o.AccountId = listAccounts[2].id;
        }
        createOpps.add(o);
    }
    
    insert createOpps;
    Test.startTest();
    SoqlDemo2.sampleSoql4();
    Test.stopTest();

    }
   


}