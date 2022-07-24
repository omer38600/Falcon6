Account a = new Account();
a.Name = 'Mona';
a.phone = '';
a.AnnualRevenue = 90909854;

account b = new Account();
b.name = 'Lisa';
b.Phone = '9878654123';
b.site = '';

// List<Account> ab = new List<Account>{a,b};
// string accountJSON1 = JSON.serializePretty(ab);
// System.debug(accountJSON1);

List<Account> listAccount = [select id, name, phone, site, AnnualRevenue from account limit 5];
string accountJSON22 = JSON.serialize(listAccount);
System.debug(accountJSON22);
