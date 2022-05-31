list<account> accList = [select id, name from account];
Set<Id> accId = new Set<Id>();
for(account eachacc : accList){
accId.add(eachacc.Id);
}
AccountHandlerInfo.createAccount(accId);
