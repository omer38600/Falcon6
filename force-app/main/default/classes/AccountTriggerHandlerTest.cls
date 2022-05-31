@isTest
public class AccountTriggerHandlerTest {

            private static void TestMethod1() {
                Account acc1 = new Account();
              acc1.name = 'SI Test';
              acc1.Industry = 'Energy';
              acc1.Active__c = 'Yes';
        
              Account acc2 = new Account();
              acc2.name = 'UI Test';
              acc2.Industry = 'UI Test';
              acc2.Active__c = 'No';
        
              Account acc3 = new Account();
              acc3.name = 'PI Test';
              acc3.Industry = 'Banking';
              acc3.Active__c = 'No';
        
              list<account> listAcc = new List<Account>{acc1, acc2, acc3};
              insert listAcc;
        
              for (account acc : listAcc) {
                  acc.Description = 'updated in tests';
                  acc.Active__c = 'Yes';
              }
              update listAcc;

            List<Account> accounts = [select name, id, description from account];
            system.assertEquals('Account is now active. Enjoy!', accounts[1].Description);
        
            }
            @isTest
            private static void TestMethod2() {
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

                    for (account acc : listAcc) {
                        acc.VIP__c = true;
                }
                update listAcc;

                List<Contact> conList = [select id, name, 	VIP__c from Contact];
                system.assertEquals(true, conList[0].VIP__c);
                     

        }
}
