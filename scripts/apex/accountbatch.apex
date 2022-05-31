
// //default size of batch for 200
// Id batchId = Database.executeBatch(ab);

// //another way to assign bactch number as parameter
// AccountsBatch ab = new AccountsBatch();
// Id batchId2 = Database.executeBatch(ab, 20);


List<Account> accs = [select id, name from account];
AccountQueueableExample qa = new AccountQueueableExample(accs);
id jobid = System.enqueueJob(qa);
System.debug('job id is '+ jobid);