Account acc1 = new Account();
acc1.Name = 'SI Test';
acc1.Industry = 'Energy';
acc1.Active__c = 'No';

Account acc2 = new Account();
acc2.Name = 'UI Test';
acc2.Industry = 'Energy';
acc2.Active__c = 'Yes';

Account acc12x = new Account();
Account acc12y = new Account();


List<Account> listAcc = new List<Account>{acc1, acc2, acc12x, acc12y};

list<DataBase.SaveResult> results = DataBase.insert(listAcc, false);

for (DataBase.SaveResult eachResult : results) {
    if(eachResult.isSuccess()){
        system.debug('Account Succesffully inserted, Account id is: ' + eachResult.getId());
    }
    else{
        system.debug('Errors : ' + eachResult.getErrors());
    }
}