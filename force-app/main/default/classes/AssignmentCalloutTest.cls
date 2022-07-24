@istest
public with sharing class AssignmentCalloutTest {
    @istest
    private static void testFetchDataforSuccess() {
        AssignmentMock da = new AssignmentMock();
        Test.setMock(HttpCalloutMock.class, da );

        Test.startTest();
        HttpResponse response = AssignmentCallout.fetchData();
        Test.stopTest();
    }
}
