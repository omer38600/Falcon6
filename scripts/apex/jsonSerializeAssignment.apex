List<Account> listAccount = [select id, name from account];
string accountJSON = JSON.serialize(listAccount);
System.debug(accountJSON);
