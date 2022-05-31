@isTest
public class DMLDemoTest {
    @isTest
    public static void dmlDemoTest1() {

        DMLDemo.dmlInsertDemo_cstmObj();
    list<account> listAcc = [select id, name from Account];
    system.assertEquals(1, listAcc.size());
    system.assertEquals('Soft Innovas', listAcc[0].Name);
 
    }
    @isTest
    public static void dmlDemoUpdate2Test() {

        Account acc = new account();  //to test update fist we must insert it in testing environment bcs it has no access to our org
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DMLDemo.dmlUpdateDemo_2();

        List<contact> listContact =[select id, lastname from Contact];

        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].Name);
    
    }
}

