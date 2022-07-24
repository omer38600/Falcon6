@RestResource(urlMapping = '/ContactCustomBulk/*')
global with sharing class CustomContactBulkApi {
    @httpPost
    global static list<contact> CreateContact(List<createContactWrapper> contacts) {
        list<contact> listContacts = new list<contact>();
        

    }
}
