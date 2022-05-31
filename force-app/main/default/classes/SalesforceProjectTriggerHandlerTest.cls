@isTest
public class SalesforceProjectTriggerHandlerTest {
    @isTest
    public static void testMethod1(){
        Salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to FALCONS';
        sp.description__c = 'All 40% are great learners, still';
      
        Salesforce_project__c sp1 = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to FALCONS';
        sp.description__c = 'All 40% are great learners, still';

        List<Salesforce_Project__c> lstSP = new List<Salesforce_Project__c>{sp, sp};
        insert lstSP;

        set<id> spIds = new set<id>{sp.id, sp1.id};

        test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        test.stopTest();   
        
        List<Salesforce_Project__c> sps = [select id, description__c from Salesforce_Project__c];
        system.assert(sps[0].Description__c.containsIgnoreCase('future'));
    }

   
    }

