// list<contact> conList = [select name, id from contact where account.type = 'Prospect'];
// system.debug(conlist);

list<Salesforce_Ticket__c> ListST = [select id, name from Salesforce_Ticket__c where Salesforce_Project__r.Status__c = 'New'];
system.debug(ListST);