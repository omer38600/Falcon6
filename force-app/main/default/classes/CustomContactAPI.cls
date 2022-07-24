@RestResource(urlMapping ='/ContactCustom/*')
global class CustomContactAPI {
    //return contact details and account name
    @httpGet
    global static Contact getContactId() {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        //Fetch contact details from contact ID
        contact c = [
            select name, email, phone, account.name 
            from contact
            where id = :contactId
        ];
        return c;
    }
    @HttpPost
    global static Id createContact(string fName, string lName, string emailId, string phoneNumber, string accountId){
        Contact c  = new Contact();
        c.FirstName = fName;
        c.LastName = lName;
        c.Email = emailId;
        c.Phone = phoneNumber;
        c.AccountId = accountId;
        insert c;
        return c.Id;
        

    }
    @HttpDelete
    global static string deleteContact()   {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        //Fetch contact details from contact ID
        contact co = new Contact(id = contactId);
        delete co;

        return 'contact deleted'+ contactId;


}
@HttpPatch
    global static string updateContact( string emailId , string phoneNumber)   {
        system.debug('custom contact api call success.');
        //GET URI
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        system.debug('URI : ' + request.requestURI);
        //Fetch contact ID from URI
        integer idStartIndex = uri.lastIndexOf('/')+1;
        system.debug('idStartIndex: ' + idStartIndex);
        string contactId = uri.substring(idStartIndex);
        system.debug('contactId: ' + contactId);
        //Fetch contact details from contact ID
        contact con = new Contact();
        con.Id = contactId;
        con.Email = emailId;
        con.Phone = phoneNumber;

        update con;

        return 'contact updated with id'+ contactId;


}


    // this is how json be prepared for sobject for a single record
//     "con":{
//         "FirstName":"Jay",
//         "LastName":"T",
//         "Email":"JayT@gmail.com"
//     }
//  }
// @HttpPut
// global static string upsertContact(Contact con){  // we need to pass this con in postman it is entire sobject for JSON
// String returnString;
// if(con.Id == null){
//     returnString = 'Contact created with id: ';
// }
// else {
//     returnString = 'Contact updated with id: ';

// }

// upsert con;
// return returnString+ con.Id;



// to insert or update multiple records this method

@HttpPut
    global static List<id> upsertContact(List<Contact> cons){ 
        upsert cons;

        list<id> ids = new list<id>();
        for (contact con : cons) {
            ids.add(con.id);
        }
        return ids;
    }
}
        
        // we can put any parameter here string, integer, sobject or list
        // we then should prepare the json accordingly on postman
        //json sobject type parameter {}, list type parameter[];
        
// Vitap  this is how json should be preapreed in postman for list type multiple records
// 23h24
// {
//  "cons":[
//  {
//      "FirstName":"J",
//      "LastName":"TT",
//      "Email":"JT@gmail.com",
//      "id": "0035j00000Ssoe0AAB"
//  },
//  {
//      "FirstName":"Q",
//      "LastName":"T",
//      "Email":"QT@gmail.com"
     
//  },
//  {
//      "FirstName":"C",
//      "LastName":"TT",
//      "Email":"CT@gmail.com"
//  }
//  ]
// }
       
   

