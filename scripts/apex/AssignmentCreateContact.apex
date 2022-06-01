list<Account> Acclist = new List<Account>();

for (Integer i = 0 ; i < 100; i++) {
Account a = new Account();
a.Name = 'AssignmentAccount' + i;
Acclist.add(a);
}

list<contact> Conlist = new List<Contact>();
for (account eachAcc : Acclist) {
    Contact c = new Contact();
    c.AccountId = eachAcc.Id;
    c.LastName = eachAcc.Name;
    //c.Status__c = 'newStatus';  ==> this fiel is required on contact object if not defined we get
    //error otherwise contact records are created
    Conlist.add(c);
    
}

list<database.SaveResult> resultContactRecord = Database.insert(Conlist, false);
for (Integer i = 0; i < 100; i++) {
    for (database.SaveResult each : resultContactRecord) {
    
    if(each.isSuccess()){
        System.debug('Contact records inserted');
    }
    else{
        System.debug(each.getErrors());
    }
}
    
}

