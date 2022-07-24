Account acc = [Select id, OwnerId From Account Where industry = 'Biotechnology' limit 1];
System.debug(acc.Id);
map<string, object> inputs = new map<string, object>();
inputs.put('AccountId', acc.Id);
inputs.put('AccountOwnerId', acc.OwnerId);
Flow.Interview flow = new Flow.Interview.Account_Updates(inputs);
flow.start();