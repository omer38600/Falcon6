public with sharing class JsonformatMethod {
    public List<account> lstAccounts  {get;set;}   
        public List<Contact> lstContacts   {get;set;}

public static void Retrievedata () { 

JsonformatMethod  Newformat = new JsonformatMethod (); 

List<account> listaccount  = [select id, name from account]; 
List<Contact> lstContact   = [select id, name from Contact]; 

Newformat.lstAccounts  = listaccount; 
Newformat.lstContacts  = lstContact; 

string JsonObject = json.serialize(Newformat); 

System.debug(JsonObject);
}
}
