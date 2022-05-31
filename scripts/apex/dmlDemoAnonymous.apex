// DMLDemo.dmLInsertDemo_stndObj();

// DMLDemo.dmLInsertDemo_cstmdObj();

// DMLDemo.dmlUpdateDemo_1();

// DMLDemo.dmlUpdateDemo_2();

// DMLDemo.dmlUpdateDemo_3();

// DMLDemo.dmlUpdateDemo_2CO();

// DMLDemo.dmMultipleRecordsInsert_right();

// DMLDemo.dmMultipleRecordsInsert_right1();

list<case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'There is a bug';
    c.Description = 'resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;


list<case> listofcasesoql = [select id, status from case where status = 'New'];
for (case eachCase : listofcasesoql) {
    eachCase.Status = 'Working';
}
update listofcasesoql;